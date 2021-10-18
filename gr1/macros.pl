%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% MACROS %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%=====================================
%          Synsem Macros
%=====================================
%%% noun category, input: case, number
noun_ss(Case-case, Num-num) :=
	(cat,
	   head:(noun,
		      case:Case,
			  num:Num),
	   val:e_list).

%%% Verb category, input: Valency list
verb_ss(ConjSt-list) := 
	(cat,
		head:(verb),
		val:ConjSt).

%=====================================
%          Word Macros
%=====================================
%%% noun word, input: case, number
noun(Case-case, Num-num) :=
	(word,
	   cat:(@noun_ss(Case, Num))).

%%% verb word, input: valency list
verb(ConjSt-list) :=
    (word,
       cat:(@verb_ss(ConjSt))).
