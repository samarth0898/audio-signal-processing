classdef sterowire < audioPlugin
    methods 
        function out = process(plugin,in)
            out=0.125*in;
        end 
    end 
end 
       
