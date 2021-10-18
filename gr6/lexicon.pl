%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% Lexicon %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%=========================================
%			  NOUN LEXEMES
%=========================================
%:- multifile '~~>'/2.
% phonology = fullStem_nonFullStem
% man
kac_kac	~~>	@lex_nn(decl_i, plus, e_list).
% wolf
mgel_mgl ~~> @lex_nn(decl_i, plus, e_list).
% tree
xe_x ~~> 			@lex_nn(decl_e, plus, e_list).
% moon
mthvare_mthvar ~~>	@lex_nn(decl_e, plus, e_list).
% day
dghe_dgh ~~> 		@lex_nn(decl_e, plus, e_list).
% wine
ghvino_ghvin ~~>	@lex_nn(decl_e, minus, e_list).
% tea
chai_cha ~~> 		@lex_nn(decl_e, minus, e_list).
% girl
gogo_gogo ~~> 		@lex_nn(decl_ou, plus, e_list).
% butterfly
pepela_pepl ~~> 	@lex_nn(decl_a, plus, e_list).
% car, machine
manqana_manqan ~~>	@lex_nn(decl_a, plus, e_list).
% woman
qal_qal ~~>			@lex_nn(decl_i, plus, e_list).
% dog
dzaghl_dzaghl ~~>	@lex_nn(decl_i, plus, e_list).
% male
mamakac_mamakac	~~> @lex_nn(decl_i, plus, e_list).
% role
rol_rol	~~> 		@lex_nn(decl_i, plus, [@n_comp_ss(sing)]).
% part
natcil_natcil ~~> 	@lex_nn(decl_i, plus, [@n_comp_ss(sing)]).
% washing
sarecx_sarecx ~~> 	@lex_nn(decl_i, minus, e_list).
% computer
kompiuter_kompiuter ~~> @lex_nn(decl_i, plus, e_list).
% book
tcign_tcign	~~> 	@lex_nn(decl_i, plus, e_list).
% letter
tceril_tceril ~~>	@lex_nn(decl_i, plus, e_list).
% son/daughter
shvil_shvil ~~>		@lex_nn(decl_i, plus, [@n_comp_ss(sing)]).
% student
student_student	~~> @lex_nn(decl_i, plus, e_list).
% boy
bitch_bitch ~~> 	@lex_nn(decl_i, plus, e_list).
% baby, child
bavshv_bavshv ~~> 	@lex_nn(decl_i, plus, e_list).
% rope
thok_thok ~~> 		@lex_nn(decl_i, plus, [@n_comp_ss(sing)]).
% fence
ghobe_ghob ~~>		@lex_nn(decl_e, plus, e_list).
% house
saxl_saxl ~~> 		@lex_nn(decl_i, plus, [@n_comp_ss(_)]).
% exam
gamocda_gamocd ~~> 	@lex_nn(decl_a, plus, e_list).

%=========================================
%				VERBS
%=========================================

%%% to read smth
kithxulobs 	~~> @verb([@arg(nom,sing,per3), @arg(dat,_,per3)],  [], prs).
kithxuloben ~~> @verb([@arg(nom,plur,per3), @arg(dat,_,per3)],  [], prs).
tcaikithxa 	~~> @verb([@arg(erg,sing,per3), @arg(nom,_,per3)],  [], pst).
vkithxulobdith	~~> @verb([@arg(nom,plur,per1), @arg(dat,_,per3)],  [], psc).

%%% to like smth
%momtcons 	~~> @verb([@arg(dat,sing,per1), @arg(nom,_,per3)],  [], prs).

%%% to be afraid of smth./smb.
%eshinia 	~~> @verb([@arg(dat,sing,per3)],  [@arg(gen,_,_)], prs).
%eshiniath 	~~> @verb([@arg(dat,plur,per3)],  [@arg(gen,_,_)], prs).
%meshinia 	~~> @verb([@arg(dat,sing,per1)],  [@arg(gen,_,_)], prs).
%shegeshinda ~~> @verb([@arg(dat,sing,per2)],  [@arg(gen,_,_)], pst). 

