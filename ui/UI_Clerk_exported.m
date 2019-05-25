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
        next_customer           matlab.ui.control.Button
        IdLabel                 matlab.ui.control.Label
        Identity_Input          matlab.ui.control.NumericEditField
        PasswordLabel           matlab.ui.control.Label
        PW_Input                matlab.ui.control.EditField
        Confirm_open_account    matlab.ui.control.Button
        Confirm_close_account   matlab.ui.control.Button
        Confirm_deposit_money   matlab.ui.control.Button
        Confirm_withdraw_money  matlab.ui.control.Button
        Message_Feedback        matlab.ui.control.Label
        AccountNoLabel          matlab.ui.control.Label
        Account_Input           matlab.ui.control.NumericEditField
        NewPasswordLabel        matlab.ui.control.Label
        New_PW_Input            matlab.ui.control.EditField
        Confirm_change_pw       matlab.ui.control.Button
        AmountLabel             matlab.ui.control.Label
        Amount_Input            matlab.ui.control.NumericEditField
        Confirm_transfer        matlab.ui.control.Button
        ToAccountNoLabel        matlab.ui.control.Label
        To_Account_Input        matlab.ui.control.NumericEditField
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
            app.Identity_Input.Visible='off';
            app.PW_Input.Visible=0;
            app.Account_Input.Visible=0;
            app.Amount_Input.Visible=0;
            app.New_PW_Input.Visible=0;
            app.To_Account_Input.Visible=0;
            app.Confirm_open_account.Visible=0;
            app.Confirm_close_account.Visible=0;
            app.Confirm_deposit_money.Visible=0;
            app.Confirm_withdraw_money.Visible=0;
            app.Confirm_change_pw.Visible=0;
            app.Confirm_transfer.Visible=0;
            app.IdLabel.Visible=0;
            app.PasswordLabel.Visible=0;
            app.AccountNoLabel.Visible=0;
            app.AmountLabel.Visible=0;
            app.NewPasswordLabel.Visible=0;
            app.ToAccountNoLabel.Visible=0;
            
            
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
            if strcmp(selectedButton.Text,app.open_account.Text)
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
            if strcmp(selectedButton.Text,app.deposit.Text)
                'Deposit'
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
                'Withdraw'
                
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
                
