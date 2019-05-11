classdef BankCard
    %BANKCARD 此处显示有关此类的摘要
    %   此处显示详细说明
    
    properties
        
        ID=0;
        ownerPID=0;
    end
    
    methods
        function obj = BankCard(inputArg1,inputArg2)
            %BANKCARD 构造此类的实例
            %   此处显示详细说明
            obj.Property1 = inputArg1 + inputArg2;
        end
        
        function outputArg = provideAccess(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end
    end
end

