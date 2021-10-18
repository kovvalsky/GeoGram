%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% Test Noun %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%=======================================
%    Verb complementation with nouns
%=======================================

t(1, "studenti kithxulobs tcigns",		(phrase, cat:(@verb_ss(e_list, e_list, prs))),		1, 'The student reads the book').
t(2, "studentebi kithxuloben tcignebs",	(phrase, cat:(@verb_ss(e_list, e_list, prs))),	1, 'students reads books').
t(3, "studentma tcaikithxa tcigni",		(phrase, cat:(@verb_ss(e_list, e_list, pst))),		1, 'The student read the book').
t(4, "tcigni tcaikithxa studentma",		(phrase, cat:(@verb_ss(e_list, e_list, pst))),		1, 'The student read the book').
t(5, "studentebi kithxuloben",			(phrase, cat:(@verb_ss(ne_list, e_list, prs))),	1, 'Students read').
t(6, "studentebs eshiniath gamocdebis",	(phrase, cat:(@verb_ss(e_list, e_list, prs))),	1, 'Students are afraid of exams').
t(7, "students eshinia",				(phrase, cat:(@verb_ss(e_list, ne_list, prs))),1, 'Student is afraid of').
t(8, "students eshiniath gamocdebis",	bot,							0, 'verb noun agreemnet in number').
t(9, "kaci gzavnis tcerils shvilthan",	(phrase, cat:(@verb_ss(e_list, e_list, prs))),		1, 'The man sends the letter tothe son').
t(10, "qalma gaagzavna tcerils",			bot,								0, 'wrong case for the noun argumnet').
t(11, "bitchma gaagzavna tcigni",		(phrase, cat:(@verb_ss(e_list, ne_list, pst))),	1, 'the boy sent the book').
t(12, "bitchma gaaba thoki",				(phrase, cat:(@verb_ss(e_list, ne_list, pst))),	1, 'The boy stretched the rope').
t(13, "kacma thoki gaaba saxlidan ghobemde",(phrase, cat:(@verb_ss(e_list, e_list, pst))),	1, 'The mam stretched the rope from the house till the fence').
t(14, "saxlidan ghobemde kacma thoki gaaba",(phrase, cat:(@verb_ss(e_list, e_list, pst))),	1, 'The mam stretched the rope from the house till the fence').
t(15, "ghobidan saxlamde kacma thoki gaaba",(phrase, cat:(@verb_ss(e_list, e_list, pst))),	1, 'The mam stretched the rope from the fence till the house').
t(16, "ghobidan gaaba saxlamde kacma thoki",(phrase, cat:(@verb_ss(e_list, e_list, pst))),	1, 'The mam stretched the rope from the fence till the house').

%=======================================
%   Verb complementation with implicit and explicit arguments (nouns, pronouns)
%=======================================

t(17, "chven tcignebs vkithxulobdith",(phrase, cat:(@verb_ss(e_list, e_list, psc))),	1, 'We were reading books').
t(18, "meshinia sheni",				  (phrase, cat:(@verb_ss(ne_list, e_list, prs))),	1, 'I am afraid of you').
t(19, "me meshinia sheni",			  (phrase, cat:(@verb_ss(e_list, e_list, prs))),	1, 'I am afraid of you').
t(20, "meshinia misi",				  (phrase, cat:(@verb_ss(ne_list, e_list, prs))),	1, 'I am afraid of him').
t(21, "shen shegeshinda",			  (phrase, cat:(@verb_ss(e_list, ne_list, pst))),	1, 'you got frightened').
t(22, "me gavagzavne shen",			  bot,												0, '3rd person required 2nd person got').
t(23, "gavagzavne tcerili shvilthan", (phrase, cat:(@verb_ss(ne_list, e_list, pst))),	1, 'I sent a letter to to the son').
t(24, "thqven agzavnith tcerils", 	  (phrase, cat:(@verb_ss(e_list, ne_list, prs))),	1, 'You-pl are sending a letter').
t(25, "gagibav saxlamde thoks", 	  (phrase, cat:(@verb_ss(ne_list, ne_list, fut))),	1, 'I will stretch for you the rope till the house').
t(26, "gagigzavne tcerilebi studentebthan", 	(phrase, cat:(@verb_ss(ne_list, e_list, pst))),	1, 'I sent for you letters to students').


