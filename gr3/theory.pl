% Theory

:- tree_extensions.
:- multifile if/2.
:-lex_rule_depth(3).
%:- discontiguous '*>'/2.
%:- discontiguous 'fun'/1.
%:- discontiguous 'if'/2.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% hidden features

hidden_feat(dtrs).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% feature ordering
>>> phon.
 
num <<< pers.
case <<< num.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% Functional Descriptions %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% append(+,+,-)
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

fun del(+,+,-).
del(X,Y,Z) if 
   when( (Y=(e_list;ne_list);
          Z=(e_list;ne_list)),
		undelayed_del(X,Y,Z) ).

undelayed_del(El,(list,hd:El,tl:L),L) if true.
undelayed_del(El,(list,hd:H,tl:T1),(list,hd:H,tl:T2)) if del(El,T1,T2).



% mod_case(+,+,-)
% input: adjunct case and outputs modifiers case
fun mod_case(+,-). %!!!
mod_case(nom_c, case_i) if true.
mod_case(erg_c, erg) if true. 
mod_case(dat_c, case_) if true.
mod_case(cnst, arg_c) if true.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Principles %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- ['principles'].


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% Phrase Structure Rules %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- ['ps_rules'].


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% Macros %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- ['macros'].


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Lexical Rules %%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% no lexical rules

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% Lexicon %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- ['lexicon'].


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%% Test %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- ['test'].
