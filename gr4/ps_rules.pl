%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% Phrase Structure Rules %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% head initial verb phrase rule

head_init_phrase ##
    (phrase,
     h_init:plus,
     head_dtr:Head,
     nonh_dtr:NonHead)
===>
    cat> (Head,	h_init:plus,
				cat:head:verb), %!!!
    cat> (NonHead).
% results head initial phrase
% whose head is also head initial
% i.e. the first word is the head word in the phrase



% head final verb phrase rule
head_fin_phrase ##
    (phrase,
     h_init:minus,
     head_dtr:Head,
     nonh_dtr:NonHead)
===>
    cat> (NonHead),
    cat> (Head, cat:head:verb). %!!!
% results the head final phrase
% without any constraints on the head



% adjunct_noun phrase rule
% depending on adjunct type the phrase changis Spec value 
adjunct_noun ## %!!!
	(phrase,
	   h_init:minus,
	   cat:val:spec:Spec,
       head_dtr:Head,
       nonh_dtr:NonHead)
===>
    cat> (NonHead, cat:head:(adjunct, POS, 
								  mod:[H_cat])),

    cat> (Head, cat:(H_cat, head:noun, % works for 3rd pronoun too
					 val:spec:Hspec)),

	goal> ( (POS = adj, Spec = specify(attrib,Hspec));
			(POS = qnt, Spec = specify(quant,Hspec));
    		(POS = poss_pn, Spec = specify(pn_poss,Hspec));
			(POS = poss_noun,  Spec = specify(n_poss, Hspec))
			).	












