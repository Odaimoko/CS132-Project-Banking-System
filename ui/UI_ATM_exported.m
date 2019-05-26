classdef UI_ATM_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                matlab.ui.Figure
        ButtonGroup             matlab.ui.container.ButtonGroup
        deposit                 matlab.ui.control.ToggleButton
        withdraw                matlab.ui.control.ToggleButton
        terminate               matlab.ui.control.ToggleButton
        IdLabel                 matlab.ui.control.Label
        Identity_Input          matlab.ui.control.NumericEditField
        PasswordLabel           matlab.ui.control.Label
        PW_Input                matlab.ui.control.EditField
        Confirm_check_password  matlab.ui.control.Button
        Confirm_deposit_money   matlab.ui.control.Button
        Confirm_withdraw_money  matlab.ui.control.Button
        Message_Feedback        matlab.ui.control.Label
        AccountNoLabel          matlab.ui.control.Label
        Account_Input           matlab.ui.control.NumericEditField
        AmountLabel             matlab.ui.control.Label
        Amount_Input            matlab.ui.control.NumericEditField
    end

    
    properties (Access = private)
        x_edit_box=103;
        w_edit_box=100;
        h_edit_box=22;
        y_1st_edit_box=367; % Description
        y_2nd_edit_box=334; % Description
        y_3rd_edit_box=301;
        y_4th_edit_box=268;
    end
    
    methods (Access = private)
        
        function results = Clear_all_components(app)
            % invisiblize all changable ui components
            app.Identity_Input.Visible=0;
            app.PW_Input.Visible=0;
            app.Account_Input.Visible=0;
            app.Amount_Input.Visible=0;
            app.Confirm_check_password.Visible=0;
            app.Confirm_deposit_money.Visible=0;
            app.Confirm_withdraw_money.Visible=0;
            app.PasswordLabel.Visible=0;
            app.AccountNoLabel.Visible=0;
            app.AmountLabel.Visible=0;
            
            app.ButtonGroup.Visible=0;
            
            app.Message_Feedback.Visible=0;
        end
        
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Selection changed function: ButtonGroup
        function ButtonGroupSelectionChanged(app, event)
