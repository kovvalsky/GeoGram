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
((cat:val:(expl:del(NonH, Expl),
		   impl:Impl),		      
  head_dtr:cat:val:(expl:Expl,
					impl:Impl),
  nonh_dtr:cat:NonH);

 (cat:val:(expl:Expl,
		  impl:del(NonH, Impl)),		      
  head_dtr:cat:val:(expl:Expl,
					impl:Impl),
  nonh_dtr:cat:NonH)).
