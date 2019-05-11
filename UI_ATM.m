classdef UI_Clerk < UI_Base
    %BASEUI 此处显示有关此类的摘要
    %   此处显示详细说明
    
    properties
        Property1
    end
    
    methods
        function obj = UI_Customer(inputArg1,inputArg2)
            %BASEUI 构造此类的实例
            %   此处显示详细说明
            obj.Property1 = inputArg1 + inputArg2;
        end
        
        function outputArg = displayOpenAccountScreen(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end 
        function outputArg = displayCloseAccountScreen(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end 
        function outputArg = displayDepositScreen(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end 
        function outputArg = displayWithdrawScreen(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end 
        function outputArg = displayTransferScreen(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end 
    end
end

