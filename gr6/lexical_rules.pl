%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Lexical Rules %%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%####################################################################
%        Lexical Rules For Nominals (Noun, Adjective)
%####################################################################

%========================================
%    Noun Lexeme Pluralization
%========================================
% noun lexeme ---> noun plural lexeme
%----------------------------------------
pluralization  ##

	(L, (@lex_n(Par, plus, Compl)))
**>
	(@lex_n(decl_i, both, Compl), init:L)

if 	(Par=(decl_i;decl_a) -> (a_ Para)=(a_ ai); (a_ Para)=(a_ eou))

morphs

(_,'_',NonFullSt) 	becomes	(NonFullSt,eb,'_',NonFullSt,eb)	when (Para = ai),
(FullSt,'_',_) 		becomes (FullSt,eb,'_',FullSt,eb)		when (Para = eou).

%========================================
%      Noun Declension in Logical Cases
%======================================== 
% noun lexeme ---> 14 word forms marked by logical cases 
%----------------------------------------
logic_decl  ##

	(L, @lex_n(Par, Pl, Compl))
**>
    (@noun(Case, Num, Compl), lex:L)

if 	isLogCase(Case, a_ C),
   	isParadigm(Par, a_ P),
   	(Pl=(plus;minus) -> Num=sing; Num=plur)

morphs

(FullSt,'_',_) 		becomes (FullSt,i)       	when (C = nom, P = decl_i),
(FullSt,'_',_) 		becomes (FullSt)         	when (C = nom),

(FullSt,'_',_) 		becomes (FullSt,ma)      	when (C = erg, P = decl_i),
(FullSt,'_',_) 		becomes (FullSt,m)       	when (C = erg),

(FullSt,'_',_) 		becomes (FullSt,s)       	when (C = dat),

(FullSt,'_',_) 		becomes (FullSt,shi)     	when (C = ine),

(FullSt,'_',_) 		becomes (FullSt,ze)      	when (C = loc),

(FullSt,'_',_) 		becomes (FullSt,than)    	when (C = com, P = decl_i),
(FullSt,'_',_) 		becomes (FullSt,sthan)   	when (C = com),

(_,'_',NonFullSt) 	becomes (NonFullSt,ad)   	when (C = adv, (P = decl_i; P = decl_a)),
(FullSt,'_',_) 		becomes (FullSt,d)       	when (C = adv),

(_,'_',NonFullSt) 	becomes (NonFullSt,amde) 	when (C = ter, (P = decl_i; P = decl_a)),
(FullSt,'_',_) 		becomes (FullSt,mde)     	when (C = ter),

(FullSt,'_',_) 		becomes (FullSt,thi)     	when (C = ins, P = decl_ou),
(_,'_',NonFullSt) 	becomes (NonFullSt,ith)  	when (C = ins),

(FullSt,'_',_) 		becomes (FullSt,si)      	when (C = gen, P = decl_ou),
(_,'_',NonFullSt) 	becomes (NonFullSt,is)   	when (C = gen),

(FullSt,'_',_) 		becomes (FullSt,sken)    	when (C = ori, P = decl_ou),
(_,'_',NonFullSt) 	becomes (NonFullSt,isken)	when (C = ori),

(FullSt,'_',_) 		becomes (FullSt,dan)     	when (C = abl1, P = decl_ou),
(_,'_',NonFullSt) 	becomes (NonFullSt,idan) 	when (C = abl1),

(FullSt,'_',_) 		becomes (FullSt,sgan)    	when (C = abl2, P = decl_ou),
(_,'_',NonFullSt) 	becomes (NonFullSt,isgan)	when (C = abl2),

(FullSt,'_',_) 		becomes (FullSt,sthvis)  	when (C = ben, P = decl_ou),
(_,'_',NonFullSt) 	becomes (NonFullSt,isthvis) when (C = ben).

%========================================
%    Marking Noun by Possessive Case
%========================================
% noun word form ---> the same noun marked with possessive case
%----------------------------------------
poss_decl  ##

	(L, @lex_n(Par, Pl, Compl))
**>
	(@noun(cnst, Num, Compl), cat:head:mod:[head:noun], lex:L)

if	isParadigm(Par, a_ P),
	(Pl=(plus;minus) -> Num=sing; Num=plur)	

morphs

(FullSt,'_',_) 		becomes (FullSt,s)      	when (P = decl_ou),
(_,'_',NonFullSt) 	becomes (NonFullSt,is).

%========================================
%  Adjective/Quantifier Declension in Logical Cases
%========================================
%  adjective/quantifier lexeme ---> 3/1 word forms marked by logical cases
%----------------------------------------
adjunct_decl  ##

	(L, (adj_lex;qnt_lex))
**>
	(Adjunct, lex:L)

if (L=adj_lex -> Adjunct=(@adj(Case)); Adjunct=(@qnt(Case))),  
   ((Case=erg_c), (a_ C)=(a_ erg_c); 
   	(Case=dat_c), (a_ C)=(a_ dat_c);
   	(Case=nom_c), (a_ C)=(a_ nom_c);
   	(Case=cnst),  (a_ C)=(a_ cnst))

morphs

(Stem,i,'_',_)		becomes	(Stem,ma)	when (C=erg_c),
(Stem,i,'_',_)		becomes	(Stem)		when (C=dat_c),
(Stem,i,'_',_)		becomes (Stem,i)	when (C=nom_c),
(Stem,[A],'_',_)	becomes (Stem,A)	when (C=cnst, A\=i).

%========================================
%  Normalization of Adjective/Qiantifier Lexeme
%========================================
% adj_lexeme/qnt_lexeme ---> noun_lexeme
%----------------------------------------
normalizarion  ##

	(L, (@lex_a(Decl);@lex_q(Decl)) )
**>
	(@lex_n(Decl,Plural,e_list), init:L)

if 	(L=adj_lex -> Plural=plus; Plural=minus)

morphs

(Stem,i,'_',PlStem)		becomes	(Stem,'_',PlStem),
(Stem,'_',PlStem)		becomes	(Stem,'_',PlStem).


%####################################################################
%        Lexical Rules For Verbs (Class-1, Class-2, Class-3) 
%####################################################################

