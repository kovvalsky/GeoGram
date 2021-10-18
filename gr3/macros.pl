%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% Macros %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Synsem Macros

%%% noun category input: case, number 
%%% used to complect the argument structure of the verb
noun_ss(Case-arg_c, Num-num, Spec-bool) := %!!! 
	(cat,
	   head:(noun,
		      case:Case,
			  num:Num),
	   val:spec:Spec).  %!!!



%%% noun/pronoun category input: case, number, person 
%%% used to complect the argument structure of the verb
npn_ss(Case-arg_c, Num-num, Per-pers) :=
	(cat,
	   head:(npn,
		      case:Case,
			  num:Num,
			  pers:Per),
	   val:spec:bool).  %!!!



%%% verb category input: explicit_arg_list, Implicit_arg_list, tense
%%% used in test
verb_ss(Expl-list, Impl-list, T-tense) := 
	(cat,
		head:(verb,
				tense:T),
		val:(frame,
				expl:Expl,
				impl:Impl)).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% For Testing and Lexicon %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%% Words %%%%%%%%%%%%%%


%%% noun word, input: case, number
%%% used in lexicon 
noun(Case-arg_c, Num-num) :=
	(word,
	   cat:(@noun_ss(Case, Num, minus)),
	   arg_st:e_list).



%%% pronoun word, input: case, number, person 
%%% used in lexiscon
pn(Case-arg_c, Num-num, Per-pers) :=
	(word,
	   cat:(@npn_ss(Case, Num, Per)),
	   cat:val:spec:plus, %!!! pronouns are specified
	   arg_st:e_list).



%%% verb word, input: explicit_arg_list, implicit_arg_list, tenses
%%% used in lexicon
verb(Expl-list, Impl-list, T-tense) :=
    (word,
       cat:(@verb_ss(Expl, Impl, T)),
	   arg_st:append(Expl, Impl)).



%%% adjective word, input: case
%%% used in lexicon 
adj(Case-adj_c) := %!!!
	(word,
	   cat:(cat,
	   		head:(adj,
		    	  	case:Case,
				  	mod:[@noun_ss(mod_case(Case),_, minus)]), %!!! expects unspecified noun cat
	   		val:e_list),
	   arg_st:e_list).



%%% quantifier word, input: case
%%% used in lexicon 
qnt(Case-adj_c) := %!!!
	(word,
	   cat:(cat,
	   		head:(qnt,
		    	  	case:Case,
				  	mod:[@noun_ss(mod_case(Case),sing,minus)]), %!!! expects unspecified noun cat
	   		val:e_list),
	   arg_st:e_list).