%%% to send smth./smb. smwh.
gzavnis 	~~> @verb(	[@arg(nom,sing,per3), @arg(dat,_,per3)], 
					  	[@arg(com,_,_)], prs).
gaagzavna 	~~> @verb(	[@arg(erg,sing,per3), @arg(nom,_,per3)], 
						[@arg(com,_,_)], pst).
gavagzavne 	~~> @verb(	[@arg(erg,sing,per1), @arg(nom,_,per3)], 
						[@arg(com,_,_)], pst).
agzavnith 	~~> @verb(	[@arg(nom,plur,per2), @arg(dat,_,per3)], 
						[@arg(com,_,_)], prs).

%%% to send for smb. smth. smwh.
gagigzavne	~~> @verb(	[@arg(erg,sing,per1), @arg(dat,sing,per2), @arg(nom,_,per3)], 
						[@arg(com,_,_)], pst).

%%% to stretch smth. between smth.
gaaba 		~~> @verb(	[@arg(erg,sing,per3), @arg(nom,_,per3)], 
						[@arg(abl1,_,_), @arg(ter,_,_)], pst).

%%% to stretch for smb. smth. between smth.
gagibav 	~~> @verb(	[@arg(nom,sing,per1), @arg(dat,sing,per2), @arg(dat,_,per3)], 
						[@arg(abl1,_,_), @arg(ter,_,_)], fut).



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
%%% poss 1st person singular pronouns
chemi ~~>		(@pn((C,nom_c), sing, per1),
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])).
chems ~~>		(@pn((C,dat_c), sing, per1), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])).
chemma ~~>		(@pn((C,erg_c), sing, per1), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])). 
%%% 1st person plural 
chven ~~>		@pn((nom;erg;dat), plur, per1).
chveni ~~>		@pn(gen,  		   plur, per1).
chvenidan ~~>	@pn(abl1, 		   plur, per1).
chvengan ~~>	@pn(abl2, 		   plur, per1).
chventhan ~~>	@pn(com, 		   plur, per1). 
chvenamde ~~>	@pn(ter, 		   plur, per1).
%%% poss 1st person plural pronouns
chveni ~~>		(@pn((C,nom_c), plur, per1),
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])).
chvens ~~>		(@pn((C,dat_c), plur, per1),
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])).
chvenma ~~>		(@pn((C,erg_c), plur, per1),
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])). 

%%% 2nd person singular
shen ~~>		@pn((nom;erg;dat), sing, per2).
sheni ~~>		@pn(gen,  		   sing, per2).
shenidan ~~>	@pn(abl1, 		   sing, per2).
shengan ~~>		@pn(abl2, 		   sing, per2). 
shenthan ~~>	@pn(com, 		   sing, per2). 
shenamde ~~>	@pn(ter, 		   sing, per2).
%%% poss 2nd person singular pronouns
sheni ~~>		(@pn((C,nom_c), sing, per2), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])).
shens ~~>		(@pn((C,dat_c), sing, per2), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])).
shenma ~~>		(@pn((C,erg_c), sing, per2), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])).
%%% 2nd person plural
thqven ~~>		@pn((nom;erg;dat), plur, per2).
thqveni ~~>		@pn(gen,  		   plur, per2).
thqvenidan ~~>	@pn(abl1, 		   plur, per2).
thqvengan ~~>	@pn(abl2, 		   plur, per2).
thqventhan ~~>	@pn(com, 		   plur, per2).  
thqvenamde ~~>	@pn(ter, 		   plur, per2).
%%% poss 2nd person plural pronouns
thqveni ~~>		(@pn((C,nom_c), plur, per2), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])).
thqvens ~~>		(@pn((C,dat_c), plur, per2), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])).
thqvenma ~~>	(@pn((C,erg_c), plur, per2), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])).

