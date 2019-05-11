classdef Clerk
    %Clerk 此处显示有关此类的摘要
    %   此处显示详细说明
    
    properties
        ID=0;
    end
    
    methods
        function obj = Clerk(inputArg1,inputArg2)
            %Clerk 构造此类的实例
            %   此处显示详细说明
            obj.Property1 = inputArg1 + inputArg2;
        end
        
        function outputArg = serve(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end
        
        function outputArg = displayNextCustomer(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end
    end
end

