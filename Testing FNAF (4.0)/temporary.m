app.leftdoor = false;
        app.leftlight = false;
        app.rightdoor = false;
        app.rightlight = false;
        app.value = "off";
        app.freddy = 1;
        app.bonnie = 1;
        app.chica = 1;
        app.overheated = false; 


        properties (Access = public)
        leftdoor = false;
        leftlight = false;
        rightdoor = false;
        rightlight = false;
        value = "off";
        freddy = 1;
        bonnie = 1;
        chica = 1;
        cameraatfreddy = false;
        camerajustlower = true;
        overheated = false; 
        cycle1 = 1;
        cycle2 = 1;
        initialMove = 1;
        AIlevelFreddy = 1;
        AIlevelBonnie = 1;
        AIlevelChica = 1;
        jumpscare = "yes";
        end

        for i = 1:10
            [app.freddy, app.bonnie, app.chica] = fnafTest5 (app.leftdoor, ...
                app.rightdoor, app.freddy, app.bonnie, ...
                app.chica,app.camerajustlower, app.cameraatfreddy, ...
                app.cycle1, app.cycle2, app.initialMove, app.AIlevelFreddy, ...
                app.AIlevelBonnie, app.AIlevelChica);
        end




        % Create an array of Foxy's stage in Pirate Cove
PirateCove = ["Inside the curtain" ; "Head peaking out of the curtain" ; "Leaning out the curtain" ;
              "The curtain is empty. Foxy is running to the office"];

% Play sound effect
            rightdoorsound = audioread('Door Slam.mp3');
            player2 = audioplayer (rightdoorsound, 16000);
            play(player2);


            switch cycle
        case 1
            pause(1);
        case 2
            pause(2);
        case 3
            pause(2);
        case 4 
            pause(1);
        case 5 
            pause(3);
            end


             % Animatronic at door way view
            room12bonnie = imread('Office Bonnie Door Open .png');
            room12chica = imread('Office Chica Door Open.png');

            % Office view 
            room13 = imread('Office.png');
            % Light view when there're no animatronics
            room13rightlight = imread('Office Right Light.png');
            room13leftlight = imread('Office Left Light.png');
            % Office view when door is closed
            room13rightdoor = imread('Office Right Door Light Off.jpg');
            room13rightdoorLight = imread('Office Right Door Light On.jpg');
            room13leftdoor = imread('Office Left Door Light Off.jpg');
            room13leftdoorLight = imread('Office Left Door Light On.jpg');

            % Decide what the user will see from the office based on their
            % actions (light and door switches, animatronics)
           if app.CameraOnButton.Text == "Camera On"
                if app.bonnie == 12 && ...
                    app.leftdoor == false && app.rightdoor == false && ...
                    app.leftlight == true && app.rightlight == false
                        imshow(room12bonnie,'Parent',app.OfficeView);

                elseif app.chica == 12 && ...
                    app.leftdoor == false && app.rightdoor == false && ...
                    app.leftlight == false && app.rightlight == true
                        imshow(room12chica,'Parent',app.OfficeView);

                elseif app.leftlight == false && app.rightlight == false ...
                    && app.rightdoor == false && app.leftdoor == false
                        imshow(room13,'Parent',app.OfficeView);

                elseif app.leftlight == false && app.rightlight == right ...
                    && app.rightdoor == false && app.leftdoor == false
                        imshow(room13rightlight,'Parent',app.OfficeView);

                elseif app.leftlight == true && app.rightlight == false ...
                    && app.rightdoor == false && app.leftdoor == false
                        imshow(room13leftlight,'Parent',app.OfficeView);

                elseif app.leftlight == false && app.rightlight == false ...
                    && app.rightdoor == true && app.leftdoor == false
                        imshow(room13rightdoor,'Parent',app.OfficeView);

                elseif app.leftlight == false && app.rightlight == true ...
                    && app.rightdoor == true && app.leftdoor == false
                        imshow(room13rightdoorLight,'Parent',app.OfficeView);

                elseif app.leftlight == false && app.rightlight == false ...
                    && app.rightdoor == false && app.leftdoor == true
                        imshow(room13leftdoor,'Parent',app.OfficeView);

                elseif app.leftlight == right && app.rightlight == false ...
                    && app.rightdoor == false && app.leftdoor == true
                        imshow(room13leftdoorLight,'Parent',app.OfficeView);
                end
           end            


