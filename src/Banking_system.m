classdef Banking_system
    %BANKING_SYSTEM �˴���ʾ�йش����ժҪ
    %   �˴���ʾ��ϸ˵��
    
    properties
        ui_manager;
        functional;
        db_ticket;
        db_clerk;
        db_account;
    end
    
    methods
        function obj = Banking_system(inputArg1,inputArg2)
            %BANKING_SYSTEM ��������ʵ��
            %   �˴���ʾ��ϸ˵��
%             Read existing or create database


            if ~exist('data','dir')
                mkdir('data')
            end
            if exist('data/sys.mat','file')
                load 'data/sys.mat'
            else
                % init
                obj.db_account= containers.Map;
                obj.db_account('nextAccountID')=1;
                obj.db_account('nextCardID')=1;
                obj.db_account('accounts')=containers.Map(0,struct); % person id maps to list of cards
                remove(obj.db_account('accounts'),0)
                obj.db_ticket=0;
            end
            % initialize ticket account in mem
            % init clerk 
            save 'data/sys.mat' obj
        end
        
        function outputArg = addAccount(obj,person_id,password)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            account=struct;
            account.accoutID=obj.db_account('nextAccountID');
            account.personID=person_id;
            account.cards=containers.Map(0,0);
            remove(account.cards,0);
            account.password=password; 
            obj.db_account('nextAccountID')=obj.db_account('nextAccountID')+1;

            A=obj.db_account('accounts');
            A(account.accoutID)=account;
            obj.db_account('accounts')=A;
            save 'data/sys.mat' obj
            outputArg=account.accoutID;
        end


        function outputArg = addCard(obj,person_id,account_id,password)
            A=obj.db_account('accounts');
            outputArg=false;
            if isKey(A,account_id)
                account=A(account_id);
                if strcmp(password,account.password) && person_id==account.personID
                    cardID=obj.db_account('nextCardID');
                    obj.db_account('nextCardID')=obj.db_account('nextCardID')+1;

                    cards=account.cards;
                    cards(cardID)=0; % balance = 0
                    account.cards=cards;
                    A(account_id)=account;
                    save 'data/sys.mat' obj
                    outputArg=cardID;
                end
            end
        end


        function outputArg = checkPW(obj,account_id,password)
            outputArg=false;
            A=obj.db_account('accounts');
            if isKey(A,account_id)
                account=A(account_id);
                if strcmp(password,account.password)
                    outputArg=true;
                end
            end
        end

        function outputArg = removeAccount(obj,person_id,account_id)
            outputArg=false;
            A=obj.db_account('accounts');
            if isKey(A,account_id)
                account=A(account_id);
                if person_id==account.personID
                    remove(obj.db_account('accounts'),account_id)
                    save 'data/sys.mat' obj
                    outputArg=true;
                end
            end
        end


        function outputArg = changePassword(obj,account_id,new_pw)
            A=obj.db_account('accounts');
            account=A(account_id);
            account.password=new_pw;
            A(account_id)=account;
            save 'data/sys.mat' obj
            outputArg=true;
        end
        
        function outputArg = deposit(obj,account_id,amount)
        %
        % Deposit certain amount into account_id.
            outputArg=false;
            A=obj.db_account('accounts');
            if isKey(A,account_id)
                account=A(account_id);
                cards=account.cards;
                assert (length(cards)==1)
                k=keys(cards);
                k=k{1};
                cards(k)=cards(k)+amount;
                % account.cards=cards;
                save 'data/sys.mat' obj
                outputArg=true;
            end
        
        end

        function outputArg = withdraw(obj,account,password,amount)
            
        
        end
        
        

        function ticket_no = getTicket(obj)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            ticket_no=obj.db_ticket;
            obj.db_ticket=obj.db_ticket+1;
            save 'data/sys.mat' obj
        end
    end
end