%========================================
% Conjugation of verbs of CLASS-1 in PRESENT 
%========================================
% verb_lexeme ---> all conj1 and conj2 
%----------------------------------------
/*
conj_pr_dynamic  ##

    (L, @lexeme_verb(PV_list, NonConstVal, ConstVal, (@dynamic(ConjNum, Being, (hd:(a_ Suff)), _, present))))
**>
    @verb(ConjSt, NonConjSt, (present, preverb:Preverb))

if % setting the case of the element of NonConstVal and defining NonConjSt
   ( NonConstVal=(hd:NonConstArg) -> NonConjSt=[(NonConstArg, pos:case:dat)|ConstVal]; NonConjSt=ConstVal), 
   % generating possible pairs of Persons and Numbers depending on the conjugation number
   ( (ConjNum=conj1, (a_ Conj)=(a_ conj1), ConjSt=[@arg(nom, Num1, Per1)], isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)));
     (ConjNum=conj2, (a_ Conj)=(a_ conj2), ConjSt=[@arg(nom, Num1, Per1), @arg(dat, Num2, Per2)],    
       ( ( isPer3(Per2,(a_ P2)), isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)) );    
         ( isPer2(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per2), isNum(Num1,(a_ N1)), (Num1=sing -> isNum(Num2,(a_ N2)); true) );
         ( isPer1(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per1), isNum(Num1,(a_ N1)), isNum(Num2,(a_ N2)) ) ) ) ),
   % using preverbs one by one if they exist
   ( PV_list=e_list -> ((a_ PV)=(a_ []), Preverb=e_list); (memberof((a_ PV), PV_list), Preverb = [(a_ PV)]) ), 
   % treating the property being 
   ( ( Being=both, (Per1=(per1;per2) -> (a_ Be)=((a_ plus);(a_ minus)); (a_ Be)=(a_ both)) );
     ( isPlus(Being,(a_ Be)) );
     ( isMinus(Being,(a_ Be)) ) ) 
   
morphs
% perX to per3
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes (PV,v,Z,Y,PrSt,var)		when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=sing, P1=per1, Be=plus),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes   (PV,Z,PrSt,xar)			when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=sing, P1=per2, Be=plus),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes (PV,v,Z,Y,PrSt)			when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=sing, P1=per1, Be=minus),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes   (PV,Z,PrSt)				when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=sing, P1=per2, Be=minus),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes   (PV,Z,PrSt,s)			when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=sing, P1=per3),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes (PV,v,Z,Y,PrSt,var,th)	when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=plur, P1=per1, Be=plus),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes   (PV,Z,PrSt,xar,th)  	when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=plur, P1=per2, Be=plus),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes (PV,v,Z,Y,PrSt,th)		when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=plur, P1=per1, Be=minus),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes   (PV,Z,PrSt,th)			when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=plur, P1=per2, Be=minus),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes   (PV,Z,PrSt,Suff)		when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=plur, P1=per3),
% perX to per2
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,var)	 	when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per1, Be=plus),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,var,th)  when (Conj=conj2, P2=per2,                   P1=per1, Be=plus),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt)		 	when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per1, Be=minus),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,th)	  	when (Conj=conj2, P2=per2,                   P1=per1, Be=minus),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,s)       when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per3),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,th)      when (Conj=conj2, P2=per2, N2=plur, N1=sing, P1=per3),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,Suff)    when (Conj=conj2, P2=per2,          N1=plur, P1=per3),
% perX to per1
(PrSt,'_',_,'_',_,'_',_) becomes  (PV,m,PrSt,xar)	when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per2, Be=plus),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,gv,PrSt,xar)	when (Conj=conj2, P2=per1, N2=plur, N1=sing, P1=per2, Be=plus),
(PrSt,'_',_,'_',_,'_',_) becomes  (PV,m,PrSt)		when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per2, Be=minus),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,gv,PrSt)		when (Conj=conj2, P2=per1, N2=plur, N1=sing, P1=per2, Be=minus),
(PrSt,'_',_,'_',_,'_',_) becomes  (PV,m,PrSt,s)	  	when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per3),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,gv,PrSt,s)	  	when (Conj=conj2, P2=per1, N2=plur, N1=sing, P1=per3),
(PrSt,'_',_,'_',_,'_',_) becomes  (PV,m,PrSt,xar,th) when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per2, Be=plus),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,gv,PrSt,xar,th) when (Conj=conj2, P2=per1, N2=plur, N1=plur, P1=per2, Be=plus),
(PrSt,'_',_,'_',_,'_',_) becomes  (PV,m,PrSt,th)     when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per2, Be=minus),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,gv,PrSt,th)     when (Conj=conj2, P2=per1, N2=plur, N1=plur, P1=per2, Be=minus),
(PrSt,'_',_,'_',_,'_',_) becomes  (PV,m,PrSt,Suff)	when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per3),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,gv,PrSt,Suff)	when (Conj=conj2, P2=per1, N2=plur, N1=plur, P1=per3).
*/


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% VERB CONJUGATION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%% PRESENT for DYNAMIC 1,2 %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

conj_pr_dynamic  ##

    (L, @lexeme_verb(PV_list, NonConstVal, ConstVal, (@dynamic(ConjNum, Being, (hd:(a_ Suff)), _, prs))))
**>
    @verb(ConjSt, NonConjSt, (prs, preverb:Preverb))

if % setting the case of the element of NonConstVal and defining NonConjSt
   ( NonConstVal=(hd:NonConstArg) -> NonConjSt=[(NonConstArg, head:case:dat)|ConstVal]; NonConjSt=ConstVal), 
   % generating possible pairs of Persons and Numbers depending on the conjugation number
   ( (ConjNum=conj1, (a_ Conj)=(a_ conj1), ConjSt=[@arg(nom, Num1, Per1)], isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)));
     (ConjNum=conj2, (a_ Conj)=(a_ conj2), ConjSt=[@arg(nom, Num1, Per1), @arg(dat, Num2, Per2)],    
       ( ( isPer3(Per2,(a_ P2)), isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)) );    
         ( isPer2(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per2), isNum(Num1,(a_ N1)), (Num1=sing -> isNum(Num2,(a_ N2)); true) );
         ( isPer1(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per1), isNum(Num1,(a_ N1)), isNum(Num2,(a_ N2)) ) ) ) ),
   % using preverbs one by one if they exist
   ( PV_list=e_list -> ((a_ PV)=(a_ []), Preverb=e_list); (memberof((a_ PV), PV_list), Preverb = [(a_ PV)]) ), 
   % treating the property being 
   ( ( Being=both, (Per1=(per1;per2) -> (a_ Be)=((a_ plus);(a_ minus)); (a_ Be)=(a_ both)) );
     ( isPlus(Being,(a_ Be)) );
     ( isMinus(Being,(a_ Be)) ) ) 
   
