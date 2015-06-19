class agb
{
    idd = 32154;
    name = "agb";
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
            text = "Herzlich Willkommen auf Panda Altis Life";
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
            text = "<t size = '0.8'>Start Guide :<br / >Herzlich Willkommen auf Altis, bitte besorge dir als erstes einen Personalausweis bei dem zuständigen Ordnungsamt. Wenn du dich frei auf Altis bewegen möchtest, ist es zwingend notwendig einen Reisepass zu besitzen.<br / ><br / >Wissenswerte Informationen :<br / >Du findest bei uns alle wichtigen Dinge, wie Steuerungen, Gesetze oder Bußgelder auf der linken Seite der Map.<br / ><br / >- Lies dir am Anfang die Gesetzte durch und mit welchen Strafen du ggf. bei Verstoß rechnen musst.<br / >- Informiere dich unter Tools im Test was es neues gibt.<br / ><br / >Unsere Kontaktdaten findest du im folgenden Intro auf der rechten Seite <br / ><br / >Hinweis: Wir suchen ADAC/Medics und (Polizisten). Bewerbungen unter forum.pandaair.de<br / ></t> <t font ='PuristaBold' size='0.8'>Um auf Panda Altis Life spielen zu können, musst du hiermit bestätigen, dass du die Server Regeln einhällst, welche du gleich lesen kannst.</t>";
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