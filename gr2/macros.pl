%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% MACROS %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%=====================================
%          Synsem Macros
%=====================================

%%% noun/pronoun category input: case, number, person 
npn_ss(Case-case, Num-num, Per-pers) :=
	(cat,
	   head:(npn,
		      case:Case,
			  num:Num,
			  pers:Per),
	   val:e_list).

%%% verb category input: explicit_arg_list, Implicit_arg_list, tense
verb_ss(Expl-list, Impl-list, T-tense) := 
	(cat,
		head:(verb,
				tense:T),
		val:(frame,
				expl:Expl,
				impl:Impl)).


%=====================================
%       For Testing and Lexicon 
%=====================================

%%% noun word, input: case, number 
noun(Case-case, Num-num) :=
	(word,
	   cat:(cat,
	   		head:(noun,
		    	  case:Case,
				  num:Num),
	   		val:e_list),
	   arg_st:e_list).

%%% pronoun (noun) word, input: case, number, person 
npn(Case-case, Num-num, Per-pers) :=
	(word,
	   cat:(@npn_ss(Case, Num, Per)),
	   arg_st:e_list).

%%% verb word, input: explicit_arg_list, implicit_arg_list, tenses
verb(Expl-list, Impl-list, T-tense) :=
    (word,
       cat:(@verb_ss(Expl, Impl, T)),
	   arg_st:append(Expl, Impl)).


