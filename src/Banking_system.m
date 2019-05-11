classdef Banking_system
    %BANKING_SYSTEM 此处显示有关此类的摘要
    %   此处显示详细说明
    
    properties
        ui_manager;
        functional;
        db_ticket;
        db_clerk;
        db_account;
    end
    
    methods
        function obj = Banking_system(inputArg1,inputArg2)
            %BANKING_SYSTEM 构造此类的实例
            %   此处显示详细说明
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
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            account=struct;
            account.cards={}
            account.password=password; %????
            obj.db_account('nextAccountID')=obj.db_account('nextAccountID')+1;

            A=obj.db_account('accounts');
            if ~isKey(A,person_id)
                A(person_id)=account;
                save 'data/sys.mat' obj
                outputArg=true;
            else
                outputArg=false;
            end
        end


        function outputArg = addCard(obj,person_id,password)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明

            A=obj.db_account('accounts');
            if ~isKey(A,person_id)
                outputArg=false;
            
            else

                card=struct;
                card.cardID=obj.db_account('nextCardID');
                card.bal=0;
                obj.db_account('nextCardID')=obj.db_account('nextCardID')+1;
                account=A(person_id);
                if strcmp(password,account.password)
                    cards=account.cards;
                    l=length(cards);
                    cards{l+1}=card;
                    account.cards=cards;
                    A(person_id)=account;
                    save 'data/sys.mat' obj
                    outputArg=true;
                else
                    outputArg=false;
                end
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
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            ticket_no=obj.db_ticket;
            obj.db_ticket=obj.db_ticket+1;
            save 'data/sys.mat' obj
        end
    end
end

