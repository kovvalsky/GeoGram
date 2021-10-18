%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% Macros %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%=====================================
%          Synsem Macros
%=====================================

%%% noun category input: case, number, specification, complement 
%%% used to complect the argument structure of adjuncts
noun_ss(Case-case, Num-num, Spec-spec, Comp-list) := 
	(cat,
	   head:(noun,
		      case:Case,
			  num:Num),
	   val:(spec:Spec,
			comp:Comp)).

%%% noun complement input: number
%%% used for noun complements
n_comp_ss(Num-num) :=
	(cat,
	   head:(noun,
		      case:cnst,
			  num:Num),
	   val:spec:non_deter).  

%%% argument noun/pronoun category input: case, number, person 
%%% used to complect the argument structure of the verb
arg(Case-arg_c, Num-num, Per-pers) :=
	(cat,
	   head:(arg_npn,
		      case:Case,
			  num:Num,
			  pers:Per),
	   val:comps).  

%%% verb category input: explicit_arg_list, Implicit_arg_list, tense
%%% used in test
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

%%% noun word, input: case, number, complement 
%%% used in lexicon for arg-nouns and poss-nouns
noun(Case-case, Num-num, Comp-list) :=
	(word,
	   cat:(@noun_ss(Case, Num, unspec, Comp)),
	   arg_st:Comp).

%%% pronoun word, input: case, number, person 
%%% used in lexicon for possesive and argument pronouns
pn(Case-case, Num-num, Per-pers) :=
	(word,
	   cat:(head:(npn,
					case:Case,
					num:Num,
					pers:Per),
	   		val:(spec:n_poss,  
       			comp:e_list)),
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
				  	mod:[@noun_ss(mod_case(Case),_,_,_)]), 
					% constraints are relaxed on spec feature
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
				  	mod:[@noun_ss(mod_case(Case),sing,_,_)]), 
					% constraints are relaxed on spec feature
					% to avoid inequations 
	   		val:e_list),
	   arg_st:e_list).


%=====================================
%            Lexeme Macros 
%=====================================
%%% adjective lexeme
%%% input:declention paradigm (used for normalization)
lex_a(Par-decl) :=
	(adj_lex,
		decl:Par).
%%% initial adjective lexeme
%%% input:declention paradigm (used in lexicon)
lex_aa(Par-decl) :=
	(adj_lex,
		decl:Par,
		init:e_lex). %!!!

%%% qunatifier lexeme
%%% input:declention paradigm (used for normalization)
lex_q(Par-decl) :=
	(qnt_lex,
		decl:Par).

%%% initial qunatifier lexeme
%%% input:declention paradigm (used in lexicon)
lex_qq(Par-decl) :=
	(qnt_lex,
		decl:Par,
		init:e_lex). %!!!

%%% noun lexeme
%%% input:declention paradigm, capable_of_having_plural, complement
lex_n(Par-decl, Pl-bool4, Compl-list) :=
	(noun_lex,
		compl:Compl,
		decl:Par,
        plural:Pl).

%%% initial noun lexeme
%%% input:declention paradigm, capable_of_having_plural, complement
lex_nn(Par-decl, Pl-bool4, Compl-list) :=
	(noun_lex,
		compl:Compl,
		decl:Par,
        plural:Pl,
		init:e_lex).

%==========================================================
%==========================================================
%%%
%verb_ss(ConjSt-list, NonConjSt-list, Tense-tense) := 
%	(cat,
%		head:(verb,
%        		tense:Tense),
%		val:(val,
%        		spec:bool,    			% verb specifier
%				mod:list,	   			% verb modifies					 
%				comps:(arg_st,      
%                     		conj_st:ConjSt,
%                     		non_conj_st:NonConjSt))).


%%% verb word, input: conjugation_fr, non_constant_valency_fr, constant_valency_fr, tenses, lexeme
%verb(ConjSt-list, NonConjSt-list, Tense-tense, L-lexeme) :=
%    (word,
%       cat:(@verb_ss(ConjSt, NonConjSt, Tense)),
%       lex:L).

%%% verb expression, input: tense, specified, modified_list, conjugation_fr, non_constant_fr, constant_fr
v_exp(ConjSt-list, NonConjSt-list, Tense-tense) := 
	(expr,
	   cat:(@verb_ss(ConjSt, NonConjSt, Tense))).


%%% verb lexeme, input: list_of_preverbs, non_constant_valency_fr, constant_valency_fr, conjugation_class
lexeme_verb(Preverb-list, NonConstVal-list, ConstVal-list, ConjClass-conj_class) :=
	(verb_lex,
		preverbs:Preverb,
        verb_val:(verb_val,
        			non_const_val:NonConstVal,
                    const_val:ConstVal),
		conj_class:ConjClass).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%% Conjugation Macros %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%% Dynamic conjugation %%%%%%%%%%%%%

%%% dynamic conjugation class, input: number_of_conjugable_arguments, tense, supports_Being, suffix_of_pers3
dynamic(ConjNum-conj_num, Be-bool4, Suff3pl-list, Suffps-list, Tense-tense) :=
	(dynamic,
		conj_num:ConjNum,
        conj_tense:Tense,
        being:Be,
        suff3pl:Suff3pl,
		suffps:Suffps).

%%%%%%%% Suff3pl lists %%%%%%%%
en_en := [(a_ en), (a_ en)].
an_en := [(a_ an), (a_ en)].
an_an := [(a_ an), (a_ an)].
en_an := [(a_ en), (a_ an)].

%%%%%%%% Suffps lists %%%%%%%%

e_a := [(a_ e), (a_ a)].
e_o := [(a_ e), (a_ o)].
i_a := [(a_ i), (a_ a)].
i_o := [(a_ i), (a_ o)].

e := [(a_ e)].
i := [(a_ i)].


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% Static Conjugation %%%%%%%%%%%%%

%%% Static conjugation class, input: number_of_conjugable_arguments, Suffixes_for_past, Tense
static(ConjNum-conj_num, Suffps-list, Tense-tense) :=
	(static,
		conj_num:ConjNum,
        conj_tense:Tense,
		suffps:Suffps,
		being:minus).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%% Stative Conjugation %%%%%%%%%%%%%

%%% Stative conjugation class, input: number_of_conjugable_arguments, supporting Being, Tense
stative(ConjNum-conj_num, Being-bool4, Suffps-list, Tense-tense) :=
	(stative,
		conj_num:ConjNum,
        conj_tense:Tense,
		suffps:Suffps,
		being:Being).



