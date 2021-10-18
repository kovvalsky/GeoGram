%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% TEST SUITE %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%=======================================
%    Verb complementation with nouns
%=======================================

t(1, "studenti kithxulobs tcigns",		(phrase, cat:(@verb_ss(e_list, e_list, prs))),	1, 
'The student reads the book').
t(2, "studentebi kithxuloben tcignebs",	(phrase, cat:(@verb_ss(e_list, e_list, prs))),	1, 
'students reads books').
t(3, "studentma tcaikithxa tcigni",		(phrase, cat:(@verb_ss(e_list, e_list, pst))),	1, 
'The student read the book').
t(4, "tcigni tcaikithxa studentma",		(phrase, cat:(@verb_ss(e_list, e_list, pst))),	1, 
'The student read the book').
t(5, "studentebi kithxuloben",			(phrase, cat:(@verb_ss(ne_list, e_list, prs))),	1, 
'Students read').
t(6, "studentebs eshiniath gamocdebis",	(phrase, cat:(@verb_ss(e_list, e_list, prs))),	1, 
'Students are afraid of exams').
t(7, "students eshinia",				(phrase, cat:(@verb_ss(e_list, ne_list, prs))),	1, 
'Student is afraid of').
t(8, "students eshiniath gamocdebis",	bot,											0, 
'verb noun agreemnet in number').
t(9, "kaci gzavnis tcerils shvilthan",	(phrase, cat:(@verb_ss(e_list, e_list, prs))),	1, 
'The man sends the letter tothe son').
t(10, "qalma gaagzavna tcerils",		bot,											0, 
'wrong case for the noun argumnet').
t(11, "bitchma gaagzavna tcigni",		(phrase, cat:(@verb_ss(e_list, ne_list, pst))),	1, 
'the boy sent the book').
t(12, "bitchma gaaba thoki",			(phrase, cat:(@verb_ss(e_list, ne_list, pst))),	1, 
'The boy stretched the rope').
t(13, "kacma thoki gaaba saxlidan ghobemde",(phrase, cat:(@verb_ss(e_list, e_list, pst))),	1, 
'The mam stretched the rope from the house till the fence').
t(14, "saxlidan ghobemde kacma thoki gaaba",(phrase, cat:(@verb_ss(e_list, e_list, pst))),	1, 
'The mam stretched the rope from the house till the fence').
t(15, "ghobidan saxlamde kacma thoki gaaba",(phrase, cat:(@verb_ss(e_list, e_list, pst))),	1, 
'The mam stretched the rope from the fence till the house').
t(16, "ghobidan gaaba saxlamde kacma thoki",(phrase, cat:(@verb_ss(e_list, e_list, pst))),	1, 
'The mam stretched the rope from the fence till the house').

%=======================================
%   Verb complementation with implicit and explicit arguments (nouns, pronouns)
%=======================================

t(17, "chven tcignebs vkithxulobdith",(phrase, cat:(@verb_ss(e_list, e_list, psc))),	1, 
'We were reading books').
t(18, "meshinia sheni",				  (phrase, cat:(@verb_ss(ne_list, e_list, prs))),	1, 
'I am afraid of you').
t(19, "me meshinia sheni",			  (phrase, cat:(@verb_ss(e_list, e_list, prs))),	1, 
'I am afraid of you').
t(20, "meshinia misi",				  (phrase, cat:(@verb_ss(ne_list, e_list, prs))),	1, 
'I am afraid of him').
t(21, "shen shegeshinda",			  (phrase, cat:(@verb_ss(e_list, ne_list, pst))),	1, 
'you got frightened').
t(22, "me gavagzavne shen",			  bot,	0, 
'3rd person required 2nd person got').
t(23, "gavagzavne tcerili shvilthan", (phrase, cat:(@verb_ss(ne_list, e_list, pst))),	1, 
'I sent a letter to to the son').
t(24, "thqven agzavnith tcerils", 	  (phrase, cat:(@verb_ss(e_list, ne_list, prs))),	1, 
'You-pl are sending a letter').
t(25, "gagibav saxlamde thoks", 	  (phrase, cat:(@verb_ss(ne_list, ne_list, fut))),	1, 
'I will stretch for you the rope till the house').
t(26, "gagigzavne tcerilebi studentebthan", (phrase, cat:(@verb_ss(ne_list, e_list, pst))),	1, 
'I sent for you letters to students').


