classdef Account
    %ACCOUNT �˴���ʾ�йش����ժҪ
    %   �˴���ʾ��ϸ˵��
    
    properties
        ownerPID=0;
        ID=0;
        balance=0;
    end
    
    methods
        function obj = Account(ownerPID,account_id)
            %ACCOUNT ��������ʵ��
            %   �˴���ʾ��ϸ˵��
            obj.ownerPID = ownerPID;
            obj.ID=account_id;
            obj.balance=0;
        end
        
        function outputArg = checkBalance(obj,inputArg)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            outputArg = obj.Property1 + inputArg;
        end
        function outputArg = debit(obj,inputArg)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            outputArg = obj.Property1 + inputArg;
        end
        function outputArg = credit(obj,inputArg)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            outputArg = obj.Property1 + inputArg;
        end
        function outputArg = transaction(obj,inputArg)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            outputArg = obj.Property1 + inputArg;
        end
    end
end