%%% 3rd person singular
is ~~>			@pn(nom, 		   sing, per3).
igi ~~>			@pn(nom, 		   sing, per3).
mas ~~>			@pn(dat, 		   sing, per3).
man ~~>			@pn(erg, 		   sing, per3).
misith ~~>		@pn(ins, 		   sing, per3).
misi ~~>		@pn(gen,  		   sing, per3).
misgan ~~>		@pn((abl2;abl1),   sing, per3).
masthan ~~>		@pn(com, 		   sing, per3).
%%% poss 3rd person singular pronouns
misi ~~>		(@pn((C,nom_c), sing, per3), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])).
mis ~~>			(@pn((C,dat_c), sing, per3), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])).
misma ~~>		(@pn((C,erg_c), sing, per3), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])).
%%% 3rd person plural
isini ~~>		@pn(nom, 		   plur, per3).
math ~~>		@pn((erg;dat), 	   plur, per3).
mathi ~~>		@pn(gen,  		   plur, per3).
mathgan ~~>		@pn((abl1;abl2),  plur, per3).
maththan ~~>	@pn(com, 		   plur, per3). 
%%% poss 3rd person plural pronouns
mathi ~~>		(@pn((C,nom_c), plur, per3), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])).
math ~~>		(@pn((C,dat_c), plur, per3), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])).
mathma ~~>		(@pn((C,erg_c), plur, per3), 
					cat:head:(poss_pn, 
							mod:[@noun_ss(mod_case(C),_,_,_)])).


%=========================================
%			ADJECTIVE LEXEMES
%=========================================
% phonology = nominativeForm_pluralStem
% big
didi_did ~~>		@lex_aa(decl_i).
% beautiful
lamazi_lamaz ~~>	@lex_aa(decl_i).
% tall
maghali_maghl ~~> 	@lex_aa(decl_i).
% red
tcitheli_tcithl ~~>	@lex_aa(decl_i).
% little, small
patara_patar ~~>	@lex_aa(decl_a).
% green
mtcvane_mtcvane ~~> @lex_aa(decl_e).
% young
axalgazrda_axalgazrd ~~>	@lex_aa(decl_a).
% liar
cru_cru	~~> 		@lex_aa(decl_ou).
% strange, stranger
ucxo_ucxo ~~> 		@lex_aa(decl_ou).
% plain, simple
ubralo_ubralo ~~> 	@lex_aa(decl_ou).
% short
mokle_mokle ~~>		@lex_aa(decl_ou).
% interesting
saintereso_saintereso ~~> @lex_aa(decl_ou).
% hard-working
bejithi_bejith 	~~> @lex_aa(decl_ou).



%=========================================
%				QUANTIFIERS
%=========================================

% all
yvela_yvela	~~> @lex_qq(decl_ou).
% some (~exists)
romelighaca_romelighaca ~~> @lex_qq(decl_a).
% some (several)
zogierthi_zogierth 	~~> @lex_qq(decl_i).

%==========================================
%==========================================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% verb lexemes %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Dynamic conjugation_1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%% NoPreverb and All tenses or Preverbs with Past and Future
%%%%% PastSuff = e_a, 3PlSuff = an_en, 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
icini_icinod_icin_icineb
~~>	@lexeme_verb(
				e_list, 
				e_list, e_list, 
				@dynamic(conj1, minus, @an_en, @e_a, _)).

icini_icinod_icin_icineb
~~> 	@lexeme_verb(
					[(a_ ga), (a_ cha)], 
					e_list, e_list,
					@dynamic(conj1, minus, @an_en, @e_a, (pst; fut))).
/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ighimi_ighimod_ighim_ighimeb
~~>		@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@dynamic(conj1, minus, @an_en, @e_a, _)).

ighimi_ighimod_ighim_ighimeb
~~> 	@lexeme_verb(
					[(a_ ga)], 
					e_list, e_list,
					@dynamic(conj1, minus, @an_en, @e_a, (pst; fut))).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
kivi_kiod_ikivl_ikivleb
~~> 		@lexeme_verb(
						(e_list; [(a_ ga)]), 
						e_list, e_list, 
						@dynamic(conj1, minus, @an_en, @e_a, _)).
*/