morphs
% perX to per3
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes (PV,v,Z,Y,PrSt,var)		when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=sing, P1=per1, Be=plus),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes   (PV,Z,PrSt,xar)			when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=sing, P1=per2, Be=plus),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes (PV,v,Z,Y,PrSt)			when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=sing, P1=per1, Be=minus),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes   (PV,Z,PrSt)				when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=sing, P1=per2, Be=minus),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes   (PV,Z,PrSt,s)			when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=sing, P1=per3),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes (PV,v,Z,Y,PrSt,var,th)	when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=plur, P1=per1, Be=plus),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes   (PV,Z,PrSt,xar,th)  	when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=plur, P1=per2, Be=plus),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes (PV,v,Z,Y,PrSt,th)		when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=plur, P1=per1, Be=minus),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes   (PV,Z,PrSt,th)			when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=plur, P1=per2, Be=minus),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes   (PV,Z,PrSt,Suff)		when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=plur, P1=per3),
% perX to per2
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,var)	 	when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per1, Be=plus),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,var,th)  when (Conj=conj2, P2=per2,                   P1=per1, Be=plus),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt)		 	when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per1, Be=minus),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,th)	  	when (Conj=conj2, P2=per2,                   P1=per1, Be=minus),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,s)       when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per3),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,th)      when (Conj=conj2, P2=per2, N2=plur, N1=sing, P1=per3),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,Suff)    when (Conj=conj2, P2=per2,          N1=plur, P1=per3),
% perX to per1
(PrSt,'_',_,'_',_,'_',_) becomes  (PV,m,PrSt,xar)	when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per2, Be=plus),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,gv,PrSt,xar)	when (Conj=conj2, P2=per1, N2=plur, N1=sing, P1=per2, Be=plus),
(PrSt,'_',_,'_',_,'_',_) becomes  (PV,m,PrSt)		when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per2, Be=minus),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,gv,PrSt)		when (Conj=conj2, P2=per1, N2=plur, N1=sing, P1=per2, Be=minus),
(PrSt,'_',_,'_',_,'_',_) becomes  (PV,m,PrSt,s)	  	when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per3),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,gv,PrSt,s)	  	when (Conj=conj2, P2=per1, N2=plur, N1=sing, P1=per3),
(PrSt,'_',_,'_',_,'_',_) becomes  (PV,m,PrSt,xar,th) when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per2, Be=plus),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,gv,PrSt,xar,th) when (Conj=conj2, P2=per1, N2=plur, N1=plur, P1=per2, Be=plus),
(PrSt,'_',_,'_',_,'_',_) becomes  (PV,m,PrSt,th)     when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per2, Be=minus),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,gv,PrSt,th)     when (Conj=conj2, P2=per1, N2=plur, N1=plur, P1=per2, Be=minus),
(PrSt,'_',_,'_',_,'_',_) becomes  (PV,m,PrSt,Suff)	when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per3),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,gv,PrSt,Suff)	when (Conj=conj2, P2=per1, N2=plur, N1=plur, P1=per3).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%% PAST CONTINUES for DYNAMIC, STATIC 1,2 %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

conj_pscn_dynamic_static  ##

    (L, @lexeme_verb(PV_list, NonConstVal, ConstVal,
                     (@dynamic(ConjNum, _, _, _, psc);
					  @static(ConjNum, _, psc))))
**>
    @verb(ConjSt, NonConjSt, (psc, preverb:Preverb))

if % setting the case of the element of NonConstVal and defining NonConjSt
   ( NonConstVal=(hd:NonConstArg) -> NonConjSt=[(NonConstArg, head:case:dat)|ConstVal]; NonConjSt=ConstVal ), 
   % generating possible pairs of Persons and Numbers depending on the conjugation number
   ( (ConjNum=conj1, (a_ Conj)=(a_ conj1), ConjSt=[@arg(nom,Num1,Per1)], isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)));
     (ConjNum=conj2, (a_ Conj)=(a_ conj2), ConjSt=[@arg(nom,Num1,Per1), @arg(dat,Num2,Per2)],    
       ( ( isPer3(Per2,(a_ P2)), isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)) );    
         ( isPer2(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per2), isNum(Num1,(a_ N1)), (Num1=sing -> isNum(Num2,(a_ N2)); true) );
         ( isPer1(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per1), isNum(Num1,(a_ N1)), isNum(Num2,(a_ N2)) ) ) ) ),
   % using preverbs one by one if they exist
   ( PV_list=e_list -> ((a_ PV)=(a_ []), Preverb=e_list); (memberof((a_ PV), PV_list), Preverb = [(a_ PV)]) )
   % property being is not applicable here 
   
morphs
% perX to per3
(_,'_',[X,Y],PsCnSt,'_',_,'_',_) becomes (PV,v,Z,Y,PsCnSt,i)    	when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=sing, P1=per1),
(_,'_',[X,Y],PsCnSt,'_',_,'_',_) becomes   (PV,Z,PsCnSt,i)    	when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=sing, P1=per2),
(_,'_',[X,Y],PsCnSt,'_',_,'_',_) becomes   (PV,Z,PsCnSt,a)    	when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=sing, P1=per3),
(_,'_',[X,Y],PsCnSt,'_',_,'_',_) becomes (PV,v,Z,Y,PsCnSt,i,th) 	when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=plur, P1=per1),
(_,'_',[X,Y],PsCnSt,'_',_,'_',_) becomes   (PV,Z,PsCnSt,i,th) 	when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=plur, P1=per2),
(_,'_',[X,Y],PsCnSt,'_',_,'_',_) becomes   (PV,Z,PsCnSt,nen)  	when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=plur, P1=per3),
% perX to per2
(_,'_',PsCnSt,'_',_,'_',_) becomes (PV,g,PsCnSt,i)	 	when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per1),
(_,'_',PsCnSt,'_',_,'_',_) becomes (PV,g,PsCnSt,i,th) 	when (Conj=conj2, P2=per2,                   P1=per1),
(_,'_',PsCnSt,'_',_,'_',_) becomes (PV,g,PsCnSt,a)    	when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per3),
(_,'_',PsCnSt,'_',_,'_',_) becomes (PV,g,PsCnSt,a,th) 	when (Conj=conj2, P2=per2, N2=plur, N1=sing, P1=per3),
(_,'_',PsCnSt,'_',_,'_',_) becomes (PV,g,PsCnSt,nen)  	when (Conj=conj2, P2=per2,          N1=plur, P1=per3),
% perX to per1
(_,'_',PsCnSt,'_',_,'_',_) becomes  (PV,m,PsCnSt,i)	  	when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per2),
(_,'_',PsCnSt,'_',_,'_',_) becomes (PV,gv,PsCnSt,i)	  	when (Conj=conj2, P2=per1, N2=plur, N1=sing, P1=per2),
(_,'_',PsCnSt,'_',_,'_',_) becomes  (PV,m,PsCnSt,a)	  	when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per3),
(_,'_',PsCnSt,'_',_,'_',_) becomes (PV,gv,PsCnSt,a)	  	when (Conj=conj2, P2=per1, N2=plur, N1=sing, P1=per3),
(_,'_',PsCnSt,'_',_,'_',_) becomes  (PV,m,PsCnSt,i,th) 	when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per2),
(_,'_',PsCnSt,'_',_,'_',_) becomes (PV,gv,PsCnSt,i,th) 	when (Conj=conj2, P2=per1, N2=plur, N1=plur, P1=per2),
(_,'_',PsCnSt,'_',_,'_',_) becomes  (PV,m,PsCnSt,nen)  	when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per3),
(_,'_',PsCnSt,'_',_,'_',_) becomes (PV,gv,PsCnSt,nen) 	when (Conj=conj2, P2=per1, N2=plur, N1=plur, P1=per3).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% PAST for DYNAMIC, STATIC 1,2 %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

conj_ps_dynamic_static  ##

    (L, @lexeme_verb(PV_list, NonConstVal, ConstVal,
                    (C,(@dynamic(ConjNum,_,_,[(a_ Sf12),(a_ Sf3)], pst);
					    @static(ConjNum, [(a_ Sf12), (a_ Sf3)], pst)))))
**>
    @verb(ConjSt, NonConjSt, (pst, preverb:Preverb))