%=======================================
%   Adjuncts (adjectives, quantifiers) + noun
%=======================================

t(27, "yvela patara tcigns",(phrase, cat:(@noun_ss(dat,sing,plus))),	1, 'We were reading books').
t(28, "lamaz bejith studentebthan",(phrase, cat:(@noun_ss(com,plur,minus))),	1, 'We were reading books').
t(29, "patara lamaz mokle thoks",(phrase, cat:(@noun_ss(dat,sing,minus))),	1, 'We were reading books').
t(30, "tcigni patara",	bot,	0, 'We were reading books').
t(31, "tcigni zogierthi",	bot,	0, 'We were reading books').
t(32, "zogierthi saintereso tcignebi",	bot,	0, 'We were reading books').
t(33, "zogierthi saintereso tcigni",	(phrase, cat:(@noun_ss(nom,sing,plus))),	1, 'We were reading books').
t(34, "zogierthma ucxo didma kacma",	(phrase, cat:(@noun_ss(erg,sing,plus))),	1, 'We were reading books').
t(35, "patara lamazi",	bot,	0, 'We were reading books').
t(36, "yvela ucxo",	bot,	0, 'We were reading books').
t(37, "yvela lamazi qalma",	bot,	0, 'We were reading books').
t(38, "lamazi yvela qali",	bot,	0, 'We were reading books').
t(39, "yvela zogierthma kacma",	bot,	0, 'We were reading books').
t(40, "mokle yvela thoki",	bot,	0, 'We were reading books').
t(41, "yvela mokle thoki",	(phrase, cat:(@noun_ss(nom,sing,plus))),	1, 'We were reading books').
t(42, "yvela mokle patara zogierthi thoki",	bot,	0, 'We were reading books').
t(43, "zogierthi patara lamazi bejithi shvili",	(phrase, cat:(@noun_ss(nom,sing,plus))),	1, 'We were reading books').
t(44, "yvela ucxo didma kacma",	(phrase, cat:(@noun_ss(erg,sing,plus))),	1, 'We were reading books').
t(45, "yvela me",	bot,	0, 'We were reading books').
t(46, "didi is",	bot,	0, 'We were reading books').
t(47, "shen patara",	bot,	0, 'We were reading books').


%=======================================
%   Verbs with noun phrases in its argument positions
%=======================================

t(48, "chven yvela patara saintereso tcigns vkithxulobdith",(phrase, cat:(@verb_ss(e_list, e_list, psc))),	1, 'We were reading books').
t(49, "meshinia yvela ucxo kacis",		  (phrase, cat:(@verb_ss(ne_list, e_list, prs))),	1, 'I am afraid of you').
t(50, "me meshinia zogierthi ucxo kacis",			  (phrase, cat:(@verb_ss(e_list, e_list, prs))),	1, 'I am afraid of you').
t(51, "meshinia didi gamocdebis",				  (phrase, cat:(@verb_ss(ne_list, e_list, prs))),	1, 'I am afraid of him').
t(52, "shen shegeshinda romelighaca kacis",			  (phrase, cat:(@verb_ss(e_list, e_list, pst))),	1, 'you got frightened').
t(53, "me gavagzavne did tcerili",			  bot,												0, '3rd person required 2nd person got').
t(54, "gavagzavne mokle tcerili bejith shvilthan", (phrase, cat:(@verb_ss(ne_list, e_list, pst))),	1, 'I sent a letter to to the son').
t(55, "thqven agzavnith patara lamaz saintereso tcerils", 	  (phrase, cat:(@verb_ss(e_list, ne_list, prs))),	1, 'You-pl are sending a letter').
t(56, "gagibav did saxlamde mokle thoks", 	  (phrase, cat:(@verb_ss(ne_list, ne_list, fut))),	1, 'I will stretch for you the rope till the house').
t(57, "yvela tcerili gagigzavne bejith studentebthan", 	(phrase, cat:(@verb_ss(ne_list, e_list, pst))),	1, 'I sent for you letters to students').