%%%%% All tenses woth or w/o Preverbs
%%%%% PastSuff = e_a, 3PlSuff = an_en,
%%%%%%%%%%%%%%%%%%%%%%%%%%%
rbi_rbod_irbin_irben
~~> 	@lexeme_verb(
					(e_list; 
					 [(a_ mi), (a_ mo), (a_ a), (a_ she), (a_ ga), (a_ cha), (a_ da), 
                      (a_ gada), (a_ gadmo), (a_ amo), (a_ gamo), (a_ chamo), (a_ shemo), (a_ mimo)]), 
					e_list, e_list, 
					@dynamic(conj1, minus, @an_en, @e_a, _)). %!!!!!! add ConstVal

%%%%% All tenses woth or w/o Preverbs, Being = plus;both
%%%%% PastSuff = e_a, 3PlSuff = an_en, 
%%%%%%%%%%%%%%%%%%%%%%%%%%%
dum_dumd_idum_idumeb
~~> 		@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@dynamic(conj1, plus, @an_en, @e_a, _)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bghavi_bghaod_ibghavl_ibghavleb
~~> 	@lexeme_verb(
					(e_list; [(a_ da)]), 
					e_list, e_list, 
					@dynamic(conj1, both, @an_en, @e_a ,_)).
/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
crui_cruobd_icru_icrueb
~~> 		@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@dynamic(conj1, minus, @an_en, @e_a, _)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%% !!!
tcux_tcuxd_itcux_itcuxeb
~~> 		@lexeme_verb(
					e_list, 
					e_list, 
					[@arg((loc;dat),_,_)], %!!! dat is used to infinitives 
					@dynamic(conj1, plus, @an_en, @e_a, _)).
*/
%%%%% All tenses woth or w/o Preverbs
%%%%% PastSuff = e_a, 3PlSuff = en_en,
/*%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cocxlob_cocxlobd_icocxl_icocxleb
~~>	@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@dynamic(conj1, minus, @en_en, @e_a, _)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
arsebob_arsebobd_iarseb_iarsebeb
~~> 	@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@dynamic(conj1, minus, @en_en, @e_a, _)).

%%%%%%%%%%%%%%%%%%%%%%
fren_frend_ifrin_ifren
~~> 		@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@dynamic(conj1, minus, @en_en, @e_a, _)).


cekvav_cekvavd_icekv_icekveb
~~> 	@lexeme_verb(
					e_list,
					e_list, e_list, 
					@dynamic(conj1, minus, @en_en, @e_a, _)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xmaurob_xmaurobd_ixmaur_ixmaureb
~~> 	@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@dynamic(conj1, minus, @en_en, @e_a, _)).
*/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
mushaob_mushaobd_imushav_imushaveb
~~> 	@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@dynamic(conj1, minus, @en_en, @e_a, _)).
/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
modzraob_modzraobd_imodzrav_imodzraveb
~~> 	@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@dynamic(conj1, minus, @en_en, @e_a, _)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
churchuleb_churchulebd_ichurchul_ichurchuleb
~~> @lexeme_verb(
				e_list, 
				e_list, e_list, 
				@dynamic(conj1, minus, @en_en, @e_a, _)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trialeb_trialebd_itrial_itrialeb
~~> 	@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@dynamic(conj1, minus, @en_en, @e_a, _)).
*/
%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
thamashob_tamashobd_itamash_itamasheb
~~> 	@lexeme_verb(
					e_list, 
					[@arg(_,_,_)], % !!!
					e_list, 
					@dynamic(conj1, minus, @en_en, @e_a, _)).

%ambobs ~~> @lexeme_verb(e_list, (a_ ambob), (a_ ambobd), (a_ thqv), (a_ ityvi), e_list, e_list, @dynamic(conj1, minus, @en_en, @e_a, _)).

%%%%% w/o preverbs -future, with preverbs past, future
%%%%% PastSuff = e_a, 3PlSuff = en_en, Ergativity
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tcer_tcerd_tcer_tcer
~~> 		@lexeme_verb(
						e_list, 
						[@arg(_,_,_)],
						e_list, 
						@dynamic(conj1, minus, @en_en, @e_a, (prs;psc;pst))).

tcer_tcerd_tcer_tcer
~~> 	@lexeme_verb(
					[(a_ da), (a_ ga), (a_ gamo), (a_ chamo)],
					[@arg(_,_,_)], 
					e_list, 
					@dynamic(conj1, minus, @en_en, @e_a, (pst; fut))).

