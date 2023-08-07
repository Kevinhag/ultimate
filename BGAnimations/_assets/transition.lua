local t = Def.ActorFrame{}


--//==================================================================
--GROUP
--//==================================================================
t[#t+1] = Def.Quad{
	InitCommand=function (self)
		self:FullScreen():diffusealpha(0);
	end;

	FolderChangedMessageCommand=function (self)
		self:stoptweening():diffusealpha(1):sleep(0.15):linear(0.25):diffusealpha(0);
	end;
};

t[#t+1] = LoadActor(THEME:GetPathG("","bg"))..{
	InitCommand=function (self)
		self:Center():diffuse(Global.bgcolor):diffusealpha(0);
	end;

	FinalDecisionMessageCommand=function (self)
		self:diffusealpha(0):sleep(0.1):linear(0.5):diffusealpha(1):sleep(1):queuecommand("Action");
	end;
	ActionCommand=function(self)
		ReadyDecision();
	end;
};

return t;