%=======================================
%   Adjuncts (adjectives, quantifiers) + noun
%=======================================

t(17, "yvela patara tcigns",		(phrase, cat:(@noun_ss(dat,sing,quant,_))),		1, 
'We were reading books').
t(17, "lamaz bejith studentebthan",	(phrase, cat:(@noun_ss(com,plur,attrib,_))),	1, 
'We were reading books').
t(17, "patara lamaz mokle thoks",	(phrase, cat:(@noun_ss(dat,sing,attrib,_))),	1, 
'We were reading books').
t(17, "tcigni patara",					bot,	0,	'We were reading books').
t(17, "tcigni zogierthi",				bot,	0, 	'We were reading books').
t(17, "zogierthi saintereso tcignebi",	bot,	0,	'We were reading books').
t(17, "zogierthi saintereso tcigni",(phrase, cat:(@noun_ss(nom,sing,quant,_))),		1, 
'We were reading books').
t(17, "zogierthma ucxo didma kacma",(phrase, cat:(@noun_ss(erg,sing,quant,_))),		1, 
'We were reading books').
t(17, "patara lamazi",					bot,	0,	'We were reading books').
t(17, "yvela ucxo",						bot,	0,	'We were reading books').
t(17, "yvela lamazi qalma",				bot,	0,	'We were reading books').
t(17, "lamazi yvela qali",				bot,	0,	'We were reading books').
t(17, "yvela zogierthma kacma",			bot,	0, 	'We were reading books').
t(17, "mokle yvela thoki",				bot,	0,	'We were reading books').
t(17, "yvela mokle thoki",			(phrase, cat:(@noun_ss(nom,sing,quant,_))),		1, 
'We were reading books').
t(17, "yvela mokle patara zogierthi thoki",	bot,	0, 
'We were reading books').
t(17, "zogierthi patara lamazi bejithi shvili",	(phrase, cat:(@noun_ss(nom,sing,quant,_))),	1, 
'We were reading books').
t(17, "yvela ucxo didma kacma",			(phrase, cat:(@noun_ss(erg,sing,quant,_))),	1, 
'We were reading books').
t(17, "yvela me",						bot,	0,	'We were reading books').
t(17, "didi is",						bot,	0,	'We were reading books').
t(17, "shen patara",					bot,	0, 	'We were reading books').


%=======================================
%   Verbs with noun phrases in its argument positions
%=======================================

t(17, "chven yvela patara saintereso tcigns vkithxulobdith",(phrase, cat:(@verb_ss(e_list, e_list, psc))),	1, 
'We were reading books').
t(18, "meshinia yvela ucxo kacis",		  		(phrase, cat:(@verb_ss(ne_list, e_list, prs))),		1, 
'I am afraid of you').
t(19, "me meshinia zogierthi ucxo kacis",		(phrase, cat:(@verb_ss(e_list, e_list, prs))),		1, 
'I am afraid of you').
t(20, "meshinia didi gamocdebis",				(phrase, cat:(@verb_ss(ne_list, e_list, prs))),		1, 
'I am afraid of him').
t(21, "shen shegeshinda romelighaca kacis",		(phrase, cat:(@verb_ss(e_list, e_list, pst))),		1, 
'you got frightened').
t(22, "me gavagzavne did tcerili",			  	bot,	0, 
'3rd person required 2nd person got').
t(23, "gavagzavne mokle tcerili bejith shvilthan", (phrase, cat:(@verb_ss(ne_list, e_list, pst))),	1, 
'I sent a letter to to the son').
t(24, "thqven agzavnith patara lamaz saintereso tcerils",	(phrase, cat:(@verb_ss(e_list, ne_list, prs))),	1, 
'You-pl are sending a letter').
t(25, "gagibav did saxlamde mokle thoks", 	  	(phrase, cat:(@verb_ss(ne_list, ne_list, fut))),	1, 
'I will stretch for you the rope till the house').
t(26, "yvela tcerili gagigzavne bejith studentebthan",	(phrase, cat:(@verb_ss(ne_list, e_list, pst))),	1, 
'I sent for you letters to students').


%=======================================
%   Noun Phrases = [Adj,Quant,Pn_Poss] + Noun
%=======================================

