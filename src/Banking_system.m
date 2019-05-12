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
            account.cards=containers.Map;
            account.password=password; %????
            obj.db_account('nextAccountID')=obj.db_account('nextAccountID')+1;

            A=obj.db_account('accounts');
            A(account.accoutID)=account;
            obj.db_account('accounts')=A;
            save 'data/sys.mat' obj
            outputArg=true;
        end


        function outputArg = addCard(obj,person_id,account_id,password)
            A=obj.db_account('accounts');
            if ~isKey(A,account_id)
                outputArg=false;
            else
                account=A(account_id);
                if strcmp(password,account.password) && strcmp(person_id,account.personID)
                    cardID=obj.db_account('nextCardID');
                    obj.db_account('nextCardID')=obj.db_account('nextCardID')+1;

                    cards=account.cards;
                    cards(cardID)=0; % balance = 0
                    account.cards=cards;
                    A(account_id)=account;
                    save 'data/sys.mat' obj
                    outputArg=true;
                else
                    outputArg=false;
                end
            end
        end

        function outputArg = removeCard(obj,card_id,person_id,password)
            outputArg=false;

            A=obj.db_account('accounts');
            if isKey(A,person_id)
                account=A(person_id);
                if strcmp(password,account.password)
                    if isKey(card_id,account.cards)
                        remove(account.cards,card_id);
                        outputArg=true;
                        A(person_id)=account;
                    end
                    % remove(obj.db_account('accounts'),person_id);
                end
            else
            end
        end

        function outputArg = removeAccount(obj,person_id,password)

            A=obj.db_account('accounts');
            if isKey(A,person_id)
                account=A(person_id);
                if strcmp(password,account.password)
                    remove(obj.db_account('accounts'),person_id);
                    outputArg=true;
                else
                    % pw wrong
                    outputArg=false;
                end
            else
                outputArg=false;
            end
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

