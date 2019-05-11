classdef UI_ATM < UI_Base
    %BASEUI 此处显示有关此类的摘要
    %   此处显示详细说明
    
    properties
        Property1
    end
    
    methods
        function obj = UI_ATM(inputArg1,inputArg2)
            %BASEUI 构造此类的实例
            %   此处显示详细说明
            obj.Property1 = inputArg1 + inputArg2;
        end
        
        function outputArg = insertCard(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end 
        function outputArg = selectOption(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end 
        function outputArg = inputCash(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end 
        function outputArg = outputCash(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end 
        function outputArg = confirm(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end 
        function outputArg = terminate(obj,inputArg)
            %METHOD1 ter
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end 
    end
end