t(17, "lamazi patara saintereso tcigni",(phrase, cat:(@noun_ss(nom,sing,attrib,_))),	1, 
'We were reading books').
t(17, "yvela lamaz bejith shvilthan",	(phrase, cat:(@noun_ss(com,sing,quant,_))),		1, 
'We were reading books').
t(17, "zogierth mokle thoks",			(phrase, cat:(@noun_ss(dat,sing,quant,_))),		1, 
'We were reading books').
t(17, "patara yvela tcigni",			bot,	0,	'We were reading books').
t(17, "zogierthi patara yvela tcigni",	bot,	0,	'We were reading books').
t(17, "chemi zogierthi saintereso tcigni",	(phrase, cat:(@noun_ss(nom,sing,pnp_q,_))),	1, 
'We were reading books').
t(17, "zogierthma chemma bejithma studentma",(phrase, cat:(@noun_ss(erg,sing,pnp_q,_))),1, 
'We were reading books').
t(17, "patara chemi lamazi shvili",		bot,	0, 	'We were reading books').
t(17, "yvela chemi",					bot,	0, 	'We were reading books').
t(17, "chemi yvela",					bot,	0, 	'We were reading books').
t(17, "yvela mathi mokle thoki",		(phrase, cat:(@noun_ss(nom,sing,pnp_q,_))),		1, 
'We were reading books').
t(17, "yvela mokle patara sheni thoki",	bot,	0, 	'We were reading books').
t(17, "chemi didi sheni tcigni",		bot,	0,	'We were reading books').
t(17, "chemi igi",						bot,	0,	'We were reading books').
t(17, "chemi is",						bot,	0,	'We were reading books').
t(17, "yvela is",						bot,	0,	'We were reading books').
t(17, "did me",							bot,	0,	'We were reading books').
t(17, "yvela me",						bot,	0,	'We were reading books').


%=======================================
%   Noun Phrases = [Adj,Quant,Pn_Poss,!!! N_Poss !!!] + Noun
%=======================================

t(17, "qalis tcigni",					(phrase, cat:(@noun_ss(nom,sing,n_poss,_))),	1, 
'We were reading books').
t(17, "kacis lamaz bejith shvilthan",	(phrase, cat:(@noun_ss(com,sing,n_poss,_))),	1, 
'We were reading books').
t(17, "bitchis zogierth mokle thoks",	(phrase, cat:(@noun_ss(dat,sing,n_poss,_))),	1, 
'We were reading books').
t(17, "bitchis chemi thoki",			bot,	0, 'We were reading books').
t(17, "didma kacis bitchma",			bot,	0, 'We were reading books').
t(17, "kacis chemi thoki",				bot,	0, 'We were reading books').
t(17, "didi kompiuteris patara natcili",(phrase, cat:(@noun_ss(nom,sing,n_poss,_))),	1, 
'We were reading books').
t(17, "zogierthma kacis studentma",		bot,	0, 'We were reading books').
t(17, "chemma shvilis tcerilma",		bot,	0, 'We were reading books').
t(17, "shvilis chemma tcerilma",		bot,	0, 'We were reading books').
t(17, "bejithi studentis patara lamazi tcerili", (phrase, cat:(@noun_ss(nom,sing,n_poss,_))), 1, 
'We were reading books').
t(17, "patara shvilis tcerilis",		(phrase, cat:(@noun_ss(cnst,sing,n_poss,_))),	1, 
'We were reading books').
t(17, "yvela kacis zogierthi shvili",	(phrase, cat:(@noun_ss(nom,sing,n_poss,_))),	1, 
'We were reading books').
t(17, "kompiuteris is",					bot, 0, 'We were reading books').
t(17, "ucxo kacis patara shvilis tcerili",bot,	1, 'We were reading books').
t(17, "chemi patara bavshvis roli",		bot,	3, 'We were reading books').
t(17, "kacis shvilis tcerilis natcili",	bot,	4, 'We were reading books').
t(17, "kacis shvilis saxlis ghobis natcili",	bot,	8, 'We were reading books').
t(17, "yvela ucxo kacis lamazi qalis patara shvilis romelighaca kompiuteri",	bot,	1, 
'We were reading books').

%=======================================
%   Verbs with noun phrases in its argument positions (possessive)
%=======================================

t(17, "momtcons chemi patara bavshvis roli",	bot,	3, 'We were reading books').