if % settng sufix for plural per3
   ( C=dynamic -> ((a_ Sf3pl)=(a_ es), Case1=erg, Case2=nom); ((a_ Sf3pl)=(a_ nen), Case1=nom, Case2=dat) ),
   % setting the case of the element of NonConstVal and defining NonConjSt
   ( NonConstVal=(hd:NonConstArg) -> NonConjSt=[(NonConstArg, head:case:nom)|ConstVal]; NonConjSt=ConstVal ), 
   % generating possible pairs of Persons and Numbers depending on the conjugation number
   % Also treating the ergative-nominative cases depending on the NonConstVal 
   ( (ConjNum=conj1, (a_ Conj)=(a_ conj1), ConjSt=[@arg(Case1,Num1,Per1)], isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)));
     (ConjNum=conj2, (a_ Conj)=(a_ conj2), ConjSt=[@arg(Case1,Num1,Per1), @arg(Case2,Num2,Per2)],     
       ( ( isPer3(Per2,(a_ P2)), isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)) );    
         ( isPer2(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per2), isNum(Num1,(a_ N1)), (Num1=sing -> isNum(Num2,(a_ N2)); true) );
         ( isPer1(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per1), isNum(Num1,(a_ N1)), isNum(Num2,(a_ N2)) ) ) ) ),
   % using preverbs one by one if they exist
   ( PV_list=e_list -> ((a_ PV)=(a_ []), Preverb=e_list); (memberof((a_ PV), PV_list), Preverb = [(a_ PV)]) )

morphs
% perX to per3
(_,'_',_,'_',[X,Y],PsSt,'_',_) becomes (PV,v,Z,Y,PsSt,Sf12)    	when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=sing, P1=per1),
(_,'_',_,'_',[X,Y],PsSt,'_',_) becomes   (PV,Z,PsSt,Sf12)    	when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=sing, P1=per2),
(_,'_',_,'_',[X,Y],PsSt,'_',_) becomes   (PV,Z,PsSt,Sf3)     	when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=sing, P1=per3),
(_,'_',_,'_',[X,Y],PsSt,'_',_) becomes (PV,v,Z,Y,PsSt,Sf12,th)	when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=plur, P1=per1),
(_,'_',_,'_',[X,Y],PsSt,'_',_) becomes   (PV,Z,PsSt,Sf12,th) 	when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=plur, P1=per2),
(_,'_',_,'_',[X,Y],PsSt,'_',_) becomes   (PV,Z,PsSt,Sf3pl)  	  	when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=plur, P1=per3),
% perX to per2
(_,'_',_,'_',PsSt,'_',_) becomes (PV,g,PsSt,Sf12)	when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per1),
(_,'_',_,'_',PsSt,'_',_) becomes (PV,g,PsSt,Sf12,th) when (Conj=conj2, P2=per2,                       P1=per1),
(_,'_',_,'_',PsSt,'_',_) becomes (PV,g,PsSt,Sf3)    	when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per3),
(_,'_',_,'_',PsSt,'_',_) becomes (PV,g,PsSt,Sf3,th) 	when (Conj=conj2, P2=per2, N2=plur, N1=sing, P1=per3),
(_,'_',_,'_',PsSt,'_',_) becomes (PV,g,PsSt,Sf3pl)	when (Conj=conj2, P2=per2,            N1=plur, P1=per3),
% perX to per1
(_,'_',_,'_',PsSt,'_',_) becomes  (PV,m,PsSt,Sf12)		when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per2),
(_,'_',_,'_',PsSt,'_',_) becomes (PV,gv,PsSt,Sf12)		when (Conj=conj2, P2=per1, N2=plur, N1=sing, P1=per2),
(_,'_',_,'_',PsSt,'_',_) becomes  (PV,m,PsSt,Sf3)	  	when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per3),
(_,'_',_,'_',PsSt,'_',_) becomes (PV,gv,PsSt,Sf3)	  	when (Conj=conj2, P2=per1, N2=plur, N1=sing, P1=per3),
(_,'_',_,'_',PsSt,'_',_) becomes  (PV,m,PsSt,Sf12,th) 	when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per2),
(_,'_',_,'_',PsSt,'_',_) becomes (PV,gv,PsSt,Sf12,th)	when (Conj=conj2, P2=per1, N2=plur, N1=plur, P1=per2),
(_,'_',_,'_',PsSt,'_',_) becomes  (PV,m,PsSt,Sf3pl)	  	when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per3),
(_,'_',_,'_',PsSt,'_',_) becomes (PV,gv,PsSt,Sf3pl)	  	when (Conj=conj2, P2=per1, N2=plur, N1=plur, P1=per3).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% FUTURE for DYNAMIC 1,2 %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

conj_ft_dynamic  ##

    (L, @lexeme_verb(PV_list, NonConstVal, ConstVal, (@dynamic(ConjNum, _, (tl:hd:(a_ Suff)), _, fut))))
**>
    @verb(ConjSt, NonConjSt, (fut, preverb:Preverb))

if % setting the case of the element of NonConstVal and defining NonConjSt
   ( NonConstVal=(hd:NonConstArg) -> NonConjSt=[(NonConstArg, head:case:dat)|ConstVal]; NonConjSt=ConstVal ), 
   % generating possible pairs of Persons and Numbers depending on the conjugation number
   ( (ConjNum=conj1, (a_ Conj)=(a_ conj1), ConjSt=[@arg(nom,Num1,Per1)], isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)));
     (ConjNum=conj2, (a_ Conj)=(a_ conj2), ConjSt=[@arg(nom,Num1,Per1), @arg(dat,Num2,Per2)],    
       ( ( isPer3(Per2,(a_ P2)), isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)) );    
         ( isPer2(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per2), isNum(Num1,(a_ N1)), (Num1=sing -> isNum(Num2,(a_ N2)); true) );
         ( isPer1(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per1), isNum(Num1,(a_ N1)), isNum(Num2,(a_ N2)) ) ) ) ),
   % using preverbs one by one if they exist
   ( PV_list=e_list -> ((a_ PV)=(a_ []), Preverb=e_list); (memberof((a_ PV), PV_list), Preverb = [(a_ PV)]) )
   
