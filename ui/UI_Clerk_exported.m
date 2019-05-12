classdef UI_Clerk_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                matlab.ui.Figure
        ButtonGroup             matlab.ui.container.ButtonGroup
        open_account            matlab.ui.control.ToggleButton
        close_account           matlab.ui.control.ToggleButton
        deposit                 matlab.ui.control.ToggleButton
        withdraw                matlab.ui.control.ToggleButton
        transfer                matlab.ui.control.ToggleButton
        change_password         matlab.ui.control.ToggleButton
        IdLabel                 matlab.ui.control.Label
        Identity_Input          matlab.ui.control.NumericEditField
        PasswordLabel           matlab.ui.control.Label
        PW_Input                matlab.ui.control.EditField
        Confirm_open_account    matlab.ui.control.Button
        Confirm_close_account   matlab.ui.control.Button
        CardNoLabel             matlab.ui.control.Label
        Card_Input              matlab.ui.control.EditField
        Confirm_deposit_money   matlab.ui.control.Button
        AmountLabel             matlab.ui.control.Label
        Money_Input             matlab.ui.control.EditField
        Confirm_withdraw_money  matlab.ui.control.Button
        Message_Feedback        matlab.ui.control.Label
    end

    
    methods (Access = private)
        
        function results = Clear_all_components(app)
            % invisiblize all changable ui components
            app.Identity_Input.Visible='off';
            app.PW_Input.Visible=0;
            app.Card_Input.Visible=0;
            app.Money_Input.Visible=0;
            app.Confirm_open_account.Visible=0;
            app.Confirm_close_account.Visible=0;
            app.Confirm_deposit_money.Visible=0;
            app.Confirm_withdraw_money.Visible=0;
            app.IdLabel.Visible=0;
            app.PasswordLabel.Visible=0;
            app.CardNoLabel.Visible=0;
            app.AmountLabel.Visible=0;
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Selection changed function: ButtonGroup
        function ButtonGroupSelectionChanged(app, event)
%             Switch UI
            app.Clear_all_components();
            selectedButton = app.ButtonGroup.SelectedObject;
            if strcmp(selectedButton.Text,app.open_account.Text)
                'Open account'
                app.Identity_Input.Visible=1;
                app.PW_Input.Visible=1;
                app.Confirm_open_account.Visible=1;
                app.IdLabel.Visible=1;
                app.PasswordLabel.Visible=1;


            end
            if strcmp(selectedButton.Text,app.close_account.Text)
                'Close account'
                
                app.Identity_Input.Visible=1;
                app.PW_Input.Visible=1;
                app.Card_Input.Visible=1;
                app.Confirm_close_account.Visible=1;
                app.IdLabel.Visible=1;
                app.PasswordLabel.Visible=1;
                app.CardNoLabel.Visible=1;
                
            end
            if strcmp(selectedButton.Text,app.deposit.Text)
                'Deposit'
                
                app.Identity_Input.Visible=1;
                app.PW_Input.Visible=1;
                app.Card_Input.Visible=1;
                app.Money_Input.Visible=1;
                app.Confirm_deposit_money.Visible=1;
                app.IdLabel.Visible=1;
                app.PasswordLabel.Visible=1;
                app.CardNoLabel.Visible=1;
                app.AmountLabel.Visible=1;
                
            end
            if strcmp(selectedButton.Text,app.withdraw.Text)
                'Withdraw'
                app.Identity_Input.Visible=1;
                app.PW_Input.Visible=1;
                app.Card_Input.Visible=1;
                app.Money_Input.Visible=1;
                app.Confirm_withdraw_money.Visible=1;
                app.IdLabel.Visible=1;
                app.PasswordLabel.Visible=1;
                app.CardNoLabel.Visible=1;
                app.AmountLabel.Visible=1;
