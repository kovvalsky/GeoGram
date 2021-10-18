%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% Lexicon %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%=========================================
%		 NOUNS (Possessives too)
%=========================================

%%% man
kaci 	~~> @noun(nom, sing).
kacma 	~~> @noun(erg, sing).
kacis 	~~> @noun(gen, sing).
kacis 	~~> (@noun(cnst, sing),
			 cat:head:mod:[(cat, head:noun)]). %poss

%%% male
mamakaci 	~~> @noun(nom, sing).
mamakacis 	~~> (@noun(cnst, sing),
			 cat:head:mod:[(cat, head:noun)]). %poss

%%% role
roli 	~~> @noun(nom, sing).

%%% part
natcili ~~> @noun(nom, sing).
natcilebi ~~> @noun(nom, plur).

%%% revolution
revolucia ~~> @noun(nom, sing).

%%% rose
vardebis ~~> (@noun(cnst, plur),
			 cat:head:mod:[(cat, head:noun)]).

%%% washing
sarecxis ~~> (@noun(cnst, sing),
			 cat:head:mod:[(cat, head:noun)]). 

%%% computer
kompiuteri ~~> @noun(nom, sing).
kompiuteris ~~> (@noun(cnst, sing),
			 cat:head:mod:[(cat, head:noun)]).

%%% woman
qali 	~~> @noun(nom, sing).
qalma 	~~> @noun(erg, sing).
qalis 	~~> (@noun(cnst, sing),
			 cat:head:mod:[(cat, head:noun)]). %poss

%%% book
tcigni 		~~> @noun(nom, sing).
tcigns 		~~> @noun(dat, sing).
tcignebs 	~~> @noun(dat, plur).
tcignis 	~~> @noun(cnst, plur).

%%% letter
tcerili 	~~> @noun(nom, sing).
tcerilebi 	~~> @noun(nom, plur).
tcerils 	~~> @noun(dat, sing).
tcerilma 	~~> @noun(erg, sing).
tcerilis ~~> (@noun(cnst, sing),
			 cat:head:mod:[(cat, head:noun)]).

%%% son/daughter
shvili 		~~> @noun(nom, sing).
shvilthan 	~~> @noun(com, sing).
shvilebthan ~~> @noun(com, plur).
shvilis 	~~> (@noun(cnst, sing),
			 cat:head:mod:[(cat, head:noun)]). %poss

%%% student
studenti 	~~> @noun(nom, sing).
students 	~~> @noun(dat, sing).
studentma 	~~> @noun(erg, sing).
studentebi 	~~> @noun(nom, plur).
studentebs 	~~> @noun(dat, plur).
studentebthan 	~~> @noun(com, plur).
studentis 	~~> (@noun(cnst, sing),
			 cat:head:mod:[(cat, head:noun)]). %poss

%%% boy
bitchi 	~~> @noun(nom, sing).
bitchma ~~> @noun(erg, sing).
bitchis ~~> (@noun(cnst, sing),
			 cat:head:mod:[(cat, head:noun)]). %poss

%%% rope
thoki 	~~> @noun(nom, sing).
thoks 	~~> @noun(dat, sing).
thokis 	~~> (@noun(cnst, sing),
			 cat:head:mod:[(cat, head:noun)]). %poss

%%% fence
ghobe 		~~> @noun(nom, sing).
ghobidan	~~> @noun(abl1, sing).
ghobemde 	~~> @noun(ter, sing).
ghobis 	~~> (@noun(cnst, sing),
			 cat:head:mod:[(cat, head:noun)]). %poss

%%% house
saxli 		~~> @noun(nom, sing).
saxlidan 	~~> @noun(abl1, sing).
saxlamde 	~~> @noun(ter, sing).
saxlis 	~~> (@noun(cnst, sing),
			 cat:head:mod:[(cat, head:noun)]). %poss

%%% exam
gamocda 	~~> @noun(nom, sing).
gamocdis 	~~> @noun(gen, sing).
gamocdebis 	~~> @noun(gen, plur).



%=========================================
%				VERBS
%=========================================

