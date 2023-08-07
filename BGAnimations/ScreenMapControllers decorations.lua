local t = Def.ActorFrame{}

t[#t+1] = LoadActor(THEME:GetPathG("","bg"))..{
    InitCommand=function (self)
        self:FullScreen():croptop(0.75):fadetop(0.1):diffuse(Global.bgcolor);
    end;
}

t[#t+1] = LoadActor(THEME:GetPathB("ScreenWithMenuElements", "decorations"));

return t;