tcer_tcerd_tcer_tcer
~~> 	@lexeme_verb(
					[(a_ cha)], 
					[@arg(_,_,_)], 
					[@arg(ine, num, per3)], 
					@dynamic(conj1, minus, @en_en, @e_a, (pst; fut))).

tcer_tcerd_tcer_tcer
~~> 	@lexeme_verb(
					[(a_ amo)], 
					[@arg(_,_,_)], 
					[@arg(abl1, num, per3)], 
					@dynamic(conj1, minus, @en_en, @e_a, (pst; fut))).

tcer_tcerd_tcer_tcer
~~> 	@lexeme_verb(
					[(a_ gada), (a_ gadmo)], 
					[@arg(_,_,_)], 
					[@arg((abl1;abl2), num, per3), @arg(ine, num, per3)], 
					@dynamic(conj1, minus, @en_en, @e_a, (pst; fut))).
/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
asheneb_ashenebd_ashen_asheneb
~~> 	@lexeme_verb(
					e_list, 
					[@arg(_,_,_)], 
					e_list, 
					@dynamic(conj1, minus, @en_en, @e_a, (prs;psc;pst))).

asheneb_ashenebd_ashen_asheneb
~~> 	@lexeme_verb(
					[(a_ a), (a_ ga), (a_ amo)], 
					[@arg(_,_,_)], 
					e_list, 
					@dynamic(conj1, minus, @en_en, @e_a, (pst; fut))).

asheneb_ashenebd_ashen_asheneb
~~> 	@lexeme_verb(
					[(a_ gada)], 
					[@arg(_,_,_)], 
					[@arg(abl1, num, per3)], 
					@dynamic(conj1, minus, @en_en, @e_a, (pst; fut))).

asheneb_ashenebd_ashen_asheneb
~~> 	@lexeme_verb(
					[(a_ mi), (a_ mo)], 
					[@arg(_,_,_)], 
					[@arg(dat, num, per3)], 
					@dynamic(conj1, minus, @en_en, @e_a, (pst; fut))).

asheneb_ashenebd_ashen_asheneb
~~> 	@lexeme_verb(
					[(a_ cha)], 
					[@arg(_,_,_)], 
					[@arg(ine, num, per3)], 
					@dynamic(conj1, minus, @en_en, @e_a, (pst; fut))).

asheneb_ashenebd_ashen_asheneb
~~> 	@lexeme_verb(
					[(a_ da)], 
					[@arg(_,_,_)], 
					[@arg((dat;loc), num, per3)], 
					@dynamic(conj1, minus, @en_en, @e_a, (pst; fut))).
*/

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Dynamic conjugation_2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

zrdi_zrdid_zard_zrdi
~~> 	@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@dynamic(conj2, minus, @an_an, @e_a, (prs;psc;pst))).

% [ga;agh] -mzrdis, -gzrdi, -zrdi
zrdi_zrdid_zard_zrdi
~~> 	@lexeme_verb(
					[(a_ ga), (a_ agh)], 
					e_list, e_list, 
					@dynamic(conj2, minus, @an_an, @e_a, (pst;fut))).

% michivis, gichivi, uchivi
ichivi_ichiod_ichivl_ichivleb
~~> 	@lexeme_verb(
					e_list, 
					e_list,  % !!! 
					e_list, 
					@dynamic(conj2, both, @an_en, @e_a, _)).

% da-mcinis, da-gcini, da-cini
cini_cinod_cin_cineb
~~> 	@lexeme_verb(
					[(a_ da)], 
					e_list, e_list, 
					@dynamic(conj2, minus, @an_en, @e_a, _)).