morphs
% perX to per3
(_,'_',_,'_',_,'_',[X,Y],FtSt) becomes (PV,v,Z,Y,FtSt)    	when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=sing, P1=per1),
(_,'_',_,'_',_,'_',[X,Y],FtSt) becomes   (PV,Z,FtSt)    		when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=sing, P1=per2),
(_,'_',_,'_',_,'_',[X,Y],FtSt) becomes   (PV,Z,FtSt,s)  		when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=sing, P1=per3),
(_,'_',_,'_',_,'_',[X,Y],FtSt) becomes (PV,v,Z,Y,FtSt,th) 	when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=plur, P1=per1),
(_,'_',_,'_',_,'_',[X,Y],FtSt) becomes   (PV,Z,FtSt,th)		when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=plur, P1=per2),
(_,'_',_,'_',_,'_',[X,Y],FtSt) becomes   (PV,Z,FtSt,Suff)	when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=plur, P1=per3),
% perX to per2
(_,'_',_,'_',_,'_',FtSt) becomes (PV,g,FtSt)			when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per1),
(_,'_',_,'_',_,'_',FtSt) becomes (PV,g,FtSt,th) 		when (Conj=conj2, P2=per2,                       P1=per1),
(_,'_',_,'_',_,'_',FtSt) becomes (PV,g,FtSt,s)  		when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per3),
(_,'_',_,'_',_,'_',FtSt) becomes (PV,g,FtSt,th) 		when (Conj=conj2, P2=per2, N2=plur, N1=sing, P1=per3),
(_,'_',_,'_',_,'_',FtSt) becomes (PV,g,FtSt,Suff)	when (Conj=conj2, P2=per2,            N1=plur, P1=per3),
% perX to per1
(_,'_',_,'_',_,'_',FtSt) becomes  (PV,m,FtSt)		when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per2),
(_,'_',_,'_',_,'_',FtSt) becomes (PV,gv,FtSt)		when (Conj=conj2, P2=per1, N2=plur, N1=sing, P1=per2),
(_,'_',_,'_',_,'_',FtSt) becomes  (PV,m,FtSt,s)		when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per3),
(_,'_',_,'_',_,'_',FtSt) becomes (PV,gv,FtSt,s)		when (Conj=conj2, P2=per1, N2=plur, N1=sing, P1=per3),
(_,'_',_,'_',_,'_',FtSt) becomes  (PV,m,FtSt,th)		when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per2),
(_,'_',_,'_',_,'_',FtSt) becomes (PV,gv,FtSt,th)		when (Conj=conj2, P2=per1, N2=plur, N1=plur, P1=per2),
(_,'_',_,'_',_,'_',FtSt) becomes  (PV,m,FtSt,Suff) 	when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per3),
(_,'_',_,'_',_,'_',FtSt) becomes (PV,gv,FtSt,Suff)	when (Conj=conj2, P2=per1, N2=plur, N1=plur, P1=per3).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% PRESENT for STATIC 1,2 %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

conj_pr_static  ##

    (L, @lexeme_verb(PV_list, _, ConstVal, (@static(ConjNum,_,prs))))
**>
    @verb(ConjSt, ConstVal, (prs, preverb:Preverb))

if % generating possible pairs of Persons and Numbers depending on the conjugation number
   ( (ConjNum=conj1, (a_ Conj)=(a_ conj1), ConjSt=[@arg(nom,Num1,Per1)], isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)));
     (ConjNum=conj2, (a_ Conj)=(a_ conj2), ConjSt=[@arg(nom,Num1,Per1), @arg(dat,Num2,Per2)],
       ( ( isPer3(Per2,(a_ P2)), isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)) );    
         ( isPer2(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per2), isNum(Num1,(a_ N1)), (Num1=sing -> isNum(Num2,(a_ N2)); true) );
         ( isPer1(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per1), isNum(Num1,(a_ N1)), isNum(Num2,(a_ N2)) ) ) ) ),
   % using preverbs one by one if they exist
   ( PV_list=e_list -> ((a_ PV)=(a_ []), Preverb=e_list); (memberof((a_ PV), PV_list), Preverb = [(a_ PV)]) )
   
morphs
% perX to per3
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes (PV,v,Z,Y,PrSt,i)		when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=sing, P1=per1),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes     (PV,Z,PrSt,i)		when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=sing, P1=per2),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes     (PV,Z,PrSt,a)		when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=sing, P1=per3),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes (PV,v,Z,Y,PrSt,i,th)	when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=plur, P1=per1),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes     (PV,Z,PrSt,i,th)	when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=plur, P1=per2),
([X,Y],PrSt,'_',_,'_',_,'_',_) becomes     (PV,Z,PrSt,i,an)	when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=plur, P1=per3),
% perX to per2
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,i)		when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per1),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,i,th)	when (Conj=conj2, P2=per2,                       P1=per1),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,a)       when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per3),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,a,th)	when (Conj=conj2, P2=per2, N2=plur, N1=sing, P1=per3),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,g,PrSt,i,an)    when (Conj=conj2, P2=per2,            N1=plur, P1=per3),
% perX to per1
(PrSt,'_',_,'_',_,'_',_) becomes  (PV,m,PrSt,i)		when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per2),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,gv,PrSt,i)		when (Conj=conj2, P2=per1, N2=plur, N1=sing, P1=per2),
(PrSt,'_',_,'_',_,'_',_) becomes  (PV,m,PrSt,a)	  	when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per3),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,gv,PrSt,a)	  	when (Conj=conj2, P2=per1, N2=plur, N1=sing, P1=per3),
(PrSt,'_',_,'_',_,'_',_) becomes  (PV,m,PrSt,i,th)	when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per2),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,gv,PrSt,i,th)	when (Conj=conj2, P2=per1, N2=plur, N1=plur, P1=per2),
(PrSt,'_',_,'_',_,'_',_) becomes  (PV,m,PrSt,i,an)	when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per3),
(PrSt,'_',_,'_',_,'_',_) becomes (PV,gv,PrSt,i,an)	when (Conj=conj2, P2=per1, N2=plur, N1=plur, P1=per3).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% FUTURE for STATIC 1,2 %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

conj_ft_static  ##

    (L, @lexeme_verb(PV_list, _, ConstVal, (@static(ConjNum, _, fut))))
**>
    @verb(ConjSt, NonConjSt, (fut, preverb:Preverb))

if % generating possible pairs of Persons and Numbers depending on the conjugation number
   ( (ConjNum=conj1, (a_ Conj)=(a_ conj1), ConjSt=[@arg(nom,Num1,Per1)], isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)));
     (ConjNum=conj2, (a_ Conj)=(a_ conj2), ConjSt=[@arg(nom,Num1,Per1), @arg(dat,Num2,Per2)],    
       ( ( isPer3(Per2,(a_ P2)), isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)) );    
         ( isPer2(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per2), isNum(Num1,(a_ N1)), (Num1=sing -> isNum(Num2,(a_ N2)); true) );
         ( isPer1(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per1), isNum(Num1,(a_ N1)), isNum(Num2,(a_ N2)) ) ) ) ),
   % using preverbs one by one if they exist
   ( PV_list=e_list -> ((a_ PV)=(a_ []), Preverb=e_list); (memberof((a_ PV), PV_list), Preverb = [(a_ PV)]) )
   
