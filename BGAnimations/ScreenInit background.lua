local t = Def.ActorFrame{};

local insults = {
    "break your legs",
    "punch you in the throat",
    "kick you in the chin",
    "slap your face",
    "shove a cactus in your ass",
    "toss you under a bus",
    "grind your face against the asphalt",
    "clobber you out of existence",
    "fist you in the mouth"
}

t[#t+1] = LoadActor(THEME:GetPathB("","_white"))..{
    OffCommand=function(self)
        self:linear(0.5):diffusealpha(0):sleep(0.5);
    end;
}

t[#t+1] = Def.ActorFrame{
    InitCommand=function(self)
        self:Center():diffusealpha(0):addy(-32);
    end;

    OnCommand=function (self)
        self:sleep(0.25):linear(0.5):diffusealpha(1):sleep(4.5):queuecommand("Fadeout");
    end;

    FadeoutCommand=function()
        SCREENMAN:GetTopScreen():StartTransitioningScreen("SM_BeginFadingOut");
    end;

    OffCommand=function(self)
        self:linear(0.5);
        self:diffusealpha(0);
        self:sleep(1.25);
        self:queuecommand("Exit");
    end;

    ExitCommand=function()
        SCREENMAN:SetNewScreen(ToTitleMenu());
    end;

    LoadActor(THEME:GetPathG("","ssc_logo"))..{
        InitCommand=function(self)
            self:zoom(0.5):y(-24);
        end;

    },

    LoadActor(THEME:GetPathG("","ssc_text"))..{
        InitCommand=function(self)
            self:zoom(0.75):y(64);
        end;
    },

    Def.BitmapText{
        Font = "regen strong";
        Text = string.upper("Stepmania Ultimate, by Luizsan");
        InitCommand=function(self)
            self:zoomx(0.475):zoomy(0.46):y(90):diffuse(0,0,0,0.4);
        end;
    },

    Def.BitmapText{
        Font = "titillium regular";
        InitCommand=function(self)
            self:zoom(0.5):y(120):vertalign(top):diffuse(0,0,0,0.3):wrapwidthpixels(400/self:GetZoom()):vertspacing(-10);
        end;
        Text = "Hello lamer fucker, this is Luizsan. Here's the deal. If you turn this theme into one more official Pump It Up bootleg theme, I will find you wherever you are and "..insults[math.random(1,#insults)]..".\nAnd that's a promise.";
    },

};

return t
