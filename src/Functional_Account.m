classdef Functional_Account < Functional
    %FUNCTIONAL �˴���ʾ�йش����ժҪ
    %   �˴���ʾ��ϸ˵��
    
    properties
        
    end
    
    methods
        function obj = Functional_Account( ) 
        end
        
        function outputArg = openAccount(obj,bs,person_id,password)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            % get new account id from account_db
            accound_id=0;
            bs
            account=Account(person_id,accound_id);
            outputArg=accound_id;

        end

        function outputArg = closeAccount(obj,account_db,account,person_id,password)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            outputArg = obj.Property1 + inputArg;
        end
        function outputArg = readAccount(obj,inputArg)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            outputArg = obj.Property1 + inputArg;
        end
        function outputArg = verifyPassword(obj,inputArg)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            outputArg = obj.Property1 + inputArg;
        end
        function outputArg = processClerkInput(obj,inputArg)
            %METHOD1 �˴���ʾ�йش˷�����ժҪ
            %   �˴���ʾ��ϸ˵��
            outputArg = obj.Property1 + inputArg;
        end
    end
end