morphs
% perX to per3
(_,'_',_,'_',_,'_',[X,Y],FtSt) becomes (PV,v,Z,Y,FtSt,i)    	when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=sing, P1=per1),
(_,'_',_,'_',_,'_',[X,Y],FtSt) becomes   (PV,Z,FtSt,i)    	when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=sing, P1=per2),
(_,'_',_,'_',_,'_',[X,Y],FtSt) becomes   (PV,Z,FtSt,a)  		when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=sing, P1=per3),
(_,'_',_,'_',_,'_',[X,Y],FtSt) becomes (PV,v,Z,Y,FtSt,i,th) 	when ((Conj=conj2 -> i2u(Z,X); Z=X), 		P2=per3, N1=plur, P1=per1),
(_,'_',_,'_',_,'_',[X,Y],FtSt) becomes   (PV,Z,FtSt,i,th)	when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=plur, P1=per2),
(_,'_',_,'_',_,'_',[X,Y],FtSt) becomes   (PV,Z,FtSt,i,an)	when ((Conj=conj2 -> prfx3(Z,X,Y); Z=[X,Y]),P2=per3, N1=plur, P1=per3),
% perX to per2
(_,'_',_,'_',_,'_',FtSt) becomes (PV,g,FtSt,i)		when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per1),
(_,'_',_,'_',_,'_',FtSt) becomes (PV,g,FtSt,i,th) 	when (Conj=conj2, P2=per2,                       P1=per1),
(_,'_',_,'_',_,'_',FtSt) becomes (PV,g,FtSt,a)  		when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per3),
(_,'_',_,'_',_,'_',FtSt) becomes (PV,g,FtSt,a,th) 	when (Conj=conj2, P2=per2, N2=plur, N1=sing, P1=per3),
(_,'_',_,'_',_,'_',FtSt) becomes (PV,g,FtSt,i,an)	when (Conj=conj2, P2=per2,            N1=plur, P1=per3),
% perX to per1
(_,'_',_,'_',_,'_',FtSt) becomes  (PV,m,FtSt,i)		when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per2),
(_,'_',_,'_',_,'_',FtSt) becomes (PV,gv,FtSt,i)		when (Conj=conj2, P2=per1, N2=plur, N1=sing, P1=per2),
(_,'_',_,'_',_,'_',FtSt) becomes  (PV,m,FtSt,a)		when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per3),
(_,'_',_,'_',_,'_',FtSt) becomes (PV,gv,FtSt,a)		when (Conj=conj2, P2=per1, N2=plur, N1=sing, P1=per3),
(_,'_',_,'_',_,'_',FtSt) becomes  (PV,m,FtSt,i,th)	when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per2),
(_,'_',_,'_',_,'_',FtSt) becomes (PV,gv,FtSt,i,th)	when (Conj=conj2, P2=per1, N2=plur, N1=plur, P1=per2),
(_,'_',_,'_',_,'_',FtSt) becomes  (PV,m,FtSt,i,an) 	when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per3),
(_,'_',_,'_',_,'_',FtSt) becomes (PV,gv,FtSt,i,an)	when (Conj=conj2, P2=per1, N2=plur, N1=plur, P1=per3).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% PRESENT for STATIVE 1,2 %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

conj_pr_stative  ##

    (L, @lexeme_verb(PV_list, _, ConstVal, (@stative(ConjNum,Being,_,prs))))
**>
    @verb(ConjSt, ConstVal, (prs, preverb:Preverb))

if % generating possible pairs of Persons and Numbers depending on the conjugation number
   ( (ConjNum=conj1, (a_ Conj)=(a_ conj1), ConjSt=[@arg(dat,Num1,Per1)], isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)));
     (ConjNum=conj2, (a_ Conj)=(a_ conj2), ConjSt=[@arg(dat,Num1,Per1), @arg(nom,Num2,Per2)],
       ( ( isPer3(Per2,(a_ P2)), isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)) );    
         ( isPer2(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per2), isNum(Num2,(a_ N2)), (Per1=per1 -> isNum(Num1,(a_ N1)); true) );
         ( isPer1(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per1), isNum(Num2,(a_ N2)),
           ((Num2=sing, Per1=per2) -> isNum(Num1,(a_ N1)); true) ) ) ) ),
   % using preverbs one by one if they exist
   ( PV_list=e_list -> ((a_ PV)=(a_ []), Preverb=e_list); (memberof((a_ PV), PV_list), Preverb = [(a_ PV)]) ),
   % treating the property being, (Being = both) is not the case here 
   ( Being=plus -> ((a_ Sf1)=(a_ var), (a_ Sf2)=(a_ xar)); ((a_ Sf1)=(a_ i), (a_ Sf2)=(a_ i)) )
   
morphs
% perX to per3
(PrSt,'_',_,'_',_,'_',_) 			becomes (PV,m,PrSt)			when (P2=per3, N1=sing, P1=per1),
(PrSt,'_',_,'_',_,'_',_) 			becomes (PV,g,PrSt)			when (P2=per3, N1=sing, P1=per2),
([X,Y],PrSt,'_',_,'_',_,'_',_) 		becomes (PV,Z,PrSt)			when (P2=per3, N1=sing, P1=per3, prfx3(Z,X,Y)),
(PrSt,'_',_,'_',_,'_',_) 			becomes (PV,gv,PrSt)		when (P2=per3, N1=plur, P1=per1),
(PrSt,[S],'_',_,'_',_,'_',_) 		becomes (PV,g,PrSt,T,th)	when (P2=per3, N1=plur, P1=per2, s20(T,S)),
([X,Y],PrSt,[S],'_',_,'_',_,'_',_)	becomes (PV,Z,PrSt,T,th)	when (P2=per3, N1=plur, P1=per3, prfx3(Z,X,Y), s20(T,S)),
% perX to per2
(PrSt,[S],'_',_,'_',_,'_',_) 		becomes (PV,m,PrSt,Sf2)		when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per1),
(PrSt,[S],'_',_,'_',_,'_',_) 		becomes (PV,m,PrSt,Sf2,th)	when (Conj=conj2, P2=per2, N2=plur, N1=sing, P1=per1),
(PrSt,[S],'_',_,'_',_,'_',_) 		becomes (PV,gv,PrSt,Sf2)	when (Conj=conj2, P2=per2, N2=sing, N1=plur, P1=per1),
(PrSt,[S],'_',_,'_',_,'_',_) 		becomes (PV,gv,PrSt,Sf2,th)	when (Conj=conj2, P2=per2, N2=plur, N1=plur, P1=per1),
([X,Y],PrSt,[S],'_',_,'_',_,'_',_)	becomes (PV,Z,PrSt,Sf2)		when (Conj=conj2, P2=per2, N2=sing, 		 P1=per3, prfx3(Z,X,Y)),
([X,Y],PrSt,[S],'_',_,'_',_,'_',_)	becomes (PV,Z,PrSt,Sf2,th)	when (Conj=conj2, P2=per2, N2=plur, 		 P1=per3, prfx3(Z,X,Y)),
% perX to per1
(PrSt,[S],'_',_,'_',_,'_',_) 		becomes  (PV,g,PrSt,Sf1)		when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per2),
(PrSt,[S],'_',_,'_',_,'_',_) 		becomes  (PV,g,PrSt,Sf1,th)		when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per2),
(PrSt,[S],'_',_,'_',_,'_',_) 		becomes  (PV,g,PrSt,Sf1,th)		when (Conj=conj2, P2=per1, N2=plur, 		 P1=per2),
([X],PrSt,[S],'_',_,'_',_,'_',_) 	becomes  (PV,v,Z,PrSt,Sf1)		when (Conj=conj2, P2=per1, N2=sing, 		 P1=per3, i2u(Z,X)),
([X],PrSt,[S],'_',_,'_',_,'_',_) 	becomes  (PV,v,Z,PrSt,Sf1,th)	when (Conj=conj2, P2=per1, N2=plur, 		 P1=per3, i2u(Z,X)).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% PAST CONTINUES for STATIVE 1,2 %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

