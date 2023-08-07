local tconf = THEMECONFIG:get_data("ProfileSlot_Invalid");
local defbg = tconf.DefaultBG;
local bgdif = tconf.BGBrightness/100;

if defbg then
    return LoadActor(THEME:GetPathG("Common fallback","background"))..{
        InitCommand=function (self)
            self:FullScreen():diffuse(bgdif,bgdif,bgdif,1);
        end;
    }
else
    return Def.ActorFrame {
        Name = ":thinking:";
    };
end;