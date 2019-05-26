classdef UI_Customer_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure              matlab.ui.Figure
        ButtonGroup           matlab.ui.container.ButtonGroup
        request_ticket        matlab.ui.control.ToggleButton
        IdLabel               matlab.ui.control.Label
        Identity_Input        matlab.ui.control.NumericEditField
        PasswordLabel         matlab.ui.control.Label
        PW_Input              matlab.ui.control.EditField
        Confirm_open_account  matlab.ui.control.Button
        Message_Feedback      matlab.ui.control.Label
        NewPasswordLabel      matlab.ui.control.Label
    end

    
    properties (Access = private)
        x_edit_box=103;
        w_edit_box=100;
        h_edit_box=22;
        y_1st_edit_box=367; % Description
        y_2nd_edit_box=334; % Description
        y_3rd_edit_box=301;
        y_4th_edit_box=268;
        ticket_no=-1; % Description
    end
    
    methods (Access = private)
        
        function results = Clear_all_components(app)
            % invisiblize all changable ui components
            app.Identity_Input.Visible='off';
            app.PW_Input.Visible=0;
            app.Account_Input.Visible=0;
            app.Amount_Input.Visible=0;
            app.New_PW_Input.Visible=0;
            app.Confirm_open_account.Visible=0;
            app.Confirm_close_account.Visible=0;
            app.Confirm_deposit_money.Visible=0;
            app.Confirm_withdraw_money.Visible=0;
            app.Confirm_change_pw.Visible=0;
            app.IdLabel.Visible=0;
            app.PasswordLabel.Visible=0;
            app.AccountNoLabel.Visible=0;
            app.AmountLabel.Visible=0;
            app.NewPasswordLabel.Visible=0;
            
            
            app.Message_Feedback.Visible=0;
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Selection changed function: ButtonGroup
        function ButtonGroupSelectionChanged(app, event)
%             Switch UI
            app.Clear_all_components();
            selectedButton = app.ButtonGroup.SelectedObject;
            if strcmp(selectedButton.Text,app.request_ticket.Text)
                'Open account'
                app.Identity_Input.Visible=1;
                app.IdLabel.Visible=1;
                app.Identity_Input.Position(2)=app.y_1st_edit_box;
                app.IdLabel.Position(2)=app.y_1st_edit_box;
                app.PW_Input.Visible=1;
                app.PasswordLabel.Visible=1;
                app.PW_Input.Position(2)=app.y_2nd_edit_box;
                app.PasswordLabel.Position(2)=app.y_2nd_edit_box;                
                app.Confirm_open_account.Visible=1;

            end
            if strcmp(selectedButton.Text,app.close_account.Text)
                'Close account'
                app.Identity_Input.Visible=1;
                app.IdLabel.Visible=1;
                app.Identity_Input.Position(2)=app.y_1st_edit_box;
                app.IdLabel.Position(2)=app.y_1st_edit_box;
                
                app.PW_Input.Visible=1;
                app.PasswordLabel.Visible=1;
                app.PW_Input.Position(2)=app.y_2nd_edit_box;
                app.PasswordLabel.Position(2)=app.y_2nd_edit_box;
                
                app.Account_Input.Visible=1;
                app.AccountNoLabel.Visible=1;
                app.Account_Input.Position(2)= app.y_3rd_edit_box;
                app.AccountNoLabel.Position(2)=app.y_3rd_edit_box;
                
                app.Confirm_close_account.Visible=1;
            end
            
        end

        % Button pushed function: Confirm_open_account
        function Confirm_open_accountButtonPushed(app, event)
            app.Message_Feedback.Visible=0;
            bs=Banking_system;
            app.ticket_no=bs.newTicket();
            if app.ticket_no==-1
                app.Message_Feedback.Text='Ticket Number Got Failed';
            else
                app.Message_Feedback.Text=['Ticket Number Got successfully.' newline 'Ticket No. ' num2str(app.ticket_no)];
            end
            
            app.Message_Feedback.Visible=1;
            app.Message_Feedback.Position=[243,367,198,42];
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'UI Figure';

            % Create ButtonGroup
            app.ButtonGroup = uibuttongroup(app.UIFigure);
            app.ButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.ButtonGroup.Position = [452 26 121 377];

            % Create request_ticket
            app.request_ticket = uitogglebutton(app.ButtonGroup);
            app.request_ticket.Text = 'Request Ticket';
            app.request_ticket.Position = [11 343 100 22];
            app.request_ticket.Value = true;

            % Create IdLabel
            app.IdLabel = uilabel(app.UIFigure);
            app.IdLabel.HorizontalAlignment = 'right';
            app.IdLabel.Position = [63 367 25 22];
            app.IdLabel.Text = 'Id.';

            % Create Identity_Input
            app.Identity_Input = uieditfield(app.UIFigure, 'numeric');
            app.Identity_Input.Position = [103 367 100 22];

            % Create PasswordLabel
            app.PasswordLabel = uilabel(app.UIFigure);
            app.PasswordLabel.HorizontalAlignment = 'right';
            app.PasswordLabel.Position = [29 334 59 22];
            app.PasswordLabel.Text = 'Password';

            % Create PW_Input
            app.PW_Input = uieditfield(app.UIFigure, 'text');
            app.PW_Input.Position = [103 334 100 22];

            % Create Confirm_open_account
            app.Confirm_open_account = uibutton(app.UIFigure, 'push');
            app.Confirm_open_account.ButtonPushedFcn = createCallbackFcn(app, @Confirm_open_accountButtonPushed, true);
            app.Confirm_open_account.Position = [103 300 100 22];
            app.Confirm_open_account.Text = 'Confirm';

            % Create Message_Feedback
            app.Message_Feedback = uilabel(app.UIFigure);
            app.Message_Feedback.HorizontalAlignment = 'center';
            app.Message_Feedback.Visible = 'off';
            app.Message_Feedback.Position = [242.5 367 158 22];
            app.Message_Feedback.Text = 'Identity No cannot be empty';

            % Create NewPasswordLabel
            app.NewPasswordLabel = uilabel(app.UIFigure);
            app.NewPasswordLabel.HorizontalAlignment = 'right';
            app.NewPasswordLabel.Visible = 'off';
            app.NewPasswordLabel.Position = [2 302 86 22];
            app.NewPasswordLabel.Text = 'New Password';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = UI_Customer_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end