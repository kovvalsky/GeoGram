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
tcerilebi 	~~> @noun(nom, plur).
tcerils 	~~> @noun(dat, sing).

%%% son/daughter
shvili 		~~> @noun(nom, sing).
shvilthan 	~~> @noun(com, sing).
shvilebthan ~~> @noun(com, plur).

%%% student
studenti 	~~> @noun(nom, sing).
students 	~~> @noun(dat, sing).
studentma 	~~> @noun(erg, sing).
studentebi 	~~> @noun(nom, plur).
studentebs 	~~> @noun(dat, plur).
studentebthan 	~~> @noun(com, plur).

%%% boy
bitchi 	~~> @noun(nom, sing).
bitchma ~~> @noun(erg, sing).

%%% rope
thoki 	~~> @noun(nom, sing).
thoks 	~~> @noun(dat, sing).

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
%				VERBS
%====================================

%%% to read smth
kithxulobs 	~~> @verb([@npn_ss(nom,sing,per3), @npn_ss(dat,_,per3)],  [], prs).
kithxuloben ~~> @verb([@npn_ss(nom,plur,per3), @npn_ss(dat,_,per3)],  [], prs).
tcaikithxa 	~~> @verb([@npn_ss(erg,sing,per3), @npn_ss(nom,_,per3)],  [], pst).
vkithxulobdith	~~> @verb([@npn_ss(nom,plur,per1), @npn_ss(dat,_,per3)],  [], psc).

%%% to be afraid of smth./smb.
eshinia 	~~> @verb([@npn_ss(dat,sing,per3)],  [@npn_ss(gen,_,_)], prs).
eshiniath 	~~> @verb([@npn_ss(dat,plur,per3)],  [@npn_ss(gen,_,_)], prs).
meshinia 	~~> @verb([@npn_ss(dat,sing,per1)],  [@npn_ss(gen,_,_)], prs).
shegeshinda ~~> @verb([@npn_ss(dat,sing,per2)],  [@npn_ss(gen,_,_)], pst). 

%%% to send smth./smb. smwh.
gzavnis 	~~> @verb( [@npn_ss(nom,sing,per3), @npn_ss(dat,_,per3)], 
					   [@npn_ss(com,_,_)], prs).
gaagzavna 	~~> @verb( [@npn_ss(erg,sing,per3), @npn_ss(nom,_,per3)], 
					   [@npn_ss(com,_,_)], pst).
gavagzavne 	~~> @verb( [@npn_ss(erg,sing,per1), @npn_ss(nom,_,per3)], 
					   [@npn_ss(com,_,_)], pst).
agzavnith 	~~> @verb( [@npn_ss(nom,plur,per2), @npn_ss(dat,_,per3)], 
					   [@npn_ss(com,_,_)], prs).

%%% to send for smb. smth. smwh.
gagigzavne	~~> @verb( [@npn_ss(erg,sing,per1), @npn_ss(dat,sing,per2), @npn_ss(nom,_,per3)], 
					   [@npn_ss(com,_,_)], pst).

%%% to stretch smth. between smth.
gaaba 		~~> @verb( [@npn_ss(erg,sing,per3), @npn_ss(nom,_,per3)], 
					   [@npn_ss(abl1,_,_), @npn_ss(ter,_,_)], pst).

%%% to stretch for smb. smth. between smth.
gagibav 	~~> @verb( [@npn_ss(nom,sing,per1), @npn_ss(dat,sing,per2), @npn_ss(dat,_,per3)], 
					   [@npn_ss(abl1,_,_), @npn_ss(ter,_,_)], fut).

%====================================
%				PRONOUNS
%====================================

%%% 1st person singular 
me ~~>			@npn((nom;erg;dat), sing, per1).
chemi ~~>		@npn(gen,  		   sing, per1).
chemidan ~~>	@npn(abl1, 		   sing, per1).
chemgan ~~>		@npn(abl2, 		   sing, per1).
chemthan ~~>	@npn(com, 		   sing, per1).  
chemamde ~~>	@npn(ter, 		   sing, per1). 
%%% 1st person plural 
chven ~~>		@npn((nom;erg;dat), plur, per1).
chveni ~~>		@npn(gen,  		   plur, per1).
chvenidan ~~>	@npn(abl1, 		   plur, per1).
chvengan ~~>	@npn(abl2, 		   plur, per1).
chventhan ~~>	@npn(com, 		   plur, per1). 
chvenamde ~~>	@npn(ter, 		   plur, per1).

%%% 2nd person singular
shen ~~>		@npn((nom;erg;dat), sing, per2).
sheni ~~>		@npn(gen,  		   sing, per2).
shenidan ~~>	@npn(abl1, 		   sing, per2).
shengan ~~>		@npn(abl2, 		   sing, per2). 
shenthan ~~>	@npn(com, 		   sing, per2). 
shenamde ~~>	@npn(ter, 		   sing, per2). 
%%% 2nd person plural
thqven ~~>		@npn((nom;erg;dat), plur, per2).
thqveni ~~>		@npn(gen,  		   plur, per2).
thqvenidan ~~>	@npn(abl1, 		   plur, per2).
thqvengan ~~>	@npn(abl2, 		   plur, per2).
thqventhan ~~>	@npn(com, 		   plur, per2).  
thqvenamde ~~>	@npn(ter, 		   plur, per2).

%%% 3rd person singular
is ~~>			@npn(nom, 		   sing, per3).
igi ~~>			@npn(nom, 		   sing, per3).
mas ~~>			@npn(dat, 		   sing, per3).
man ~~>			@npn(erg, 		   sing, per3).
misith ~~>		@npn(ins, 		   sing, per3).
misi ~~>		@npn(gen,  		   sing, per3).
misgan ~~>		@npn((abl2;abl1),  sing, per3).
masthan ~~>		@npn(com, 		   sing, per3). 
%%% 3rd person plural
isini ~~>		@npn(nom, 		   plur, per3).
math ~~>		@npn((erg;dat), 	   plur, per3).
mathi ~~>		@npn(gen,  		   plur, per3).
mathgan ~~>		@npn((abl1;abl2),  plur, per3).
maththan ~~>	@npn(com, 		   plur, per3).
