%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% PHRASE STRUCTURE RULES %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%=====================================
%       Head Initial Verb PS Rule
%=====================================

head_init_phrase ##
    (hc_phrase,
     h_init:plus,
     head_dtr:Head,
     nonh_dtr:NonHead)
===>
    cat> (Head,	h_init:plus,
				cat:head:verb), 
    cat> (NonHead).
% results head initial verb phrase
% whose head is also head initial
% i.e. the first word is the head word in the phrase

%=====================================
%       Head Final Verb PS Rule
%=====================================

head_fin_phrase ##
    (ch_phrase,
     h_init:minus,
     head_dtr:Head,
     nonh_dtr:NonHead)
===>
    cat> (NonHead),
    cat> (Head, cat:head:verb). 
% results the head final verb phrase
% without any constraints on the head

%=====================================
%       Adjunct-Noun PS Rule
%=====================================

adjunct_noun ## 
	(ah_phrase,
	   h_init:minus,
	   cat:val:(spec:Spec,
				comp:e_list),
       head_dtr:Head,
       nonh_dtr:NonHead)
===>
    cat> (NonHead, cat:head:(adjunct, POS, 
								  mod:[H_cat])),

    cat> (Head, cat:(H_cat, head:noun,
					 val:spec:Hspec)),

	goal> ( (POS = adj, Spec = specify(attrib,Hspec));
			(POS = qnt, Spec = specify(quant,Hspec));
    		(POS = poss_pn, Spec = specify(pn_poss,Hspec));
			(POS = poss_noun,  Spec = specify(n_poss, Hspec))
		  ).	
% Depending on adjunct type the phrase changes the Spec value
% Resulted phrase can not take any complements 

%=====================================
%       Complement-Noun PS Rule
%=====================================

complement_noun ## 
	(ch_phrase,
	   h_init:minus,
	   cat:val:(spec:unspec,
				comp:e_list),
       head_dtr:Head,
       nonh_dtr:NonHead)
===>
    cat> (NonHead, cat:Comp_ss),

    cat> (Head, cat:(head:noun,
					 val:comp:[Comp_ss])).
% The cat of complement is encoded in complement list of the head
% Resulted phrase is unspecified and has empty list of complements










