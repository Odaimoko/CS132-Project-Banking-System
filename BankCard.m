classdef BankCard
    %BANKCARD �˴���ʾ�йش����ժҪ
    %   �˴���ʾ��ϸ˵��
    
    properties
        
        ID=0;
        ownerPID=0;
    end
    
    methods
        function obj = BankCard(inputArg1,inputArg2)
            %BANKCARD ��������ʵ��
            %   �˴���ʾ��ϸ˵��
            obj.Property1 = inputArg1 + inputArg2;
        end
        
        function outputArg = provideAccess(obj,inputArg)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            outputArg = obj.Property1 + inputArg;
        end
    end
end

