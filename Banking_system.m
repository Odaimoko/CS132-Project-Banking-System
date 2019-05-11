classdef Banking_system
    %BANKING_SYSTEM 此处显示有关此类的摘要
    %   此处显示详细说明
    
    properties
        ui_manager;
        functional;
        db_ticket;
        db_account;
    end
    
    methods
        function obj = Banking_system(inputArg1,inputArg2)
            %BANKING_SYSTEM 构造此类的实例
            %   此处显示详细说明
            obj.Property1 = inputArg1 + inputArg2;
        end
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end
    end
end

