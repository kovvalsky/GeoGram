%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% LEXICON %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%====================================
%             Nouns 
%====================================
%%% man
kaci 	~~> @noun(nom, sing).
kacma 	~~> @noun(erg, sing).

%%% woman
qali 	~~> @noun(nom, sing).
qalma 	~~> @noun(erg, sing).

%%% book
tcigni 		~~> @noun(nom, sing).
tcigns 		~~> @noun(dat, sing).
tcignebs 	~~> @noun(dat, plur).

%%% letter
tcerili 	~~> @noun(nom, sing).
tcerils 	~~> @noun(dat, sing).

%%% son/daughter
shvili 		~~> @noun(nom, sing).
shvilthan 	~~> @noun(com, sing).

%%% student
studenti 	~~> @noun(nom, sing).
students 	~~> @noun(dat, sing).
studentma 	~~> @noun(erg, sing).
studentebi 	~~> @noun(nom, plur).
studentebs 	~~> @noun(dat, plur).

%%% boy
bitchi 	~~> @noun(nom, sing).
bitchma ~~> @noun(erg, sing).

%%% rope
thoki 	~~> @noun(nom, sing).

%%% fence
ghobe 		~~> @noun(nom, sing).
ghobidan	~~> @noun(abl1, sing).
ghobemde 	~~> @noun(ter, sing).

%%% house
saxli 		~~> @noun(nom, sing).
saxlidan 	~~> @noun(abl1, sing).
saxlamde 	~~> @noun(ter, sing).

%%% exam
gamocda 	~~> @noun(nom, sing).
gamocdis 	~~> @noun(gen, sing).
gamocdebis 	~~> @noun(gen, plur).

%====================================
%             Verbs 
%====================================

%%% to read
kithxulobs 	~~> @verb([@noun_ss(nom,sing), @noun_ss(dat,_)]).
kithxuloben ~~> @verb([@noun_ss(nom,plur), @noun_ss(dat,_)]).
tcaikithxa 	~~> @verb([@noun_ss(erg,sing), @noun_ss(nom,_)]).

%%% to be afraid of
eshinia 	~~> @verb([@noun_ss(dat,sing), @noun_ss(gen,_)]).
eshiniath 	~~> @verb([@noun_ss(dat,plur), @noun_ss(gen,_)]).

%%% to send
gzavnis 	~~> @verb([@noun_ss(nom,sing), @noun_ss(dat,_), @noun_ss(com,_)]).
gaagzavna 	~~> @verb([@noun_ss(erg,sing), @noun_ss(nom,_), @noun_ss(com,_)]).

%%% to stretch smth. between smth.
gaaba 		~~> @verb([@noun_ss(erg,sing), @noun_ss(nom,_), @noun_ss(abl1,_), @noun_ss(ter,_)]).
