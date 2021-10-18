%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% THEORY %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- tree_extensions.
:- multifile if/2.
:-lex_rule_depth(3).

% hidden features

hidden_feat(dtrs).

% feature ordering
>>> phon.
num <<< pers.
case <<< num.

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
%       Import other components
%========================================

:- ['principles'].

:- ['ps_rules'].

:- ['macros'].

% no lexical rules

:- ['lexicon'].

:- ['test'].
