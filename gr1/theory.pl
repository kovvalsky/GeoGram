%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% THEORY %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- tree_extensions.
:- multifile if/2.

% hidden features
hidden_feat(dtrs).

% feature ordering
>>> phon.
num <<< pers.
case <<< num.

%========================================
%       Functional Descriptions
%========================================

% delete(+,+,-)
% delete a bot element from the list and return reduced list

fun del(+,+,-).
del(X,Y,Z) if 
   when( (Y=(e_list;ne_list);
          Z=(e_list;ne_list)),
		undelayed_del(X,Y,Z) ).

undelayed_del(El,(list,hd:El,tl:L),L) if true.
undelayed_del(El,(list,hd:H,tl:T1),(list,hd:H,tl:T2)) if del(El,T1,T2).


%========================================
%       Import other components
%========================================
:- ['principles'].

:- ['ps_rules'].

:- ['macros'].

% no lexical rules

:- ['lexicon'].

:- ['test'].
