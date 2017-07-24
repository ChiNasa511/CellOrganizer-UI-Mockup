% Create script to generate XML from input.
%
% Chinasa Okolo (chinasa.okolo@pomona.edu)
%
% Copyright (C) 2017 Murphy Lab
% Computational Biology Department
% Carnegie Mellon University
%
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published
% by the Free Software Foundation; either version 2 of the License,
% or (at your option) any later version.
%
% This program is distributed in the hope that it will be useful, but
% WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
% General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program; if not, write to the Free Software
% Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
% 02110-1301, USA.
%
% For additional information visit http://murphylab.web.cmu.edu or
% send email to murphy@cmu.edu

docNode = com.mathworks.xml.XMLUtils.createDocument('inputs');
section_node = docNode.createElement('section');
docNode.getDocumentElement.appendChild(section_node);

section_node.setAttribute('expanded','false');
section_node.setAttribute('name','nuc');
section_node.setAttribute('title','Nucleus Options');

param_node = docNode.createElement('param');
section_node.appendChild(param_node);

name_node = docNode.createElement('Name');

option_node = docNode.createElement('option');
option_node.setTextContent('gmm')
option_node.setAttribute('value','gmm');
option_node.setTextContent('gmm')

% adding subsequent options
option2_node = docNode.createElement('option');
option2_node.setAttribute('value','medial_axis');
option2_node.setTextContent('medial axis')

option3_node = docNode.createElement('option');
option3_node.setAttribute('value','ratio');
option3_node.setTextContent('ratio')
      
option4_node = docNode.createElement('option');
option4_node.setAttribute('value','cylindrical_surface');
option4_node.setAttribute('selected','True');
option4_node.setTextContent('cylindrical surface')

option5_node = docNode.createElement('option');
option5_node.setAttribute('value','diffeomorphic');
option5_node.setTextContent('diffeomorphic')

option6_node = docNode.createElement('option');
option6_node.setAttribute('value','microtubule_growth');
option6_node.setTextContent('microtubule growth')

option7_node = docNode.createElement('option');
option7_node.setAttribute('value','morphing');
option7_node.setTextContent('morphing')

option8_node = docNode.createElement('option');
option8_node.setAttribute('value','standardized_map_half-ellipsoid');
option8_node.setTextContent('standardized map half-ellipsoid')

% set an attribute directly
param_node.appendChild(option_node);
param_node.appendChild(option2_node);
param_node.appendChild(option3_node);
param_node.appendChild(option4_node);
param_node.appendChild(option5_node);
param_node.appendChild(option6_node);
param_node.appendChild(option7_node);
param_node.appendChild(option8_node);
param_node.setAttribute('name','nucleustype');
param_node.setAttribute('type','select');
param_node.setAttribute('label','Select a nuclear model type');



xmlwrite(docNode)