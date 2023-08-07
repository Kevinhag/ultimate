return LoadActor(THEME:GetPathG("","bg"))..{
	InitCommand=function (self)
		self:Center():diffuse(Global.bgcolor);
	end;
};