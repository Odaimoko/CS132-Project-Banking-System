classdef UI_ATM < UI_Base
    %BASEUI �˴���ʾ�йش����ժҪ
    %   �˴���ʾ��ϸ˵��
    
    properties
        Property1
    end
    
    methods
        function obj = UI_ATM(inputArg1,inputArg2)
            %BASEUI ��������ʵ��
            %   �˴���ʾ��ϸ˵��
            obj.Property1 = inputArg1 + inputArg2;
        end
        
        function outputArg = insertCard(obj,inputArg)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            outputArg = obj.Property1 + inputArg;
        end 
        function outputArg = selectOption(obj,inputArg)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            outputArg = obj.Property1 + inputArg;
        end 
        function outputArg = inputCash(obj,inputArg)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            outputArg = obj.Property1 + inputArg;
        end 
        function outputArg = outputCash(obj,inputArg)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            outputArg = obj.Property1 + inputArg;
        end 
        function outputArg = confirm(obj,inputArg)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            outputArg = obj.Property1 + inputArg;
        end 
        function outputArg = terminate(obj,inputArg)
            %METHOD1 ter
            %   �˴���ʾ��ϸ˵��
            outputArg = obj.Property1 + inputArg;
        end 
    end
end

