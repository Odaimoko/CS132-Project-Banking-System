classdef Functional_Account < Functional
    %FUNCTIONAL 此处显示有关此类的摘要
    %   此处显示详细说明
    
    properties
        
    end
    
    methods
        function obj = Functional_Account( ) 
        end
        
        function outputArg = openAccount(obj,bs,person_id,password)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            % get new account id from account_db
            accound_id=0;
            bs
            account=Account(person_id,accound_id);
            outputArg=accound_id;

        end

        function outputArg = closeAccount(obj,account_db,account,person_id,password)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end
        function outputArg = readAccount(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end
        function outputArg = verifyPassword(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end
        function outputArg = processClerkInput(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end
    end
end

