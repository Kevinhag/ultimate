local boxsize = 100;
local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame{
	InitCommand=function(self)
		self:CenterX():y(SCREEN_CENTER_Y+20);
	end;

		LoadActor(THEME:GetPathG("","_pattern"))..{
			InitCommand=function (self)
				self:zoomto(SCREEN_WIDTH,boxsize):customtexturerect(0,0,(SCREEN_WIDTH/384)*1.5,(boxsize/384)*1.5):texcoordvelocity(0,0.1):diffusealpha(0.075):blend(Blend.Add);
			end;
		},
		Def.Quad{
			InitCommand=function (self)
				self:zoomto(SCREEN_WIDTH,boxsize):diffuse(0,0,0,0.5):diffusetopedge(0,0,0,0.6);
			end;
		},
		Def.Quad{
			InitCommand=function (self)
				self:zoomto(SCREEN_WIDTH,boxsize/4):vertalign(top):y(-boxsize/2):diffuse(0,0,0,0.25):fadebottom(1);
			end;
		},
		Def.Quad{
			InitCommand=function (self)
				self:zoomto(SCREEN_WIDTH,1):y(-(boxsize/2)-1):diffuse(1,1,1,0.15);
			end;
		},
		Def.Quad{
			InitCommand=function (self)
				self:zoomto(SCREEN_WIDTH,1):y(boxsize/2):diffuse(1,1,1,0.25);
			end;
		},
		LoadActor(THEME:GetPathG("","logo"))..{
			InitCommand=function (self)
				self:zoom(0.5):y(-(SCREEN_HEIGHT/4));
			end;
		},
		Def.BitmapText{
			Font = Fonts.titlemenu["Version"];
			Text = string.upper("ver. "..themeInfo.Version);
			InitCommand=function (self)
				self:zoom(0.3):horizalign(right):y((-boxsize/2)-10):strokecolor(0.1,0.1,0.1,0.25):diffusealpha(1/3):x(160);
			end;
		},

};

return t;

