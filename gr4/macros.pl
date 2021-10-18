%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% Macros %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Synsem Macros

%%% noun category input: case, number, specified 
%%% used to complect the argument structure of adjuncts
%%% including nouns with logical cases and possesive nouns
noun_ss(Case-case, Num-num, Spec-spec) := %!!!  
	(cat,
	   head:(noun,
		      case:Case,
			  num:Num),
	   val:(spec:Spec)). %!!!



%%% noun complement input: number
%%% used for noun complements
n_comp_ss(Num-num) := %!!!  
	(cat,
	   head:(noun,
		      case:cnst,
			  num:Num),
	   val:spec:unspec).  



%%% argument noun/pronoun category input: case, number, person 
%%% used to complect the argument structure of the verb
arg_npn_ss(Case-arg_c, Num-num, Per-pers) := %!!!
	(cat,
	   head:(arg_npn, %!!!
		      case:Case,
			  num:Num,
			  pers:Per),
	   val:comps).  %!!!



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


%%% noun word, input: case, number, complement 
%%% used in lexicon for arg-nouns and poss-nouns
noun(Case-case, Num-num) := %!!!
	(word,
	   cat:(@noun_ss(Case, Num, unspec)), % not specified
	   arg_st:e_list).



%%% pronoun word, input: case, number, person 
%%% used in lexiscon for possesive and argument pronouns
pn(Case-case, Num-num, Per-pers) :=
	(word,
	   cat:(head:(npn,
					case:Case,
					num:Num,
					pers:Per),
	   		val:spec:pq),
	   arg_st:e_list).



%%% verb word, input: explicit_arg_list, implicit_arg_list, tenses
%%% used in lexicon
verb(Expl-list, Impl-list, T-tense) :=
    (word,
       cat:(@verb_ss(Expl, Impl, T)),
	   arg_st:append(Expl, Impl)).



%%% adjective word, input: case
%%% used in lexicon 
adj(Case-adj_c) := 
	(word,
	   cat:(cat,
	   		head:(adj,
		    	  	case:Case,
				  	mod:[@noun_ss(mod_case(Case),_,_)]), 
					% constraints are relaxed on spec feature - see PS rules
					% to avoid inequations
	   		val:e_list),
	   arg_st:e_list).



%%% quantifier word, input: case
%%% used in lexicon 
qnt(Case-adj_c) := 
	(word,
	   cat:(cat,
	   		head:(qnt,
		    	  	case:Case,
				  	mod:[@noun_ss(mod_case(Case),sing,_)]), 
					% constraints are relaxed on spec feature - see PS rules
					% to avoid inequations 
	   		val:e_list),
	   arg_st:e_list).










