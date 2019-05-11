classdef Account
    %ACCOUNT 此处显示有关此类的摘要
    %   此处显示详细说明
    
    properties
        ownerPID=0;
        ID=0;
        balance=0;
    end
    
    methods
        function obj = Account(ownerPID,account_id)
            %ACCOUNT 构造此类的实例
            %   此处显示详细说明
            obj.ownerPID = ownerPID;
            obj.ID=account_id;
            obj.balance=0;
        end
        
        function outputArg = checkBalance(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end
        function outputArg = debit(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end
        function outputArg = credit(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end
        function outputArg = transaction(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end
    end
end