%                 
            end
            if strcmp(selectedButton.Text,app.transfer.Text)
                'Transfer'
                
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
                
                app.To_Account_Input.Visible=1;
                app.ToAccountNoLabel.Visible=1;
                app.To_Account_Input.Position(2)=app.y_4th_edit_box;
                app.ToAccountNoLabel.Position(2)=app.y_4th_edit_box;
                
                app.Confirm_transfer.Visible=1;
                
            end
            if strcmp(selectedButton.Text,app.change_password.Text)
                'Change Password'
                
                app.AccountNoLabel.Visible=1;
                app.Account_Input.Visible=1;
                app.Account_Input.Position(2)=app.y_1st_edit_box;
                app.AccountNoLabel.Position(2)=app.y_1st_edit_box;
                
                app.PW_Input.Visible=1;
                app.PasswordLabel.Visible=1;
                app.PW_Input.Position(2)=app.y_2nd_edit_box;
                app.PasswordLabel.Position(2)=app.y_2nd_edit_box;
                
                app.New_PW_Input.Visible=1;
                app.NewPasswordLabel.Visible=1;
                app.New_PW_Input.Position(2)=app.y_3rd_edit_box;
                app.NewPasswordLabel.Position(2)=app.y_3rd_edit_box;

                app.Confirm_change_pw.Visible=1;
            end
            if strcmp(selectedButton.Text,app.next_customer.Text)
                'Next Customer'
                app.getNextTicketNo();
            end
        end

        % Button pushed function: Confirm_open_account
        function Confirm_open_accountButtonPushed(app, event)
            identity_no=app.Identity_Input.Value;
            pw=app.PW_Input.Value;
            if identity_no==0
                app.Message_Feedback.Text='Id cannot be emtpy';
            else
                if pw==""
                    app.Message_Feedback.Text='Password cannot be emtpy';
                else
                    app.Message_Feedback.Text="";
                    bs=Banking_system;
                    account_id=bs.addAccount(identity_no,pw);
                    result=bs.addCard(identity_no,account_id,pw);
                    if result
                        app.Message_Feedback.Text=['Account added successfully. ' newline 'Account No. ' num2str(result)];
                    else
                        app.Message_Feedback.Text='Account added Failed';
                    end
                end
            end
            app.Message_Feedback.Visible=1;
            app.Message_Feedback.Position=[243,367,198,42];
            
        end

        % Button pushed function: Confirm_close_account
        function Confirm_close_accountButtonPushed(app, event)
            identity_no=app.Identity_Input.Value;
            pw=app.PW_Input.Value;
            account_id=app.Account_Input.Value;
            app.Message_Feedback.Visible=0;
            if identity_no==0
                app.Message_Feedback.Text='Id cannot be emtpy';
            else
                if pw==""
                    app.Message_Feedback.Text='Password cannot be emtpy';
                else
                    app.Message_Feedback.Text='Account removed Failed';
                    bs=Banking_system;
                    if bs.checkPW(account_id,pw)
                        result=bs.removeAccount(identity_no,account_id);
                        if result
                            app.Message_Feedback.Text='Account removed successfully.';
                        end
                    end
                end
            end
            app.Message_Feedback.Visible=1;
            app.Message_Feedback.Position=[243,367,198,42];
            
        end

        % Button pushed function: Confirm_change_pw
        function Confirm_change_pwButtonPushed(app, event)
            pw=app.PW_Input.Value;
            account_id=app.Account_Input.Value;
            new_pw=app.New_PW_Input.Value;
            app.Message_Feedback.Visible=0;

            if account_id==0
                app.Message_Feedback.Text='Id cannot be emtpy';
            else
                if pw=="" || new_pw==""
                    app.Message_Feedback.Text='Password cannot be emtpy';
                else
                    bs=Banking_system;
                    app.Message_Feedback.Text='Password change Failed';
                    if bs.checkPW(account_id,pw)
                        bs.changePassword(account_id,new_pw);
                        app.Message_Feedback.Text='Password changed successfully.';
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

        % Button pushed function: next_customer
        function next_customerButtonPushed(app, event)
            app.Clear_all_components();
            bs=Banking_system;
            
            ticket_no=bs.nextTicket();
            if ticket_no==-1
                app.Message_Feedback.Text='No next customer';
            else
                app.Message_Feedback.Text=['Ticket Number Got successfully.' newline 'Next Customer Ticket No. ' num2str(ticket_no)];
            end
            
            app.Message_Feedback.Visible=1;
            app.Message_Feedback.Position=[243,367,198,42];
        end

        % Button pushed function: Confirm_transfer
        function Confirm_transferButtonPushed(app, event)
            account_id=app.Account_Input.Value;
            to_acc=app.To_Account_Input.Value;
            amount=app.Amount_Input.Value;
            pw=app.PW_Input.Value;
            app.Message_Feedback.Text='Money transfer failed';
            if account_id==0 || to_acc==0
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
                            if bs.deposit(to_acc,amount)
                               app.Message_Feedback.Text='Money transfered successfully';
                            else
                               bs.deposit(account_id,amount);
                            end
                        else
                            app.Message_Feedback.Text='Money transfered failed';
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

            % Create next_customer
            app.next_customer = uibutton(app.ButtonGroup, 'push');
            app.next_customer.ButtonPushedFcn = createCallbackFcn(app, @next_customerButtonPushed, true);
            app.next_customer.Position = [11 145 100 22];
            app.next_customer.Text = 'Next Customer';

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
            app.Confirm_close_account.Position = [103 268 100 22];
            app.Confirm_close_account.Text = 'Confirm';

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
            app.Message_Feedback.Visible = 'off';
            app.Message_Feedback.Position = [242.5 367 158 22];
            app.Message_Feedback.Text = 'Identity No cannot be empty';

            % Create AccountNoLabel
            app.AccountNoLabel = uilabel(app.UIFigure);
            app.AccountNoLabel.HorizontalAlignment = 'right';
            app.AccountNoLabel.Visible = 'off';
            app.AccountNoLabel.Position = [-1 300 89 23];
            app.AccountNoLabel.Text = 'Account No.';

            % Create Account_Input
            app.Account_Input = uieditfield(app.UIFigure, 'numeric');
            app.Account_Input.Visible = 'off';
            app.Account_Input.Position = [103 301 100 22];

            % Create NewPasswordLabel
            app.NewPasswordLabel = uilabel(app.UIFigure);
            app.NewPasswordLabel.HorizontalAlignment = 'right';
            app.NewPasswordLabel.Visible = 'off';
            app.NewPasswordLabel.Position = [2 302 86 22];
            app.NewPasswordLabel.Text = 'New Password';

            % Create New_PW_Input
            app.New_PW_Input = uieditfield(app.UIFigure, 'text');
            app.New_PW_Input.Visible = 'off';
            app.New_PW_Input.Position = [103 301 100 22];

            % Create Confirm_change_pw
            app.Confirm_change_pw = uibutton(app.UIFigure, 'push');
            app.Confirm_change_pw.ButtonPushedFcn = createCallbackFcn(app, @Confirm_change_pwButtonPushed, true);
            app.Confirm_change_pw.Visible = 'off';
            app.Confirm_change_pw.Position = [103 268 100 22];
            app.Confirm_change_pw.Text = 'Confirm';

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

            % Create Confirm_transfer
            app.Confirm_transfer = uibutton(app.UIFigure, 'push');
            app.Confirm_transfer.ButtonPushedFcn = createCallbackFcn(app, @Confirm_transferButtonPushed, true);
            app.Confirm_transfer.Visible = 'off';
            app.Confirm_transfer.Position = [103 234 100 22];
            app.Confirm_transfer.Text = 'Confirm';

            % Create ToAccountNoLabel
            app.ToAccountNoLabel = uilabel(app.UIFigure);
            app.ToAccountNoLabel.HorizontalAlignment = 'right';
            app.ToAccountNoLabel.Visible = 'off';
            app.ToAccountNoLabel.Position = [0 269 88 22];
            app.ToAccountNoLabel.Text = 'To Account No.';

            % Create To_Account_Input
            app.To_Account_Input = uieditfield(app.UIFigure, 'numeric');
            app.To_Account_Input.Visible = 'off';
            app.To_Account_Input.Position = [103 269 100 22];

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