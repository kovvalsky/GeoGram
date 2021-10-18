%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% THEORY %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- tree_extensions.
:- multifile if/2.
:- lex_rule_depth(3).

% hidden features

hidden_feat(dtrs).
hidden_feat(lex).

% feature ordering
>>> phon.
cat <<< arg_st.
num <<< pers.
case <<< num.
plural <<< decl.
decl <<< compl.
compl <<< init.

%========================================
%       Functional Descriptions
%========================================

% append(+,+,-)
% input: two lists
% output: concatenation of the lists
% This append assumes that the first or the third argument
% are known to be non_empty or empty lists. 

fun append(+,+,-).
append(X,Y,Z) if 
   when( (X=(e_list;ne_list);
          Z=(e_list;ne_list)) 
       , undelayed_append(X,Y,Z)
       ).

undelayed_append(e_list, L, L) if true.
undelayed_append((list, hd:H, tl:T1), L, (list, hd:H, tl:T2)) if append(T1, L, T2).

% delete(+,+,-)
% delete a bot element from the list and return reduced list
% input: element and list
% output: list minus element

fun del(+,+,-).
del(X,Y,Z) if 
   when( (Y=(e_list;ne_list);
          Z=(e_list;ne_list)),
		undelayed_del(X,Y,Z) ).

undelayed_del(El,(list,hd:El,tl:L),L) if true.
undelayed_del(El,(list,hd:H,tl:T1),(list,hd:H,tl:T2)) if del(El,T1,T2).

% mod_case(+,+,-)
% input: adjunct case
% output: modifiers case

fun mod_case(+,-). 
mod_case(erg_c, erg) if true. 
mod_case(dat_c, case_) if true.
mod_case(cnst, case) if true.    
mod_case(nom_c, cnst_i) if true. 

% specify(+,+,-)
% input: the specification function of the adjunct and
%        the specification value og the head
% output: specification value of the phrase

fun specify(+,+,-).
specify((S,specif), unspec, S) if true.
specify((S,specif), attrib, S) if true.
specify(n_poss, quant, n_poss) if true.
specify(pn_poss, quant, pnp_q) if true.
specify(quant, pn_poss, pnp_q) if true.


%========================================
%           Loop Predicates
%========================================

%%% Loop Predicates of Declension Paradigms
isParadigm(decl_i, a_ decl_i) 	if true.
isParadigm(decl_e, a_ decl_e) 	if true.
isParadigm(decl_ou, a_ decl_ou) if true.
isParadigm(decl_a, a_ decl_a) 	if true.

%%% Loop Predicates of Logical Cases
isLogCase(nom, a_ nom) 	 if true.    % nominative   N-i
isLogCase(dat, a_ dat) 	 if true.    % dative       N-s
isLogCase(abl1, a_ abl1) if true.    % ablative1    N-idan
isLogCase(abl2, a_ abl2) if true.    % ablative2    N-isgan
isLogCase(loc, a_ loc)   if true.    % locative     N-ze
isLogCase(ine, a_ ine)   if true.    % inessive     N-shi
isLogCase(adv, a_ adv)   if true.    % adverbial    N-ad
isLogCase(erg, a_ erg)   if true.    % ergative     N-ma
isLogCase(ins, a_ ins)   if true.    % instrumental N-it'
isLogCase(ter, a_ ter)   if true.    % Terminative  N-amde
isLogCase(com, a_ com)   if true.    % comitative   N-t'an
isLogCase(gen, a_ gen)   if true.    % genetive     N-is(si)
isLogCase(ben, a_ ben)   if true.    % Benefactive  N-ist'vis
isLogCase(ori, a_ ori)   if true.    % orientative  N-isken


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Binding Predicates for Persons
isPer(per1, (a_ per1)) if true.
isPer(per2, (a_ per2)) if true.
isPer(per3, (a_ per3)) if true.
isPer1(per1, (a_ per1)) if true.
isPer2(per2, (a_ per2)) if true.
isPer3(per3, (a_ per3)) if true.

%%% Binding Predicates for Numbers
isNum(sing, (a_ sing)) if true.
isNum(plur, (a_ plur)) if true.

%%% Binding Predicates for boolean values %%%%%%%%%%%%%%%%%%%%%
isPlus(plus, (a_ plus)) if true.
isMinus(minus, (a_ minus)) if true.

%%%%%%%%%%%%%%%%%%%% Phonology Predicates %%%%%%%%%%%%%%%%%%%%%
s20(Z,X) :- (X=s -> Z=[]; Z=X).
i2u(Z,X) :- (X=i -> Z=u; Z=X).
prfx3(Z,X,Y) :- (X=i -> Z=[u,Y];
					(member(X,[t,d,c,j]) -> Z=[s,X,Y];
						((member(X,[q,k,y]); (X=g,Y\=h)) -> Z=[h,X,Y];
							Z = [X,Y]))).
prepend_phon([s], a).
prepend_phon([k], a).
prepend_phon([], a).

memberof(X, tl:T) if memberof(X, T).
memberof(X, hd:X) if true.

%========================================
%       Import other components
%========================================

:- ['principles'].

:- ['ps_rules'].

:- ['macros'].

%:- ['lexical_rules'].

:- ['lexicon'].

:- ['lexical_rules'].

:- ['test'].
