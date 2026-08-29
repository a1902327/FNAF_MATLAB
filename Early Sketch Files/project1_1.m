% Prompt user to enter name
name = input("Please enter your name: ","s");
intro = ['Welcome ' name '!'];

fig = uifigure;
    % Ask the user for confirmation using uiconfirm
    selection = uiconfirm(fig,intro, 'Confirmation', 'Start', 'Quit');

    if strcmp(selection, 'Yes')
        try
            % Specify the name of the App Designer app function
            appFunctionName = 'project1.mlapp'; % Replace with your app's function name
            
            % Open the App Designer app
            openApp(appFunctionName);
        catch
            msgbox('Error opening the app.', 'Error', 'error');
        end
    else
        msgbox('App opening cancelled.', 'Info', 'help');
    end


function openApp(appFunctionName)
    % Check if the app is already running
    if ~isapploaded(appFunctionName)
        % Open the App Designer app
        app = feval(appFunctionName);
    else
        % Bring the existing app to the front
        app.UIFigure(appFunctionName);
    end
end
%%









%choice = questdlg(intro, ...
                 % "Five Night at Freddy's Simulator", ...
                 % 'Yes', 'No', 'No');

%if strcmp(choice, 'Yes')
    %guide projectapp1.fig
    
%else
    %return;
%end



