Global.lockinput = true;

local t = Def.ActorFrame{}

		t[#t+1] = Def.Quad{
			InitCommand=function (self)
				self:diffuse(1,1,1,1):zoomto(SCREEN_WIDTH,SCREEN_HEIGHT):Center();
			end;
			
			OnCommand=function (self)
				self:linear(0.3):diffusealpha(0):sleep(0.2):queuecommand("Unlock");
			end;

			UnlockCommand=function (self)
				lockinput = false;
			end;
		};

return t