conj_pscn_stative  ##

    (L, @lexeme_verb(PV_list, _, ConstVal, (@stative(ConjNum,_,_,psc))))
**>
    @verb(ConjSt, ConstVal, (psc, preverb:Preverb))

if % generating possible pairs of Persons and Numbers depending on the conjugation number
   ( (ConjNum=conj1, (a_ Conj)=(a_ conj1), ConjSt=[@arg(dat,Num1,Per1)], isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)));
     (ConjNum=conj2, (a_ Conj)=(a_ conj2), ConjSt=[@arg(dat,Num1,Per1), @arg(nom,Num2,Per2)],
       ( ( isPer3(Per2,(a_ P2)), isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)) );    
         ( isPer2(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per2), isNum(Num2,(a_ N2)), (Per1=per1 -> isNum(Num1,(a_ N1)); true) );
         ( isPer1(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per1), isNum(Num2,(a_ N2)),
           ((Num2=sing, Per1=per2) -> isNum(Num1,(a_ N1)); true) ) ) ) ),
   % using preverbs one by one if they exist
   ( PV_list=e_list -> ((a_ PV)=(a_ []), Preverb=e_list); (memberof((a_ PV), PV_list), Preverb = [(a_ PV)]) )
   
morphs
% perX to per3
(_,'_',PsCnSt,'_',_,'_',_) 			becomes (PV,m,PsCnSt)		when (P2=per3, N1=sing, P1=per1),
(_,'_',PsCnSt,'_',_,'_',_) 			becomes (PV,g,PsCnSt)		when (P2=per3, N1=sing, P1=per2),
(_,'_',[X,Y],PsCnSt,'_',_,'_',_) 	becomes (PV,Z,PsCnSt)		when (P2=per3, N1=sing, P1=per3, prfx3(Z,X,Y)),
(_,'_',PsCnSt,'_',_,'_',_) 			becomes (PV,gv,PsCnSt)		when (P2=per3, N1=plur, P1=per1),
(_,'_',PsCnSt,[S],'_',_,'_',_) 		becomes (PV,g,PsCnSt,T,th)	when (P2=per3, N1=plur, P1=per2, s20(T,S)), % !!! th not observer yet
(_,'_',[X,Y],PsCnSt,[S],'_',_,'_',_)becomes (PV,Z,PsCnSt,T,th)	when (P2=per3, N1=plur, P1=per3, prfx3(Z,X,Y), s20(T,S)), % !!! th not observer yet
% perX to per2
(_,'_',PsCnSt,[S],'_',_,'_',_) 		becomes (PV,m,PsCnSt,i)		when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per1),
(_,'_',PsCnSt,[S],'_',_,'_',_) 		becomes (PV,m,PsCnSt,i,th)	when (Conj=conj2, P2=per2, N2=plur, N1=sing, P1=per1),
(_,'_',PsCnSt,[S],'_',_,'_',_) 		becomes (PV,gv,PsCnSt,i)	when (Conj=conj2, P2=per2, N2=sing, N1=plur, P1=per1),
(_,'_',PsCnSt,[S],'_',_,'_',_) 		becomes (PV,gv,PsCnSt,i,th)	when (Conj=conj2, P2=per2, N2=plur, N1=plur, P1=per1),
(_,'_',[X,Y],PsCnSt,[S],'_',_,'_',_)becomes (PV,Z,PsCnSt,i)		when (Conj=conj2, P2=per2, N2=sing, 		 P1=per3, prfx3(Z,X,Y)),
(_,'_',[X,Y],PsCnSt,[S],'_',_,'_',_)becomes (PV,Z,PsCnSt,i,th)	when (Conj=conj2, P2=per2, N2=plur, 		 P1=per3, prfx3(Z,X,Y)),
% perX to per1
(_,'_',PsCnSt,[S],'_',_,'_',_) 		becomes  (PV,g,PsCnSt,i)		when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per2),
(_,'_',PsCnSt,[S],'_',_,'_',_) 		becomes  (PV,g,PsCnSt,i,th)		when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per2),
(_,'_',PsCnSt,[S],'_',_,'_',_) 		becomes  (PV,g,PsCnSt,i,th)		when (Conj=conj2, P2=per1, N2=plur, 		 P1=per2),
(_,'_',[X],PsCnSt,[S],'_',_,'_',_) 	becomes  (PV,v,Z,PsCnSt,i)		when (Conj=conj2, P2=per1, N2=sing, 		 P1=per3, i2u(Z,X)),
(_,'_',[X],PsCnSt,[S],'_',_,'_',_) 	becomes  (PV,v,Z,PsCnSt,i,th)	when (Conj=conj2, P2=per1, N2=plur, 		 P1=per3, i2u(Z,X)).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%% PAST for STATIVE 1,2 %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

conj_ps_stative  ##

    (L, @lexeme_verb(PV_list, _, ConstVal, (@stative(ConjNum,_,[(a_ Sf)],pst))))
**>
    @verb(ConjSt, ConstVal, (pst, preverb:Preverb))

if % generating possible pairs of Persons and Numbers depending on the conjugation number
   ( (ConjNum=conj1, (a_ Conj)=(a_ conj1), ConjSt=[@arg(dat,Num1,Per1)], isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)));
     (ConjNum=conj2, (a_ Conj)=(a_ conj2), ConjSt=[@arg(dat,Num1,Per1), @arg(nom,Num2,Per2)],
       ( ( isPer3(Per2,(a_ P2)), isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)) );    
         ( isPer2(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per2), isNum(Num2,(a_ N2)), (Per1=per1 -> isNum(Num1,(a_ N1)); true) );
         ( isPer1(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per1), isNum(Num2,(a_ N2)),
           ((Num2=sing, Per1=per2) -> isNum(Num1,(a_ N1)); true) ) ) ) ),
   % using preverbs one by one if they exist
   ( PV_list=e_list -> ((a_ PV)=(a_ []), Preverb=e_list); (memberof((a_ PV), PV_list), Preverb = [(a_ PV)]) )
   
