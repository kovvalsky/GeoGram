%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% PRINCIPLES %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%=====================================
%          Head Feature Principl
%=====================================
phrase
*>
(cat:(head:HF), 
 head_dtr:cat:(head:HF)).

%=====================================
%          Valency Principle
%=====================================
phrase
*>
(cat:val:del(NonH,H),		      
 head_dtr:cat:val:H,
 nonh_dtr:cat:NonH).