%             Switch UI
            app.Clear_all_components();
            app.ButtonGroup.Visible=1;
            selectedButton = app.ButtonGroup.SelectedObject;
            selectedButton.Text
            if strcmp(selectedButton.Text,app.deposit.Text)
                app.AccountNoLabel.Visible=1;
                app.Account_Input.Visible=1;
                app.Account_Input.Position(2)=app.y_1st_edit_box;
                app.AccountNoLabel.Position(2)=app.y_1st_edit_box;
                
                app.AmountLabel.Visible=1;
                app.Amount_Input.Visible=1;
                app.Amount_Input.Position(2)=app.y_2nd_edit_box;
                app.AmountLabel.Position(2)=app.y_2nd_edit_box;
                
                app.Confirm_deposit_money.Visible=1;
                app.Confirm_deposit_money.Position(2)=app.y_3rd_edit_box;
                
            end
            if strcmp(selectedButton.Text,app.withdraw.Text)
                
                
                app.AccountNoLabel.Visible=1;
                app.Account_Input.Visible=1;
                app.Account_Input.Position(2)=app.y_1st_edit_box;
                app.AccountNoLabel.Position(2)=app.y_1st_edit_box;
                
                app.PW_Input.Visible=1;
                app.PasswordLabel.Visible=1;
                app.PW_Input.Position(2)=app.y_2nd_edit_box;
                app.PasswordLabel.Position(2)=app.y_2nd_edit_box;
                
                app.AmountLabel.Visible=1;
                app.Amount_Input.Visible=1;
                app.Amount_Input.Position(2)=app.y_3rd_edit_box;
                app.AmountLabel.Position(2)=app.y_3rd_edit_box;
                
                app.Confirm_withdraw_money.Visible=1;
                
            end
            if strcmp(selectedButton.Text,app.terminate.Text)
                
                app.AccountNoLabel.Visible=1;
                app.Account_Input.Visible=1;
                app.Account_Input.Position(2)=app.y_1st_edit_box;
                app.AccountNoLabel.Position(2)=app.y_1st_edit_box;
                
                app.PW_Input.Visible=1;
                app.PasswordLabel.Visible=1;
                app.PW_Input.Position(2)=app.y_2nd_edit_box;
                app.PasswordLabel.Position(2)=app.y_2nd_edit_box;
                
                app.Confirm_check_password.Visible=1;
                
                app.ButtonGroup.Visible=0;
                
                app.Message_Feedback.Text='Please input account number and password.';
                app.Message_Feedback.Position=[220,381,244,22];
                app.Message_Feedback.Visible=1;
                
            end
        end

        % Button pushed function: Confirm_check_password
        function Confirm_check_passwordButtonPushed(app, event)
   
            pw=app.PW_Input.Value;
            account_id=app.Account_Input.Value;
            app.Message_Feedback.Visible=0;
            if account_id==0
                app.Message_Feedback.Text='Id cannot be emtpy';
            else
                if pw==""
                    app.Message_Feedback.Text='Password cannot be emtpy';
                else
                    bs=Banking_system;
                    if bs.checkPW(account_id,pw)
                        app.Message_Feedback.Text=['Password checked successfully.' newline 'Please select action.'];
                        app.Clear_all_components();
                        app.ButtonGroup.Visible=1;
                        app.ButtonGroup.SelectedObject=app.deposit;
                        app.ButtonGroupSelectionChanged(0);
                    else
                        app.Message_Feedback.Text='Password checked failed.';
                    end
                end
            end
            app.Message_Feedback.Visible=1;
            app.Message_Feedback.Position=[243,367,198,42];
            
        end

        % Button pushed function: Confirm_deposit_money
        function Confirm_deposit_moneyButtonPushed(app, event)
            account_id=app.Account_Input.Value;
            amount=app.Amount_Input.Value;
            app.Message_Feedback.Text='Money add failed';
            if account_id==0
                app.Message_Feedback.Text='Account cannot be emtpy';
            else
                if amount<=0
                    app.Message_Feedback.Text='Amount invalid';
                else
                    bs=Banking_system;
                    if bs.deposit(account_id,amount)                   
                        app.Message_Feedback.Text='Money added successfully';
                        
                    end
                end
            end
            app.Message_Feedback.Visible=1;
            app.Message_Feedback.Position=[243,367,198,42];
        end

        % Button pushed function: Confirm_withdraw_money
        function Confirm_withdraw_moneyButtonPushed(app, event)
            account_id=app.Account_Input.Value;
            amount=app.Amount_Input.Value;
            pw=app.PW_Input.Value;
            app.Message_Feedback.Text='Money withdrawn failed';
            if account_id==0
                app.Message_Feedback.Text='Account cannot be emtpy';
            else
                if amount<=0
                    app.Message_Feedback.Text='Amount invalid';
                else
                    if pw==""
                        app.Message_Feedback.Text='Password cannot be emtpy';
                    else
                        bs=Banking_system;
                        if bs.withdraw(account_id,pw,amount)                   
                            app.Message_Feedback.Text='Money withdrawn successfully';
                        end
                    end
                end
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
            app.ButtonGroup.Visible = 'off';
            app.ButtonGroup.Position = [452 289 121 114];

            % Create deposit
            app.deposit = uitogglebutton(app.ButtonGroup);
            app.deposit.Text = 'Deposit';
            app.deposit.Position = [11 78 100 22];
            app.deposit.Value = true;

            % Create withdraw
            app.withdraw = uitogglebutton(app.ButtonGroup);
            app.withdraw.Text = 'Withdraw';
            app.withdraw.Position = [11 43 100 26];

            % Create terminate
            app.terminate = uitogglebutton(app.ButtonGroup);
            app.terminate.Text = 'Terminate';
            app.terminate.Position = [11 10 100 26];

            % Create IdLabel
            app.IdLabel = uilabel(app.UIFigure);
            app.IdLabel.HorizontalAlignment = 'right';
            app.IdLabel.Visible = 'off';
            app.IdLabel.Position = [63 367 25 22];
            app.IdLabel.Text = 'Id.';

            % Create Identity_Input
            app.Identity_Input = uieditfield(app.UIFigure, 'numeric');
            app.Identity_Input.Visible = 'off';
            app.Identity_Input.Position = [103 367 100 22];

            % Create PasswordLabel
            app.PasswordLabel = uilabel(app.UIFigure);
            app.PasswordLabel.HorizontalAlignment = 'right';
            app.PasswordLabel.Position = [29 334 59 22];
            app.PasswordLabel.Text = 'Password';

            % Create PW_Input
            app.PW_Input = uieditfield(app.UIFigure, 'text');
            app.PW_Input.Position = [103 334 100 22];
            app.PW_Input.Value = 'bb';

            % Create Confirm_check_password
            app.Confirm_check_password = uibutton(app.UIFigure, 'push');
            app.Confirm_check_password.ButtonPushedFcn = createCallbackFcn(app, @Confirm_check_passwordButtonPushed, true);
            app.Confirm_check_password.Position = [103 301 100 22];
            app.Confirm_check_password.Text = 'Confirm';

            % Create Confirm_deposit_money
            app.Confirm_deposit_money = uibutton(app.UIFigure, 'push');
            app.Confirm_deposit_money.ButtonPushedFcn = createCallbackFcn(app, @Confirm_deposit_moneyButtonPushed, true);
            app.Confirm_deposit_money.Visible = 'off';
            app.Confirm_deposit_money.Position = [103 236 100 22];
            app.Confirm_deposit_money.Text = 'Confirm';

            % Create Confirm_withdraw_money
            app.Confirm_withdraw_money = uibutton(app.UIFigure, 'push');
            app.Confirm_withdraw_money.ButtonPushedFcn = createCallbackFcn(app, @Confirm_withdraw_moneyButtonPushed, true);
            app.Confirm_withdraw_money.Visible = 'off';
            app.Confirm_withdraw_money.Position = [103 268 100 22];
            app.Confirm_withdraw_money.Text = 'Confirm';

            % Create Message_Feedback
            app.Message_Feedback = uilabel(app.UIFigure);
            app.Message_Feedback.HorizontalAlignment = 'center';
            app.Message_Feedback.Position = [220 381 244 22];
            app.Message_Feedback.Text = 'Please input account number and password';

            % Create AccountNoLabel
            app.AccountNoLabel = uilabel(app.UIFigure);
            app.AccountNoLabel.HorizontalAlignment = 'right';
            app.AccountNoLabel.Position = [-1 360 89 23];
            app.AccountNoLabel.Text = 'Account No.';

            % Create Account_Input
            app.Account_Input = uieditfield(app.UIFigure, 'numeric');
            app.Account_Input.Position = [103 361 100 22];
            app.Account_Input.Value = 3;

            % Create AmountLabel
            app.AmountLabel = uilabel(app.UIFigure);
            app.AmountLabel.HorizontalAlignment = 'right';
            app.AmountLabel.Visible = 'off';
            app.AmountLabel.Position = [40 302 48 22];
            app.AmountLabel.Text = 'Amount';

            % Create Amount_Input
            app.Amount_Input = uieditfield(app.UIFigure, 'numeric');
            app.Amount_Input.Visible = 'off';
            app.Amount_Input.Position = [103 302 100 22];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = UI_ATM_exported

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