morphs
% perX to per3
(_,'_',_,'_',PsSt,'_',_) 			becomes (PV,m,PsSt)			when (P2=per3, N1=sing, P1=per1),
(_,'_',_,'_',PsSt,'_',_) 			becomes (PV,g,PsSt)			when (P2=per3, N1=sing, P1=per2),
(_,'_',_,'_',[X,Y],PsSt,'_',_) 		becomes (PV,Z,PsSt)			when (P2=per3, N1=sing, P1=per3, prfx3(Z,X,Y)),
(_,'_',_,'_',PsSt,'_',_) 			becomes (PV,gv,PsSt)		when (P2=per3, N1=plur, P1=per1),
(_,'_',_,'_',PsSt,[S],'_',_) 		becomes (PV,g,PsSt,T,th)	when (P2=per3, N1=plur, P1=per2, s20(T,S)), % !!! th not observer yet
(_,'_',_,'_',[X,Y],PsSt,[S],'_',_)	becomes (PV,Z,PsSt,T,th)	when (P2=per3, N1=plur, P1=per3, prfx3(Z,X,Y), s20(T,S)), % !!! th not observer yet
% perX to per2
(_,'_',_,'_',PsSt,[S],'_',_) 		becomes (PV,m,PsSt,Sf)		when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per1),
(_,'_',_,'_',PsSt,[S],'_',_) 		becomes (PV,m,PsSt,Sf,th)	when (Conj=conj2, P2=per2, N2=plur, N1=sing, P1=per1),
(_,'_',_,'_',PsSt,[S],'_',_) 		becomes (PV,gv,PsSt,Sf)		when (Conj=conj2, P2=per2, N2=sing, N1=plur, P1=per1),
(_,'_',_,'_',PsSt,[S],'_',_) 		becomes (PV,gv,PsSt,Sf,th)	when (Conj=conj2, P2=per2, N2=plur, N1=plur, P1=per1),
(_,'_',_,'_',[X,Y],PsSt,[S],'_',_)	becomes (PV,Z,PsSt,Sf)		when (Conj=conj2, P2=per2, N2=sing, 		 P1=per3, prfx3(Z,X,Y)),
(_,'_',_,'_',[X,Y],PsSt,[S],'_',_)	becomes (PV,Z,PsSt,Sf,th)	when (Conj=conj2, P2=per2, N2=plur, 		 P1=per3, prfx3(Z,X,Y)),
% perX to per1
(_,'_',_,'_',PsSt,[S],'_',_) 		becomes  (PV,g,PsSt,Sf)		when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per2),
(_,'_',_,'_',PsSt,[S],'_',_) 		becomes  (PV,g,PsSt,Sf,th)	when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per2),
(_,'_',_,'_',PsSt,[S],'_',_) 		becomes  (PV,g,PsSt,Sf,th)	when (Conj=conj2, P2=per1, N2=plur, 		 P1=per2),
(_,'_',_,'_',[X],PsSt,[S],'_',_) 	becomes  (PV,v,Z,PsSt,Sf)	when (Conj=conj2, P2=per1, N2=sing, 		 P1=per3, i2u(Z,X)),
(_,'_',_,'_',[X],PsSt,[S],'_',_) 	becomes  (PV,v,Z,PsSt,Sf,th)when (Conj=conj2, P2=per1, N2=plur, 		 P1=per3, i2u(Z,X)).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%% FUTURE for STATIVE 1,2 %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

conj_ft_stative  ##

    (L, @lexeme_verb(PV_list, _, ConstVal, (@stative(ConjNum,_,_,fut))))
**>
    @verb(ConjSt, ConstVal, (fut, preverb:Preverb))

if % generating possible pairs of Persons and Numbers depending on the conjugation number
   ( (ConjNum=conj1, (a_ Conj)=(a_ conj1), ConjSt=[@arg(dat,Num1,Per1)], isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)));
     (ConjNum=conj2, (a_ Conj)=(a_ conj2), ConjSt=[@arg(dat,Num1,Per1), @arg(nom,Num2,Per2)],
       ( ( isPer3(Per2,(a_ P2)), isPer(Per1,(a_ P1)), isNum(Num1,(a_ N1)) );    
         ( isPer2(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per2), isNum(Num2,(a_ N2)), (Per1=per1 -> isNum(Num1,(a_ N1)); true) );
         ( isPer1(Per2,(a_ P2)), isPer(Per1,(a_ P1)), prolog(P1 \= per1), isNum(Num2,(a_ N2)),
           ((Num2=sing, Per1=per2) -> isNum(Num1,(a_ N1)); true) ) ) ) ),
   % using preverbs one by one if they exist
   ( PV_list=e_list -> ((a_ PV)=(a_ []), Preverb=e_list); (memberof((a_ PV), PV_list), Preverb = [(a_ PV)]) )
   
morphs
% perX to per3
(_,'_',_,'_',_,'_',FtSt) 			becomes (PV,m,FtSt)			when (P2=per3, N1=sing, P1=per1),
(_,'_',_,'_',_,'_',FtSt) 			becomes (PV,g,FtSt)			when (P2=per3, N1=sing, P1=per2),
(_,'_',_,'_',_,'_',[X,Y],FtSt) 		becomes (PV,Z,FtSt)			when (P2=per3, N1=sing, P1=per3, prfx3(Z,X,Y)),
(_,'_',_,'_',_,'_',FtSt) 			becomes (PV,gv,FtSt)		when (P2=per3, N1=plur, P1=per1),
(_,'_',_,'_',_,'_',FtSt,[S]) 		becomes (PV,g,FtSt,T,th)	when (P2=per3, N1=plur, P1=per2, s20(T,S)), % !!! th not observer yet
(_,'_',_,'_',_,'_',[X,Y],FtSt,[S])	becomes (PV,Z,FtSt,T,th)	when (P2=per3, N1=plur, P1=per3, prfx3(Z,X,Y), s20(T,S)), % !!! th not observer yet
% perX to per2
(_,'_',_,'_',_,'_',FtSt,[S]) 		becomes (PV,m,FtSt,i)		when (Conj=conj2, P2=per2, N2=sing, N1=sing, P1=per1),
(_,'_',_,'_',_,'_',FtSt,[S]) 		becomes (PV,m,FtSt,i,th)	when (Conj=conj2, P2=per2, N2=plur, N1=sing, P1=per1),
(_,'_',_,'_',_,'_',FtSt,[S]) 		becomes (PV,gv,FtSt,i)		when (Conj=conj2, P2=per2, N2=sing, N1=plur, P1=per1),
(_,'_',_,'_',_,'_',FtSt,[S]) 		becomes (PV,gv,FtSt,i,th)	when (Conj=conj2, P2=per2, N2=plur, N1=plur, P1=per1),
(_,'_',_,'_',_,'_',[X,Y],FtSt,[S])	becomes (PV,Z,FtSt,i)		when (Conj=conj2, P2=per2, N2=sing, 		 P1=per3, prfx3(Z,X,Y)),
(_,'_',_,'_',_,'_',[X,Y],FtSt,[S])	becomes (PV,Z,FtSt,i,th)	when (Conj=conj2, P2=per2, N2=plur, 		 P1=per3, prfx3(Z,X,Y)),
% perX to per1
(_,'_',_,'_',_,'_',FtSt,[S]) 		becomes  (PV,g,FtSt,i)		when (Conj=conj2, P2=per1, N2=sing, N1=sing, P1=per2),
(_,'_',_,'_',_,'_',FtSt,[S]) 		becomes  (PV,g,FtSt,i,th)	when (Conj=conj2, P2=per1, N2=sing, N1=plur, P1=per2),
(_,'_',_,'_',_,'_',FtSt,[S]) 		becomes  (PV,g,FtSt,i,th)	when (Conj=conj2, P2=per1, N2=plur, 		 P1=per2),
(_,'_',_,'_',_,'_',[X],FtSt,[S]) 	becomes  (PV,v,Z,FtSt,i)	when (Conj=conj2, P2=per1, N2=sing, 		 P1=per3, i2u(Z,X)),
(_,'_',_,'_',_,'_',[X],FtSt,[S]) 	becomes  (PV,v,Z,FtSt,i,th)	when (Conj=conj2, P2=per1, N2=plur, 		 P1=per3, i2u(Z,X)).