/*
% mchqmets, gchqmet, chqmet
chqmet_chqmetd_ichqmit_ichqmet
~~> 	@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@dynamic(conj2, minus, @en_en, @e_a, _)).

% matrialebs, gatrialeb, atrialeb
atrialeb_atrialebd_atrial_atrialeb
~~> 	@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@dynamic(conj2, minus, @en_en, @e_a, (prs;psc;pst))).

% [da] -matrialebs, -gatrialeb, -atrialeb
atrialeb_atrialebd_atrial_atrialeb
~~> 	@lexeme_verb(
					[(a_ da)], 
					e_list, e_list, 
					@dynamic(conj2, minus, @en_en, @e_a, (pst;fut))).

% mpatronobs, gpatronob, patronob
patronob_patronobd_ipatron_ipatroneb
~~> 	@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@dynamic(conj2, minus, @en_en, @e_a, _)).

% mamodzravebs, gamodzraveb, amodzraveb
amodzraveb_amodzravebd_amodzrav_amodzraveb
~~> 	@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@dynamic(conj2, minus, @en_en, @e_a, (prs;psc;pst))).

% [ga, a] -mamodzravebs, -gamodzraveb, -amodzraveb
amodzraveb_amodzravebd_amodzrav_amodzraveb
~~> 	@lexeme_verb(
					[(a_ a), (a_ ga)], 
					e_list, e_list, 
					@dynamic(conj2, minus, @en_en, @e_a, (pst;fut))).
*/

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Static conjugation_1 !!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

imaleb_imalebod_imal_imaleb
~~>		@lexeme_verb(
				   e_list,
				   e_list, e_list,
				   @static(conj1, @e_a, (prs;psc;pst))).

imaleb_imalebod_imal_imaleb
~~>		@lexeme_verb(
				   [(a_ da), (a_ mi), (a_ gada)],
				   e_list, e_list,
				   @static(conj1, @e_a, (pst;fut))).

imaleb_imalebod_imal_imaleb
~~>		@lexeme_verb(
				   [(a_ cha)],
				   e_list, [@arg(ine,_,_)],
				   @static(conj1, @e_a, (pst;fut))).


%%%%%%%%%%%%%%%%%%%%
tcvdeb_tcvdebod_tcvd_tcvdeb
~~>		@lexeme_verb(
				   e_list, 
				   e_list, e_list,
				   @static(conj2, @i_a, (prs;psc;pst))).

tcvdeb_tcvdebod_tcvd_tcvdeb
~~>		@lexeme_verb(
				   [(a_ mi), (a_ mo), (a_ cha), (a_ gada), (a_ gadmo), (a_ she), (a_ tca)],
				   e_list, e_list,
				   @static(conj2, @i_a, (pst;fut))).

%%%%%%%%%%%%%%%%%%%%%%%
endob_endobod_end_endob
~~>		@lexeme_verb(
				   e_list, 
				   e_list, e_list,
				   @static(conj2, @e_o, (prs;psc;pst))).

endob_endobod_end_endob
~~>		@lexeme_verb(
				   [(a_ mi), (a_ mo), (a_ ga)], 
				   e_list, e_list,
				   @static(conj2, @e_o, (pst; fut))).

%%%%%%%%%%%%%%%%%%%%%%%
ibrazdeb_ibrazdebod_ibrazd_ibrazdeb
~~>		@lexeme_verb(
				   e_list, 
				   e_list, e_list,
				   @static(conj2, @e_o, (prs;psc))).

ibrazdeb_ibrazdebod_ibrazd_ibrazdeb
~~>		@lexeme_verb(
				   [(a_ ga)], 
				   e_list, e_list,
				   @static(conj2, @e_o, (pst;fut))).

/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Stative conjugation_1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% umdzims
imdzims_imdzimda_emdzima_emdzimeba
~~> 	@lexeme_verb(
					e_list, 
					e_list, [@arg(nom, num, per3)], 
					@stat_conj1_0(_)).

% she-udzlia
idzlia_empty_edzlo_edzleba
~~> 	@lexeme_verb(
					[(a_ she)], 
					e_list, [@arg(nom, num, per3)], 
					@stat_conj1_0_pr_ps_ft).

% uxaria
ixaria_ixaroda_exarda_exardeba
~~> 	@lexeme_verb(
					e_list, 
					e_list, [@arg(nom, num, per3)], 
					@stat_conj1_0((prs;psc))).

% [ga]-uxarda
ixaria_ixaroda_exarda_exardeba
~~> 	@lexeme_verb(
					[(a_ ga)], 
					e_list,	[@arg(nom, num, per3)], 
					@stat_conj1_ps_ft).

