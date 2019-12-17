classdef FlatTerrain
    %FlatTerrain - 2D flat terrain
    %
    %   
    
    %   Luke Drnach
    %   November 20, 2019
    
    properties
        friction_coeff = 0.5;
        terrain_height = 0;
    end
    
    methods
        function obj = FlatTerrain()
        end
        
        function x = nearest(obj, xA)
            % NEAREST: Returns the nearest point on the terrain
            % 
            %   For FLAT TERRAIN, the nearest point to (xA, yA) is (xA, 0)
            
            x = [xA(1);obj.terrain_height];
        end
        function [N, T] = basis(~, ~)
           % BASIS: Returns the local coordinate basis for the terrain
           %
           %   For a flat terrain, the basis is simply the world
           %   coordinates
           %
           %    RETURN VALUE
           %        N: 2x1 double, the normal vector to the terrain
           %        T: 2x1 double, the tangent vector to the terrain
           %
           N = [0;1];
           T = [1;0];
        end
        function [x,y] = draw(obj, xlim, N)
           % DRAW: Draws the terrain within the limits
           %
           %
           
           x = linspace(xlim(1),xlim(2),N);
           y = obj.terrain_height * ones(size(x));
        end
    end
    
end