%%% to read smth
kithxulobs 	~~> @verb([@arg_npn_ss(nom,sing,per3), @arg_npn_ss(dat,_,per3)],  [], prs).
kithxuloben ~~> @verb([@arg_npn_ss(nom,plur,per3), @arg_npn_ss(dat,_,per3)],  [], prs).
tcaikithxa 	~~> @verb([@arg_npn_ss(erg,sing,per3), @arg_npn_ss(nom,_,per3)],  [], pst).
vkithxulobdith	~~> @verb([@arg_npn_ss(nom,plur,per1), @arg_npn_ss(dat,_,per3)],  [], psc).

%%% to be afraid of smth./smb.
eshinia 	~~> @verb([@arg_npn_ss(dat,sing,per3)],  [@arg_npn_ss(gen,_,_)], prs).
eshiniath 	~~> @verb([@arg_npn_ss(dat,plur,per3)],  [@arg_npn_ss(gen,_,_)], prs).
meshinia 	~~> @verb([@arg_npn_ss(dat,sing,per1)],  [@arg_npn_ss(gen,_,_)], prs).
%meshinia 	~~> @verb([@arg_npn_ss(dat,sing,per1)],  [@arg_npn_ss(gen,_,=\=per1)], prs). alternative version
shegeshinda ~~> @verb([@arg_npn_ss(dat,sing,per2)],  [@arg_npn_ss(gen,_,_)], pst). 

%%% to send smth./smb. smwh.
gzavnis 	~~> @verb([@arg_npn_ss(nom,sing,per3), @arg_npn_ss(dat,_,per3)], [@arg_npn_ss(com,_,_)], prs).
gaagzavna 	~~> @verb([@arg_npn_ss(erg,sing,per3), @arg_npn_ss(nom,_,per3)], [@arg_npn_ss(com,_,_)], pst).
gavagzavne 	~~> @verb([@arg_npn_ss(erg,sing,per1), @arg_npn_ss(nom,_,per3)], [@arg_npn_ss(com,_,_)], pst).
agzavnith 	~~> @verb([@arg_npn_ss(nom,plur,per2), @arg_npn_ss(dat,_,per3)], [@arg_npn_ss(com,_,_)], prs).

%%% to send for smb. smth. smwh.
gagigzavne	~~> @verb([@arg_npn_ss(erg,sing,per1), @arg_npn_ss(dat,sing,per2), @arg_npn_ss(nom,_,per3)], [@arg_npn_ss(com,_,_)], pst).

%%% to stretch smth. between smth.
gaaba 		~~> @verb([@arg_npn_ss(erg,sing,per3), @arg_npn_ss(nom,_,per3)], [@arg_npn_ss(abl1,_,_), @arg_npn_ss(ter,_,_)], pst).

%%% to stretch for smb. smth. between smth.
gagibav 	~~> @verb([@arg_npn_ss(nom,sing,per1), @arg_npn_ss(dat,sing,per2), @arg_npn_ss(dat,_,per3)], [@arg_npn_ss(abl1,_,_), @arg_npn_ss(ter,_,_)], fut).



%=========================================
%				PRONOUNS
%=========================================

%%% 1st person singular 
me ~~>			@pn((nom;erg;dat), sing, per1).
chemi ~~>		@pn(gen,  		   sing, per1).
chemidan ~~>	@pn(abl1, 		   sing, per1).
chemgan ~~>		@pn(abl2, 		   sing, per1).
chemthan ~~>	@pn(com, 		   sing, per1).  
chemamde ~~>	@pn(ter, 		   sing, per1).
%%% poss 1st person singular pronouns  %!!!
chemi ~~>		(@pn((C,nom_c), sing, per1),
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])).
chems ~~>		(@pn((C,dat_c), sing, per1), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])).
chemma ~~>		(@pn((C,erg_c), sing, per1), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])). 
%%% 1st person plural 
chven ~~>		@pn((nom;erg;dat), plur, per1).
chveni ~~>		@pn(gen,  		   plur, per1).
chvenidan ~~>	@pn(abl1, 		   plur, per1).
chvengan ~~>	@pn(abl2, 		   plur, per1).
chventhan ~~>	@pn(com, 		   plur, per1). 
chvenamde ~~>	@pn(ter, 		   plur, per1).
%%% poss 1st person plural pronouns  %!!!
chveni ~~>		(@pn((C,nom_c), plur, per1),
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])).
chvens ~~>		(@pn((C,dat_c), plur, per1),
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])).
chvenma ~~>		(@pn((C,erg_c), plur, per1),
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])). 

