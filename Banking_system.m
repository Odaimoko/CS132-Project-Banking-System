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
                obj.db_account('accounts')=containers.Map; % person id maps to list of accounts
                obj.db_ticket=0;
            end
            % initialize ticket account in mem
            % init clerk 
            save 'data/sys.mat' obj
        end
        
    %     function outputArg = addClerk(obj,inputArg)
    %         %METHOD1 此处显示有关此方法的摘要
    %         %   此处显示详细说明
    %         outputArg = obj.Property1 + inputArg;
    %     end
        function ticket_no = getTicket(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            ticket_no=obj.db_ticket;
            obj.db_ticket=obj.db_ticket+1;
        end
    end
end

