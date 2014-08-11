class AGB
{
	idd = 32154;
	name = "AGB";
	movingEnable = false;
	enableSimulation = false;
    
	class controlsBackground
	{
		class RscTitleBackground : Life_RscText
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.0875;
			y = 0.06;
			w = 0.825;
			h = 0.04;
		};
		
		class RscBackground : Life_RscText
		{
			colorBackground[] = {0.31,0.31,0.31,1};
			idc = -1;
			x = 0.0875;
			y = 0.12;
			w = 0.825;
			h = 0.82;
		};
		
		class RscTitleText : Life_RscTitle
		{
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "Die Serverregeln:";
			x = 0.0875;
			y = 0.06;
			w = 0.825;
			h = 0.04;
            class Attributes 
			{
				align = "center";
			};
		};
				
		class RsclolStatus : Life_RscStructuredText
		{
			idc = -1;
			colorBackground[] = {0, 0, 0, 0};
            sizeEx = 0.0001;
			text = "<t size = '0.8'>Taten die geahndet und zu sofortigen Bann führen.<br / >	§1.1: Hacking/Cheating/Duping.<br / >	§1.2: Aus dem Gefängnis buggen.<br / >	§1.3: Selbstmord/Disconect um sich dem Rollenspiel zu entziehen.<br / >	§1.4: Bugs, zum eigenen Vorteil/zum Vorteil anderer, nutzen<br / ><br / >§2: Das Rollenspiel auf diesem Server steht an erster Stelle, wer dies nicht einhält wird Verwarnt<br / >	und nach mehrmaliger Ermahnung gebannt.<br / ><br / >§3: Im Sidechannel wird nicht geredet,kann nach mehrmaliger Ermahnug zum Bann führen.<br / ><br / >§4: Absichtliches überfahren von anderen Spielern führt zum Bann.<br / ><br / >§5: Das nutzen der Vote-Möglichkeiten von ArmA führt zum Bann.<br / ><br / >$6: Die Admins haben das letzt Wort<br / ><br / ></t><t font ='PuristaBold' size='0.9'>Um auf unserem Server zu spielen musst du diesen Regeln zustimmen.</t>";
			x = 0.1125;
			y = 0.16;
			w = 0.775;
			h = 0.66;
		};	
	};
    
    	class Controls
	{
		class naz : Life_RscButtonMenu
		{
			idc = -1;
			text = "Nicht Akzeptieren";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			onButtonClick = "closeDialog 0;";
			x = 0.1075;
            y = 0.88;
            w = 0.3;
            h = 0.04;
            class Attributes 
			{
				align = "center";
			};
		};
		
		
		class az : Life_RscButtonMenu
		{
			idc = -1;
			text = "Akzeptieren";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			onButtonClick = "rulesok = true; closeDialog 0;";
            x = 0.5825;
            y = 0.88;
            w = 0.3;
            h = 0.04;
            class Attributes 
			{
				align = "center";
			};    
		};
	};
};