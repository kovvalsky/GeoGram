%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% Phrase Structure Rules %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% verb initial phrase rule

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



% verb final phrase rule
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
	   cat:val:spec:Bool,
       head_dtr:Head,
       nonh_dtr:NonHead)
===>
    cat> (NonHead, cat:head:(POS, adjunct, 
								  mod:[H_cat])),
    cat> (Head, cat:H_cat),
	goal> ( (POS = adj, Bool = minus); (POS = qnt, Bool = plus) ).	