%                 
            end
            if strcmp(selectedButton.Text,app.transfer.Text)
                'Transfer'
            end
            
        end

        % Button pushed function: Confirm_open_account
        function Confirm_open_accountButtonPushed(app, event)
            identity_no=app.Identity_Input.Value;
            pw=app.PW_Input.Value;
            if identity_no==0
                app.Message_Feedback.Text='Id cannot be emtpy';
                app.Message_Feedback.Position=[243,367,158,22];
                app.Message_Feedback.Visible=1;
            else
                if pw==""
                    app.Message_Feedback.Text='Password cannot be emtpy';
                    app.Message_Feedback.Position=[243,367,158,22];
                    app.Message_Feedback.Visible=1;
                else
                    app.Message_Feedback.Text="";
                    app.Message_Feedback.Visible=0;
                    bs=Banking_system;
                    result=bs.addAccount(identity_no,pw);
                    if result
                        
                        app.Message_Feedback.Text='Account added successfully';
                    else
                        
                        app.Message_Feedback.Text='Account already exists';
                    end
                    app.Message_Feedback.Position=[243,367,158,22];
                    app.Message_Feedback.Visible=1;
                end
            end
            
        end

        % Button pushed function: Confirm_close_account
        function Confirm_close_accountButtonPushed(app, event)
            
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

            % Create open_account
            app.open_account = uitogglebutton(app.ButtonGroup);
            app.open_account.Text = 'Open Account';
            app.open_account.Position = [11 343 100 22];
            app.open_account.Value = true;

            % Create close_account
            app.close_account = uitogglebutton(app.ButtonGroup);
            app.close_account.Text = 'Close Account';
            app.close_account.Position = [11 310 100 22];

            % Create deposit
            app.deposit = uitogglebutton(app.ButtonGroup);
            app.deposit.Text = 'Deposit';
            app.deposit.Position = [11 276 100 22];

            % Create withdraw
            app.withdraw = uitogglebutton(app.ButtonGroup);
            app.withdraw.Text = 'Withdraw';
            app.withdraw.Position = [11 241 100 26];

            % Create transfer
            app.transfer = uitogglebutton(app.ButtonGroup);
            app.transfer.Text = 'Transfer';
            app.transfer.Position = [11 206 100 26];

            % Create change_password
            app.change_password = uitogglebutton(app.ButtonGroup);
            app.change_password.Text = 'Change Password';
            app.change_password.Position = [4 175 114 26];

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

            % Create Confirm_close_account
            app.Confirm_close_account = uibutton(app.UIFigure, 'push');
            app.Confirm_close_account.ButtonPushedFcn = createCallbackFcn(app, @Confirm_close_accountButtonPushed, true);
            app.Confirm_close_account.Visible = 'off';
            app.Confirm_close_account.Position = [103 271 100 22];
            app.Confirm_close_account.Text = 'Confirm';

            % Create CardNoLabel
            app.CardNoLabel = uilabel(app.UIFigure);
            app.CardNoLabel.HorizontalAlignment = 'right';
            app.CardNoLabel.Visible = 'off';
            app.CardNoLabel.Position = [34 300 54 22];
            app.CardNoLabel.Text = 'Card No.';

            % Create Card_Input
            app.Card_Input = uieditfield(app.UIFigure, 'text');
            app.Card_Input.Visible = 'off';
            app.Card_Input.Position = [103 300 100 22];

            % Create Confirm_deposit_money
            app.Confirm_deposit_money = uibutton(app.UIFigure, 'push');
            app.Confirm_deposit_money.Visible = 'off';
            app.Confirm_deposit_money.Position = [103 236 100 22];
            app.Confirm_deposit_money.Text = 'Confirm';

            % Create AmountLabel
            app.AmountLabel = uilabel(app.UIFigure);
            app.AmountLabel.HorizontalAlignment = 'right';
            app.AmountLabel.Visible = 'off';
            app.AmountLabel.Position = [40 269 48 22];
            app.AmountLabel.Text = 'Amount';

            % Create Money_Input
            app.Money_Input = uieditfield(app.UIFigure, 'text');
            app.Money_Input.Visible = 'off';
            app.Money_Input.Position = [103 269 100 22];

            % Create Confirm_withdraw_money
            app.Confirm_withdraw_money = uibutton(app.UIFigure, 'push');
            app.Confirm_withdraw_money.Visible = 'off';
            app.Confirm_withdraw_money.Position = [103 236 100 22];
            app.Confirm_withdraw_money.Text = 'Confirm';

            % Create Message_Feedback
            app.Message_Feedback = uilabel(app.UIFigure);
            app.Message_Feedback.HorizontalAlignment = 'center';
            app.Message_Feedback.Visible = 'off';
            app.Message_Feedback.Position = [242.5 367 158 22];
            app.Message_Feedback.Text = 'Identity No cannot be empty';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = UI_Clerk_exported

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