%%% 2nd person singular
shen ~~>		@pn((nom;erg;dat), sing, per2).
sheni ~~>		@pn(gen,  		   sing, per2).
shenidan ~~>	@pn(abl1, 		   sing, per2).
shengan ~~>		@pn(abl2, 		   sing, per2). 
shenthan ~~>	@pn(com, 		   sing, per2). 
shenamde ~~>	@pn(ter, 		   sing, per2).
%%% poss 2nd person singular pronouns  %!!!
sheni ~~>		(@pn((C,nom_c), sing, per2), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])).
shens ~~>		(@pn((C,dat_c), sing, per2), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])).
shenma ~~>		(@pn((C,erg_c), sing, per2), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])).
%%% 2nd person plural
thqven ~~>		@pn((nom;erg;dat), plur, per2).
thqveni ~~>		@pn(gen,  		   plur, per2).
thqvenidan ~~>	@pn(abl1, 		   plur, per2).
thqvengan ~~>	@pn(abl2, 		   plur, per2).
thqventhan ~~>	@pn(com, 		   plur, per2).  
thqvenamde ~~>	@pn(ter, 		   plur, per2).
%%% poss 2nd person plural pronouns  %!!!
thqveni ~~>		(@pn((C,nom_c), plur, per2), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])).
thqvens ~~>		(@pn((C,dat_c), plur, per2), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])).
thqvenma ~~>	(@pn((C,erg_c), plur, per2), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])).

%%% 3rd person singular
is ~~>			(word, cat:(@arg_npn_ss(nom, sing, per3),
					        val:spec:quant),   %!!! can be possesed 
					   arg_st:e_list).	   
%is ~~>			@pn(nom, 		   sing, per3).
igi ~~>			@pn(nom, 		   sing, per3).
mas ~~>			@pn(dat, 		   sing, per3).
man ~~>			@pn(erg, 		   sing, per3).
misith ~~>		@pn(ins, 		   sing, per3).
misi ~~>		@pn(gen,  		   sing, per3).
misgan ~~>		@pn((abl2;abl1),   sing, per3).
masthan ~~>		@pn(com, 		   sing, per3).
%%% poss 3rd person singular pronouns  %!!!
misi ~~>		(@pn((C,nom_c), sing, per3), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])).
mis ~~>			(@pn((C,dat_c), sing, per3), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])).
misma ~~>		(@pn((C,erg_c), sing, per3), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])).
%%% 3rd person plural
isini ~~>		@pn(nom, 		   plur, per3).
math ~~>		@pn((erg;dat), 	   plur, per3).
mathi ~~>		@pn(gen,  		   plur, per3).
mathgan ~~>		@pn((abl1;abl2),  plur, per3).
maththan ~~>	@pn(com, 		   plur, per3). 
%%% poss 3rd person plural pronouns  %!!!
mathi ~~>		(@pn((C,nom_c), plur, per3), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])).
math ~~>		(@pn((C,dat_c), plur, per3), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])).
mathma ~~>		(@pn((C,erg_c), plur, per3), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_)])).


%=========================================
%				ADJECTIVES
%=========================================

%%% big/large
didi 	~~> @adj(nom_c).
did 	~~> @adj(dat_c).
didma 	~~> @adj(erg_c).

%%% little/small
patara 	~~> @adj(cnst).

%%% beautiful
lamazi 	~~> @adj(nom_c).
lamaz 	~~> @adj(dat_c).
lamazma	~~> @adj(erg_c).

%%% short
mokle 	~~> @adj(cnst).

%%% strange
ucxo 	~~> @adj(cnst).

%%% interesting
saintereso 	~~> @adj(cnst).

%%% hard-working
bejithi 	~~> @adj(nom_c).
bejith 		~~> @adj(dat_c).
bejithma	~~> @adj(erg_c).



%=========================================
%				QUANTIFIERS
%=========================================

%%% all
yvela 	~~> @qnt(cnst).

%%% some (~exists)
romelighaca ~~> @qnt(cnst).

%%% some (several)
zogierthi 	~~> @qnt(nom_c).
zogierth 	~~> @qnt(dat_c).
zogierthma	~~> @qnt(erg_c).








