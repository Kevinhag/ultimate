local t = Def.ActorFrame{}

t[#t+1] = Def.Quad{
	InitCommand=function (self)
		self:diffuse(1,1,1,1):FullScreen();
	end;
};

return t