% marthebs !!! misi is?
marthebs_marthebda_emartha_emartheba
~~> 	@lexeme_verb(
					e_list, 
					e_list, [@arg(nom, num, per3)], 
					@stat_conj1_0(_)).

% hghvidzavs
ghvidzavs_ghvidzavda_eghvidza_eghvidzeba
~~> 	@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@stat_conj1_h(_)).

% [ga]eghvidza
ghvidzavs_ghvidzavda_eghvidza_eghvidzeba
~~> 	@lexeme_verb(
					[(a_ ga)], 
					e_list, e_list, 
					@stat_conj1_ps_ft).

% hshia
shia_shioda_shivda_shivdeba
~~> 	@lexeme_verb(
					e_list,
					e_list, e_list, 
					@stat_conj1_h((prs;psc))).

% [mo]-hshia
shia_shioda_shivda_shivdeba
~~> 	@lexeme_verb(
					[(a_ mo)],
					e_list, e_list, 
					@stat_conj1_ps_ft).

% stcyins
tcyins_tcyinda_etcyina_etcyineba
~~> 	@lexeme_verb(
					e_list,
					e_list, [@arg(nom, num, per3)], 
					@stat_conj1_s(_)).

% sdzinavs
dzinavs_dzinavda_edzina_edzineba
~~> 	@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@stat_conj1_s(_)).

% acxia
acxia_empty_ecxo_ecxeba
~~> 	@lexeme_verb(
					e_list,
					e_list, [@arg(nom, num, per3)], 
					@stat_conj1_0_pr_ps_ft).

% [mo, mi,da] acxia
acxia_empty_ecxo_ecxeba
~~> 	@lexeme_verb(
					[(a_ mo), (a_ mi), (a_ da)], 
					e_list, [@arg(nom, num, per3)], %!!! locative?
					@stat_conj1_ps_ft).

% [0, mo, shemo]-esmis
esmis_esmoda_esma_esmeba
~~> 	@lexeme_verb(
					(e_list;[(a_ mo), (a_ shemo)]), 
					e_list, [@arg(nom, num, per3)], 
					@stat_conj1_0(_)).

% cha-esmis
esmis_esmoda_esma_esmeba
~~> 	@lexeme_verb(
					[(a_ cha)], 
					e_list, [@arg(nom, num, per3), @arg(loc, num, per3)], 
					@stat_conj1_0(_)).

% chamo-esmis
esmis_esmoda_esma_esmeba
~~> 	@lexeme_verb(
					[(a_ chamo)], 
					e_list, [@arg(nom, num, per3), @arg(abl1, num, per3)], 
					@stat_conj1_0(_)).
*/

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Stative conjugation_1 !!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% m-shia
shia_shioda_empty_eshieba
~~> 	@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@stative(conj1, minus,_,(prs;psc;fut))).

% mo-mtcons
tcons_tconda_etcona_etconeba
~~> 	@lexeme_verb(
					[(a_ mo)], 
					e_list, e_list, 
					@stative(conj2, plus, @e, _)).

% m-iyvars
iyvars_iyvarda_empty_eyvareba
~~> 	@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@stative(conj2, plus,_,(prs;psc;fut))).

% mo-m-enatra
enatreba_enatreboda_enatra_enatreba
~~> 	@lexeme_verb(
					[(a_ mo)], 
					e_list, e_list, 
					@stative(conj2, minus, @e, (pst;fut))).

% m-enatreba
enatreba_enatreboda_enatra_enatreba
~~> 	@lexeme_verb(
					e_list, 
					e_list, e_list, 
					@stative(conj2, minus,_,(prs;psc))).

% m-eshinia
eshinia_eshinoda_eshinda_eshindeba
~~> 	@lexeme_verb(
					e_list, 
					e_list, [@arg(gen,_,_)], 
					@stative(conj1, minus,_,(prs;psc))).

% she-m-eshinda
eshinia_eshinoda_eshinda_eshindeba
~~> 	@lexeme_verb(
					[(a_ she)], 
					e_list, [@arg(gen,_,_)], 
					@stative(conj1, minus,_,(pst;fut))).


