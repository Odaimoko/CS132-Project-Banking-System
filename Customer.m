classdef Customer
    %CUSTOMER 此处显示有关此类的摘要
    %   此处显示详细说明
    
    properties
        PID=0; % identity number
    end
    
    methods
        function obj = Customer(inputArg1,inputArg2)
            %CUSTOMER 构造此类的实例
            %   此处显示详细说明
            obj.Property1 = inputArg1 + inputArg2;
        end
        
        function outputArg = own(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end
    end
end

