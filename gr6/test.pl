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

t(27, "yvela patara tcigns",		(phrase, cat:(@noun_ss(dat,sing,quant,_))),		1, 
'We were reading books').
t(28, "lamaz bejith studentebthan",	(phrase, cat:(@noun_ss(com,plur,attrib,_))),	1, 
'We were reading books').
t(29, "patara lamaz mokle thoks",	(phrase, cat:(@noun_ss(dat,sing,attrib,_))),	1, 
'We were reading books').
t(30, "tcigni patara",					bot,	0,	'We were reading books').
t(31, "tcigni zogierthi",				bot,	0, 	'We were reading books').
t(32, "zogierthi saintereso tcignebi",	bot,	0,	'We were reading books').
t(33, "zogierthi saintereso tcigni",(phrase, cat:(@noun_ss(nom,sing,quant,_))),		1, 
'We were reading books').
t(34, "zogierthma ucxo didma kacma",(phrase, cat:(@noun_ss(erg,sing,quant,_))),		1, 
'We were reading books').
t(35, "patara lamazi",				(phrase, cat:(@noun_ss(nom,sing,attrib,_))),	1,	'We were reading books').
t(36, "yvela ucxo",					(phrase, cat:(@noun_ss(nom,sing,quant,_))),	1,	'We were reading books').
t(37, "yvela lamazi qalma",				bot,	0,	'We were reading books').
t(38, "lamazi yvela qali",				bot,	0,	'We were reading books').
t(39, "yvela zogierthma kacma",			bot,	0, 	'We were reading books').
t(40, "mokle yvela thoki",				bot,	0,	'We were reading books').
t(41, "yvela mokle thoki",			(phrase, cat:(@noun_ss(nom,sing,quant,_))),		1, 
'We were reading books').
t(42, "yvela mokle patara zogierthi thoki",	bot,	0, 
'We were reading books').
t(43, "zogierthi patara lamazi bejithi shvili",	(phrase, cat:(@noun_ss(nom,sing,quant,_))),	1, 
'We were reading books').
t(44, "yvela ucxo didma kacma",			(phrase, cat:(@noun_ss(erg,sing,quant,_))),	1, 
'We were reading books').
t(45, "yvela me",						bot,	0,	'We were reading books').
t(46, "didi is",						bot,	0,	'We were reading books').
t(47, "shen patara",					bot,	0, 	'We were reading books').


%=======================================
%   Verbs with noun phrases in its argument positions
%=======================================

t(48, "chven yvela patara saintereso tcigns vkithxulobdith",(phrase, cat:(@verb_ss(e_list, e_list, psc))),	1, 
'We were reading books').
t(49, "meshinia yvela ucxo kacis",		  		(phrase, cat:(@verb_ss(ne_list, e_list, prs))),		1, 
'I am afraid of you').
t(50, "me meshinia zogierthi ucxo kacis",		(phrase, cat:(@verb_ss(e_list, e_list, prs))),		1, 
'I am afraid of you').
t(51, "meshinia didi gamocdebis",				(phrase, cat:(@verb_ss(ne_list, e_list, prs))),		1, 
'I am afraid of him').
t(52, "shen shegeshinda romelighaca kacis",		(phrase, cat:(@verb_ss(e_list, e_list, pst))),		1, 
'you got frightened').
t(53, "me gavagzavne did tcerili",			  	bot,	0, 
'3rd person required 2nd person got').
t(54, "gavagzavne mokle tcerili bejith shvilthan", (phrase, cat:(@verb_ss(ne_list, e_list, pst))),	1, 
'I sent a letter to to the son').
t(55, "thqven agzavnith patara lamaz saintereso tcerils",	(phrase, cat:(@verb_ss(e_list, ne_list, prs))),	1, 
'You-pl are sending a letter').
t(56, "gagibav did saxlamde mokle thoks", 	  	(phrase, cat:(@verb_ss(ne_list, ne_list, fut))),	1, 
'I will stretch for you the rope till the house').
t(57, "yvela tcerili gagigzavne bejith studentebthan",	(phrase, cat:(@verb_ss(ne_list, e_list, pst))),	1, 
'I sent for you letters to students').


%=======================================
%   Noun Phrases = [Adj,Quant,Pn_Poss] + Noun
%=======================================

t(58, "lamazi patara saintereso tcigni",(phrase, cat:(@noun_ss(nom,sing,attrib,_))),	1, 
'We were reading books').
t(59, "yvela lamaz bejith shvilthan",	(phrase, cat:(@noun_ss(com,sing,quant,_))),		1, 
'We were reading books').
t(60, "zogierth mokle thoks",			(phrase, cat:(@noun_ss(dat,sing,quant,_))),		1, 
'We were reading books').
t(61, "patara yvela tcigni",			bot,	0,	'We were reading books').
t(62, "zogierthi patara yvela tcigni",	bot,	0,	'We were reading books').
t(63, "chemi zogierthi saintereso tcigni",	(phrase, cat:(@noun_ss(nom,sing,pnp_q,_))),	1, 
'We were reading books').
t(64, "zogierthma chemma bejithma studentma",(phrase, cat:(@noun_ss(erg,sing,pnp_q,_))),1, 
'We were reading books').
t(65, "patara chemi lamazi shvili",		bot,	0, 	'We were reading books').
t(66, "yvela chemi",					bot,	0, 	'We were reading books').
t(67, "chemi yvela",					bot,	1, 	'We were reading books').
t(68, "yvela mathi mokle thoki",		(phrase, cat:(@noun_ss(nom,sing,pnp_q,_))),		1, 
'We were reading books').
t(69, "yvela mokle patara sheni thoki",	bot,	0, 	'We were reading books').
t(70, "chemi didi sheni tcigni",		bot,	0,	'We were reading books').
t(71, "chemi igi",						bot,	0,	'We were reading books').
t(72, "chemi is",						bot,	0,	'We were reading books').
t(73, "yvela is",						bot,	0,	'We were reading books').
t(74, "did me",							bot,	0,	'We were reading books').
t(75, "yvela me",						bot,	0,	'We were reading books').


%=======================================
%   Noun Phrases = [Adj,Quant,Pn_poss,!!! N_Poss !!!] + Noun
%=======================================

t(76, "qalis tcigni",					(phrase, cat:(@noun_ss(nom,sing,n_poss,_))),	1, 
'We were reading books').
t(77, "kacis lamaz bejith shvilthan",	(phrase, cat:(@noun_ss(com,sing,n_poss,_))),	1, 
'We were reading books').
t(78, "bitchis zogierth mokle thoks",	(phrase, cat:(@noun_ss(dat,sing,n_poss,_))),	1, 
'We were reading books').
t(79, "bitchis chemi thoki",			bot,	0, 'We were reading books').
t(80, "didma kacis bitchma",			bot,	0, 'We were reading books').
t(81, "kacis chemi thoki",				bot,	0, 'We were reading books').
t(82, "didi kompiuteris patara natcili",(phrase, cat:(@noun_ss(nom,sing,n_poss,_))),	1, 
'We were reading books').
t(83, "zogierthma kacis studentma",		bot,	0, 'We were reading books').
t(84, "chemma shvilis tcerilma",		bot,	0, 'We were reading books').
t(85, "shvilis chemma tcerilma",		bot,	0, 'We were reading books').
t(86, "bejithi studentis patara lamazi tcerili", (phrase, cat:(@noun_ss(nom,sing,n_poss,_))), 1, 
'We were reading books').
t(87, "patara shvilis tcerilis",		(phrase, cat:(@noun_ss(cnst,sing,n_poss,_))),	1, 
'We were reading books').
t(88, "yvela kacis zogierthi shvili",	(phrase, cat:(@noun_ss(nom,sing,n_poss,_))),	1, 
'We were reading books').
t(89, "kompiuteris is",					bot, 0, 'We were reading books').
t(90, "ucxo kacis patara shvilis tcerili",bot,	1, 'We were reading books').
t(91, "chemi patara bavshvis roli",		bot,	3, 'We were reading books').
t(92, "kacis shvilis tcerilis natcili",	bot,	4, 'We were reading books').
t(93, "kacis shvilis saxlis ghobis natcili",	bot,	8, 'We were reading books').
t(94, "yvela ucxo kacis lamazi qalis patara shvilis romelighaca kompiuteri",	bot,	1, 
'We were reading books').

%=======================================
%   Verbs with noun phrases in its argument positions (possessive)
%=======================================

t(95, "momtcons chemi patara bavshvis roli",	bot,	3, 'We were reading books').

%=======================================
%   Noun Declension & Pluralization
%=======================================
% Declension paradigm: par_i, 
% stem1 = stem2 
t(96, "kaci", 		@noun(nom,sing,_), 	1, 'man in nominative').
t(97, "kacma", 		@noun(erg,sing,_),	1, 'man in ergative').
t(98, "kacs", 		@noun(dat,sing,_), 	1, 'man in dative').
t(99, "kacshi", 		@noun(ine,sing,_), 	1, 'man in inessive').
t(100, "kacze", 		@noun(loc,sing,_), 	1, 'man in locative').
t(101, "kacthan", 	@noun(com,sing,_), 	1, 'man in comitative').
t(102, "kacad", 		@noun(adv,sing,_),	1, 'man in adverbial').
t(103, "kacamde", 	@noun(ter,sing,_), 	1, 'man in terminative').
t(104, "kacith", 		@noun(ins,sing,_), 	1, 'man in instrumental').
t(105, "kacis", 		@noun(cnst,sing,_), 1, 'man in genetive').
t(106, "kacis", 		@noun(gen,sing,_), 	1, 'man in genetive').
t(107, "kacisken", 	@noun(ori,sing,_), 	1, 'man in orientative').
t(108, "kacidan", 	@noun(abl1,sing,_), 1, 'man in ablative1').
t(109, "kacisgan", 	@noun(abl2,sing,_), 1, 'man in ablative2').
t(110, "kacisthvis", @noun(ben,sing,_), 	1, 'man in benefactive').
% stem1 =\= stem2
t(111, "mgeli", 		@noun(nom,sing,_), 	1, 'wolf in nominative').
t(112, "mgelma", 	@noun(erg,sing,_), 	1, 'wolf in ergative').
t(113, "mgels", 		@noun(dat,sing,_), 	1, 'wolf in dative').
t(114, "mgelshi", 	@noun(ine,sing,_), 	1, 'wolf in inessive').
t(115, "mgelze", 	@noun(loc,sing,_), 	1, 'wolf in locative').
t(116, "mgelthan", 	@noun(com,sing,_), 	1, 'wolf in comitative').
t(117, "mglad", 		@noun(adv,sing,_), 	1, 'wolf in adverbial').
t(118, "mglamde", 	@noun(ter,sing,_), 	1, 'wolf in terminative').
t(119, "mglith", 	@noun(ins,sing,_), 	1, 'wolf in instrumental').
t(120, "mglis", 		@noun(cnst,sing,_), 	1, 'wolf in genetive').
t(121, "mglis", 		@noun(gen,sing,_), 	1, 'wolf in genetive').
t(122, "mglisken", 	@noun(ori,sing,_), 	1, 'wolf in orientative').
t(123, "mglidan", 	@noun(abl1,sing,_), 	1, 'wolf in ablative1').
t(124, "mglisgan", 	@noun(abl2,sing,_), 	1, 'wolf in ablative2').
t(125, "mglisthvis", @noun(ben,sing,_), 	1, 'wolf in benefactive').

% Declension paradigm: par_e 
t(126, "xe", 		@noun(nom,sing,_), 	1, 'tree in nominative').
t(127, "xem", 		@noun(erg,sing,_), 	1, 'tree in ergative').
t(128, "xes", 		@noun(dat,sing,_), 	1, 'tree in dative').
t(129, "xeshi", 		@noun(ine,sing,_), 	1, 'tree in inessive').
t(130, "xeze", 		@noun(loc,sing,_), 	1, 'tree in locative').
t(131, "xesthan", 	@noun(com,sing,_), 	1, 'tree in comitative').
t(132, "xed", 		@noun(adv,sing,_), 	1, 'tree in adverbial').
t(133, "xemde", 		@noun(ter,sing,_), 	1, 'tree in terminative').
t(134, "xith", 		@noun(ins,sing,_), 	1, 'tree in instrumental').
t(135, "xis", 		@noun(cnst,sing,_), 	1, 'tree in genetive').
t(136, "xis", 		@noun(gen,sing,_), 	1, 'tree in genetive').
t(137, "xisken", 	@noun(ori,sing,_), 	1, 'tree in orientative').
t(138, "xidan", 		@noun(abl1,sing,_), 	1, 'tree in ablative1').
t(139, "xisgan", 	@noun(abl2,sing,_), 	1, 'tree in ablative2').
t(140, "xisthvis", 	@noun(ben,sing,_), 	1, 'tree in benefactive').

t(141, "chai", 		@noun(nom,sing,_), 	1, 'tea in nominative').
t(142, "chaim", 		@noun(erg,sing,_), 	1, 'tea in ergative').
t(143, "chais", 		@noun(dat,sing,_), 	1, 'tea in dative').
t(144, "chaishi", 	@noun(ine,sing,_), 	1, 'tea in inessive').
t(145, "chaize", 	@noun(loc,sing,_), 	1, 'tea in locative').
t(146, "chaisthan", 	@noun(com,sing,_), 	1, 'tea in comitative').
t(147, "chaid", 		@noun(adv,sing,_), 	1, 'tea in adverbial').
t(148, "chaimde", 	@noun(ter,sing,_), 	1, 'tea in terminative').
t(149, "chaith", 	@noun(ins,sing,_), 	1, 'tea in instrumental').
t(150, "chais", 		@noun(cnst,sing,_), 	1, 'tea in genetive').
t(151, "chais", 		@noun(gen,sing,_), 	1, 'tea in genetive').
t(152, "chaisken", 	@noun(ori,sing,_), 	1, 'tea in orientative').
t(153, "chaidan", 	@noun(abl1,sing,_), 	1, 'tea in ablative1').
t(154, "chaisgan", 	@noun(abl2,sing,_), 	1, 'tea in ablative2').
t(155, "chaisthvis", @noun(ben,sing,_), 	1, 'tea in benefactive').

t(156, "ghvino", 		@noun(nom,sing,_), 	1, 'wine in nominative').
t(157, "ghvinom", 		@noun(erg,sing,_), 	1, 'wine in ergative').
t(158, "ghvinos", 		@noun(dat,sing,_), 	1, 'wine in dative').
t(159, "ghvinoshi", 		@noun(ine,sing,_), 	1, 'wine in inessive').
t(160, "ghvinoze", 		@noun(loc,sing,_), 	1, 'wine in locative').
t(161, "ghvinosthan",	@noun(com,sing,_), 	1, 'wine in comitative').
t(162, "ghvinod", 		@noun(adv,sing,_), 	1, 'wine in adverbial').
t(163, "ghvinomde", 		@noun(ter,sing,_), 	1, 'wine in terminative').
t(164, "ghvinith", 		@noun(ins,sing,_), 	1, 'wine in instrumental').
t(165, "ghvinis", 		@noun(cnst,sing,_), 	1, 'wine in genetive').
t(166, "ghvinis", 		@noun(gen,sing,_), 	1, 'wine in genetive').
t(167, "ghvinisken", 	@noun(ori,sing,_), 	1, 'wine in orientative').
t(168, "ghvinidan", 		@noun(abl1,sing,_), 	1, 'wine in ablative1').
t(169, "ghvinisgan", 	@noun(abl2,sing,_), 	1, 'wine in ablative2').
t(170, "ghvinisthvis", 	@noun(ben,sing,_), 	1, 'wine in benefactive').

% Declension paradigm: par_a 
t(171, "pepela", 		@noun(nom,sing,_), 	1, 'butterfly in nominative').
t(172, "pepelam", 		@noun(erg,sing,_), 	1, 'butterfly in ergative').
t(173, "pepelas", 		@noun(dat,sing,_), 	1, 'butterfly in dative').
t(174, "pepelashi", 		@noun(ine,sing,_), 	1, 'butterfly in inessive').
t(175, "pepelaze", 		@noun(loc,sing,_), 	1, 'butterfly in locative').
t(176, "pepelasthan", 	@noun(com,sing,_), 	1, 'butterfly in comitative').
t(177, "peplad", 		@noun(adv,sing,_), 	1, 'butterfly in adverbial').
t(178, "peplamde", 		@noun(ter,sing,_), 	1, 'butterfly in terminative').
t(179, "peplith", 		@noun(ins,sing,_), 	1, 'butterfly in instrumental').
t(180, "peplis", 		@noun(cnst,sing,_), 	1, 'butterfly in genetive').
t(181, "peplis", 		@noun(gen,sing,_), 	1, 'butterfly in genetive').
t(182, "peplisken", 		@noun(ori,sing,_), 	1, 'butterfly in orientative').
t(183, "peplidan", 		@noun(abl1,sing,_), 	1, 'butterfly in ablative1').
t(184, "peplisgan", 		@noun(abl2,sing,_), 	1, 'butterfly in ablative2').
t(185, "peplisthvis", 	@noun(ben,sing,_), 	1, 'butterfly in benefactive').

% % Declension paradigm: par_ou
t(186, "gogo", 		@noun(nom,sing,_), 	1, 'girl in nominative').
t(187, "gogom", 		@noun(erg,sing,_), 	1, 'girl in ergative').
t(188, "gogos", 		@noun(dat,sing,_), 	1, 'girl in dative').
t(189, "gogoshi", 	@noun(ine,sing,_), 	1, 'girl in inessive').
t(190, "gogoze", 	@noun(loc,sing,_), 	1, 'girl in locative').
t(191, "gogosthan", 	@noun(com,sing,_), 	1, 'girl in comitative').
t(192, "gogod", 		@noun(adv,sing,_), 	1, 'girl in adverbial').
t(193, "gogomde", 	@noun(ter,sing,_), 	1, 'girl in terminative').
t(194, "gogothi", 	@noun(ins,sing,_), 	1, 'girl in instrumental').
t(195, "gogos", 	@noun(cnst,sing,_), 	1, 'girl in genetive').
t(196, "gogosi", 	@noun(gen,sing,_), 	1, 'girl in genetive').
t(197, "gogosken", 	@noun(ori,sing,_), 	1, 'girl in orientative').
t(198, "gogodan", 	@noun(abl1,sing,_), 	1, 'girl in ablative1').
t(199, "gogosgan", 	@noun(abl2,sing,_), 	1, 'girl in ablative2').
t(200, "gogosthvis",@noun(ben,sing,_), 	1, 'girl in benefactive').

% Pluralization and declension
t(201, "kacebs", 		@noun(dat,plur,_), 	1, 'man in dative & plural').
t(202, "gogoebi", 		@noun(nom,plur,_), 	1, 'girl in genetive & plural').
t(203, "xeebisken", 	@noun(ori,plur,_), 	1, 'tree in orientative & plural').
t(204, "chaebidan", 	@noun(abl1,plur,_), 	0, '*tea in ablative1 & plural').
t(205, "chaiebidan", 	@noun(abl1,plur,_), 	0, '*tea in ablative1 & plural').
t(206, "ghvinoebisgan", @noun(abl2,plur,_), 	0, '*wine in ablative2 & plural').
t(207, "ghvinoebi",		@noun(nom,plur,_), 	0, '*wine in nominative & plural').
t(208, "peplebisthvis", @noun(ben,plur,_), 	1, 'wine in benefactive & plural').
t(209, "kacebma", 		@noun(erg,plur,_), 	1, 'man in ergative & plural').
t(210, "chaiebi", 		@noun(nom,plur,_), 	0, '*tea in nominative & plural').
t(211, "kacebshi", 		@noun(ine,plur,_), 	1, 'man in inessive & plural').
t(212, "kacebith", 		@noun(ins,plur,_), 	1, 'man in instrumental & plural').


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Test Verb %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Dynamic Conjugation 1 %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


t(213, "vicini",    	@verb([@arg(nom, sing, per1)], [], prs),		1, "present of conj1").
t(214, "icini",    		@verb([@arg(nom, sing, per2)], [], prs),		1, "present of conj1").
t(215, "icinis",		@verb([@arg(nom, sing, per3)], [], prs),		1, "present of conj1").
t(216, "vicinith", 		@verb([@arg(nom, plur, per1)], [], prs), 	1, "present of conj1").
t(217, "icinith", 		@verb([@arg(nom, plur, per2)], [], prs), 	1, "present of conj1").
t(218, "icinian", 		@verb([@arg(nom, plur, per3)], [], prs), 	1, "present of conj1").
t(219, "vicinivar", 	@verb([@arg(nom, sing, per1)], [], prs),		0, "present of conj1").
t(220, "icinixar",		@verb([@arg(nom, sing, per2)], [], prs),		0, "present of conj1").
t(221, "vicinivarth", 	@verb([@arg(nom, plur, per1)], [], prs), 	0, "present of conj1").
t(222, "icinixarth", 	@verb([@arg(nom, plur, per2)], [], prs), 	0, "present of conj1").
t(223, "icinien", 		@verb([@arg(nom, plur, per3)], [], prs), 	0, "present of conj1").

t(224, "vicinodi",  	@verb([@arg(nom, sing, per1)], [], psc), 	1, "past_cont of conj1").
t(225, "icinodi",  		@verb([@arg(nom, sing, per2)], [], psc), 	1, "past_cont of conj1").
t(226, "icinoda",  		@verb([@arg(nom, sing, per3)], [], psc), 	1, "past_cont of conj1").
t(227, "vicinodith",  	@verb([@arg(nom, plur, per1)], [], psc), 	1, "past_cont of conj1").
t(228, "icinodith",  	@verb([@arg(nom, plur, per2)], [], psc), 	1, "past_cont of conj1").
t(229, "icinodnen",		@verb([@arg(nom, plur, per3)], [], psc), 	1, "past_cont of conj1").

t(230, "vicine",  	@verb([@arg(erg, sing, per1)], [], pst), 	1, "past of conj1").
t(231, "icine",  	@verb([@arg(erg, sing, per2)], [], pst), 	1, "past of conj1").
t(232, "icina",  	@verb([@arg(erg, sing, per3)], [], pst), 	1, "past of conj1").
t(233, "vicineth",  @verb([@arg(erg, plur, per1)], [], pst), 	1, "past of conj1").
t(234, "icineth",  	@verb([@arg(erg, plur, per2)], [], pst), 	1, "past of conj1").
t(235, "icines",  	@verb([@arg(erg, plur, per3)], [], pst), 	1, "past of conj1").
t(236, "vicini",  	@verb([@arg(erg, sing, per1)], [], pst), 	0, "past of conj1").
t(237, "icino",  	@verb([@arg(erg, sing, per3)], [], pst), 	0, "past of conj1").

t(238, "vicineb",   @verb([@arg(nom, sing, per1)], [], fut), 		1, "future of conj1").
t(239, "icineb",    @verb([@arg(nom, sing, per2)], [], fut), 		1, "future of conj1").
t(240, "icinebs",   @verb([@arg(nom, sing, per3)], [], fut), 		1, "future of conj1").
t(241, "vicinebth", @verb([@arg(nom, plur, per1)], [], fut), 		1, "future of conj1").
t(242, "icinebth",  @verb([@arg(nom, plur, per2)], [], fut), 		1, "future of conj1").
t(243, "icineben",  @verb([@arg(nom, plur, per3)], [], fut), 		1, "future of conj1").
t(244, "icineban",  @verb([@arg(nom, plur, per3)], [], fut), 		0, "future of conj1").


/*
t(245, "vighimith",    @verb([@arg(nom, plur, per1)], [], prs), 		1, "present of conj1").
t(246, "vighimivarth", @verb([@arg(nom, plur, per1)], [], prs), 		0, "present of conj1"). %!!!
t(247, "ighimodnen",   @verb([@arg(nom, plur, per3)], [], psc), 	1, "past_cont of conj1").
t(248, "ighimebs",     @verb([@arg(nom, sing, per3)], [], fut), 		1, "future of conj1").
t(249, "ighimes",      @verb([@arg(erg, plur, per3)], [], pst), 		1, "past of conj1").


t(250, "vtcuxvarth", @verb([@arg(nom, plur, per1)], [@arg(dat,_,_)], prs),	1, "present of conj1").
t(251, "tcux",       @verb([@arg(nom, sing, per2)], [@arg(loc,_,_)], prs), 	0, "present of conj1"). %!!!
t(252, "tcuxdnen",   @verb([@arg(nom, plur, per3)], [@arg(loc,_,_)], psc), 1, "past_cont of conj1").
t(253, "itcuxebth",  @verb([@arg(nom, plur, per2)], [@arg(loc,_,_)], fut), 	1, "future of conj1").
t(254, "itcuxes",    @verb([@arg(erg, plur, per3)], [@arg(dat,_,_)], pst), 		1, "past of conj1").

*/
t(255, "vrbi",   	@verb([@arg(nom, sing, per1)], [], prs),	1, "present of conj1").
t(256, "rbi",    	@verb([@arg(nom, sing, per2)], [], prs),	1, "present of conj1").
t(257, "rbis",    	@verb([@arg(nom, sing, per3)], [], prs),	1, "present of conj1").
t(258, "vrbith",    @verb([@arg(nom, plur, per1)], [], prs),	1, "present of conj1").
t(259, "rbith",    	@verb([@arg(nom, plur, per2)], [], prs),	1, "present of conj1").
t(260, "rbian",    	@verb([@arg(nom, plur, per3)], [], prs),	1, "present of conj1").
t(261, "vrbivar",   @verb([@arg(nom, sing, per1)], [], prs),	0, "present of conj1").
t(262, "rbixar",    @verb([@arg(nom, sing, per2)], [], prs),	0, "present of conj1").
t(263, "vrbivarth", @verb([@arg(nom, plur, per1)], [], prs),	0, "present of conj1").
t(264, "rbixarth",  @verb([@arg(nom, plur, per2)], [], prs),	0, "present of conj1").
t(265, "rbien",  	@verb([@arg(nom, plur, per3)], [], prs), 0, "present of conj1").

t(266, "vrbodi",   	@verb([@arg(nom, sing, per1)], [], psc),	1, "present of conj1").
t(267, "rbodi",    	@verb([@arg(nom, sing, per2)], [], psc),	1, "present of conj1").
t(268, "rboda",    	@verb([@arg(nom, sing, per3)], [], psc),	1, "present of conj1").
t(269, "vrbodith",  @verb([@arg(nom, plur, per1)], [], psc),	1, "present of conj1").
t(270, "rbodith",   @verb([@arg(nom, plur, per2)], [], psc),	1, "present of conj1").
t(271, "rbodnen",   @verb([@arg(nom, plur, per3)], [], psc),	1, "present of conj1").

t(272, "virbine",   @verb([@arg(erg, sing, per1)], [], pst),	1, "present of conj1").
t(273, "irbine",    @verb([@arg(erg, sing, per2)], [], pst),	1, "present of conj1").
t(274, "irbina",    @verb([@arg(erg, sing, per3)], [], pst),	1, "present of conj1").
t(275, "virbineth", @verb([@arg(erg, plur, per1)], [], pst),	1, "present of conj1").
t(276, "irbineth",  @verb([@arg(erg, plur, per2)], [], pst),	1, "present of conj1").
t(277, "irbines",   @verb([@arg(erg, plur, per3)], [], pst),	1, "present of conj1").
t(278, "irbini",    @verb([@arg(erg, sing, per2)], [], pst),	0, "present of conj1").
t(279, "irbino",    @verb([@arg(erg, sing, per3)], [], pst),	0, "present of conj1").

t(280, "virben",   	@verb([@arg(nom, sing, per1)], [], fut),	1, "present of conj1").
t(281, "irben",    	@verb([@arg(nom, sing, per2)], [], fut),	1, "present of conj1").
t(282, "irbens",    @verb([@arg(nom, sing, per3)], [], fut),	1, "present of conj1").
t(283, "virbenth",  @verb([@arg(nom, plur, per1)], [], fut),	1, "present of conj1").
t(284, "irbenth",   @verb([@arg(nom, plur, per2)], [], fut),	1, "present of conj1").
t(285, "irbenen",   @verb([@arg(nom, plur, per3)], [], fut),	1, "present of conj1").
t(286, "irbenan",   @verb([@arg(nom, plur, per3)], [], fut),	0, "present of conj1").

/*
%cekvav
t(287, "vcekvav",     @verb([@arg(nom, sing, per1)], [], prs), 1, "present of conj1").
t(288, "cekvav",      @verb([@arg(nom, sing, per2)], [], prs), 1, "present of conj1").
t(289, "cekvavs",     @verb([@arg(nom, sing, per3)], [], prs), 1, "present of conj1").
t(290, "vcekvavth",   @verb([@arg(nom, plur, per1)], [], prs), 1, "present of conj1").
t(291, "cekvavth",    @verb([@arg(nom, plur, per2)], [], prs), 1, "present of conj1").
t(292, "cekvaven",    @verb([@arg(nom, plur, per3)], [], prs), 1, "present of conj1").
%cekvavd
t(293, "vcekvavdi",   @verb([@arg(nom, sing, per1)], [], psc), 1, "past_cont of conj1").
t(294, "cekvavdi",    @verb([@arg(nom, sing, per2)], [], psc), 1, "past_cont of conj1").
t(295, "cekvavda",    @verb([@arg(nom, sing, per3)], [], psc), 1, "past_cont of conj1").
t(296, "vcekvavdith", @verb([@arg(nom, plur, per1)], [], psc), 1, "past_cont of conj1").
t(297, "cekvavdith",  @verb([@arg(nom, plur, per2)], [], psc), 1, "past_cont of conj1").
t(298, "cekvavdnen",  @verb([@arg(nom, plur, per3)], [], psc), 1, "past_cont of conj1").
%icekv
t(299, "vicekve",     @verb([@arg(erg, sing, per1)], [], pst), 1, "past of conj1").
t(300, "icekve",      @verb([@arg(erg, sing, per2)], [], pst), 1, "past of conj1").
t(301, "icekva",      @verb([@arg(erg, sing, per3)], [], pst), 1, "past of conj1").
t(302, "vicekveth",   @verb([@arg(erg, plur, per1)], [], pst), 1, "past of conj1").
t(303, "icekveth",    @verb([@arg(erg, plur, per2)], [], pst), 1, "past of conj1").
t(304, "icekves",     @verb([@arg(erg, plur, per3)], [], pst), 1, "past of conj1").
%icekveb
t(305, "vicekveb",    @verb([@arg(nom, sing, per1)], [], fut), 1, "future of conj1").
t(306, "icekveb",     @verb([@arg(nom, sing, per2)], [], fut), 1, "future of conj1").
t(307, "icekvebs",    @verb([@arg(nom, sing, per3)], [], fut), 1, "future of conj1").
t(308, "vicekvebth",  @verb([@arg(nom, plur, per1)], [], fut), 1, "future of conj1").
t(309, "icekvebth",   @verb([@arg(nom, plur, per2)], [], fut), 1, "future of conj1").
t(310, "icekveben",   @verb([@arg(nom, plur, per3)], [], fut), 1, "future of conj1").
*/

% [ga; cha] icina
% [ga] icin
t(311, "gavicine",     @verb([@arg(erg, sing, per1)], [], pst), 1, "past of conj1").
t(312, "gaicine",      @verb([@arg(erg, sing, per2)], [], pst), 1, "past of conj1").
t(313, "gaicina",      @verb([@arg(erg, sing, per3)], [], pst), 1, "past of conj1").
t(314, "gavicineth",   @verb([@arg(erg, plur, per1)], [], pst), 1, "past of conj1").
t(315, "gaicineth",    @verb([@arg(erg, plur, per2)], [], pst), 1, "past of conj1").
t(316, "gaicines",     @verb([@arg(erg, plur, per3)], [], pst), 1, "past of conj1").
t(317, "gavicini",     @verb([@arg(erg, sing, per1)], [], pst), 0, "past of conj1").
t(318, "gaicino",      @verb([@arg(erg, sing, per3)], [], pst), 0, "past of conj1").
% [ga] icineb
t(319, "gavicineb",    @verb([@arg(nom, sing, per1)], [], fut), 1, "future of conj1").
t(320, "gaicineb",     @verb([@arg(nom, sing, per2)], [], fut), 1, "future of conj1").
t(321, "gaicinebs",    @verb([@arg(nom, sing, per3)], [], fut), 1, "future of conj1").
t(322, "gavicinebth",  @verb([@arg(nom, plur, per1)], [], fut), 1, "future of conj1").
t(323, "gaicinebth",   @verb([@arg(nom, plur, per2)], [], fut), 1, "future of conj1").
t(324, "gaicineben",   @verb([@arg(nom, plur, per3)], [], fut), 1, "future of conj1").
t(325, "gaicineban",   @verb([@arg(nom, plur, per3)], [], fut), 0, "future of conj1").

% [cha] icin
t(326, "chavicine",     @verb([@arg(erg, sing, per1)], [], pst), 1, "past of conj1").
t(327, "chaicine",      @verb([@arg(erg, sing, per2)], [], pst), 1, "past of conj1").
t(328, "chaicina",      @verb([@arg(erg, sing, per3)], [], pst), 1, "past of conj1").
t(329, "chavicineth",   @verb([@arg(erg, plur, per1)], [], pst), 1, "past of conj1").
t(330, "chaicineth",    @verb([@arg(erg, plur, per2)], [], pst), 1, "past of conj1").
t(331, "chaicines",     @verb([@arg(erg, plur, per3)], [], pst), 1, "past of conj1").
t(332, "chaicini",      @verb([@arg(erg, sing, per2)], [], pst), 0, "past of conj1").
t(333, "chaicino",      @verb([@arg(erg, sing, per3)], [], pst), 0, "past of conj1").
% [cha] icineb
t(334, "chavicineb",    @verb([@arg(nom, sing, per1)], [], fut), 1, "future of conj1").
t(335, "chaicineb",     @verb([@arg(nom, sing, per2)], [], fut), 1, "future of conj1").
t(336, "chaicinebs",    @verb([@arg(nom, sing, per3)], [], fut), 1, "future of conj1").
t(337, "chavicinebth",  @verb([@arg(nom, plur, per1)], [], fut), 1, "future of conj1").
t(338, "chaicinebth",   @verb([@arg(nom, plur, per2)], [], fut), 1, "future of conj1").
t(339, "chaicineben",   @verb([@arg(nom, plur, per3)], [], fut), 1, "future of conj1").
t(340, "chaicineban",   @verb([@arg(nom, plur, per3)], [], fut), 0, "future of conj1").

/*
% [ga] ighima
% [ga] ighima
t(341, "gavighime",     @verb([@arg(erg, sing, per1)], [], pst), 1, "past of conj1").
t(342, "gaighime",      @verb([@arg(erg, sing, per2)], [], pst), 1, "past of conj1").
t(343, "gaighima",      @verb([@arg(erg, sing, per3)], [], pst), 1, "past of conj1").
t(344, "gavighimeth",   @verb([@arg(erg, plur, per1)], [], pst), 1, "past of conj1").
t(345, "gaighimeth",    @verb([@arg(erg, plur, per2)], [], pst), 1, "past of conj1").
t(346, "gaighimes",     @verb([@arg(erg, plur, per3)], [], pst), 1, "past of conj1").
% [ga] ighimebs
t(347, "gavighimeb",    @verb([@arg(nom, sing, per1)], [], fut), 1, "future of conj1").
t(348, "gaighimeb",     @verb([@arg(nom, sing, per2)], [], fut), 1, "future of conj1").
t(349, "gaighimebs",    @verb([@arg(nom, sing, per3)], [], fut), 1, "future of conj1").
t(350, "gavighimebth",  @verb([@arg(nom, plur, per1)], [], fut), 1, "future of conj1").
t(351, "gaighimebth",   @verb([@arg(nom, plur, per2)], [], fut), 1, "future of conj1").
t(352, "gaighimeben",   @verb([@arg(nom, plur, per3)], [], fut), 1, "future of conj1").


%kivis
%kivi
t(353, "vkivi",     @verb([@arg(nom, sing, per1)], [], prs), 1, "present of conj1").
t(354, "kivi",      @verb([@arg(nom, sing, per2)], [], prs), 1, "present of conj1").
t(355, "kivis",     @verb([@arg(nom, sing, per3)], [], prs), 1, "present of conj1").
t(356, "vkivith",   @verb([@arg(nom, plur, per1)], [], prs), 1, "present of conj1").
t(357, "kivith",    @verb([@arg(nom, plur, per2)], [], prs), 1, "present of conj1").
t(358, "kivian",    @verb([@arg(nom, plur, per3)], [], prs), 1, "present of conj1").
%kiod
t(359, "vkiodi",   @verb([@arg(nom, sing, per1)], [], psc), 1, "past_cont of conj1").
t(360, "kiodi",    @verb([@arg(nom, sing, per2)], [], psc), 1, "past_cont of conj1").
t(361, "kioda",    @verb([@arg(nom, sing, per3)], [], psc), 1, "past_cont of conj1").
t(362, "vkiodith", @verb([@arg(nom, plur, per1)], [], psc), 1, "past_cont of conj1").
t(363, "kiodith",  @verb([@arg(nom, plur, per2)], [], psc), 1, "past_cont of conj1").
t(364, "kiodnen",  @verb([@arg(nom, plur, per3)], [], psc), 1, "past_cont of conj1").
%ikivl
t(365, "vikivle",     @verb([@arg(erg, sing, per1)], [], pst), 1, "past of conj1").
t(366, "ikivle",      @verb([@arg(erg, sing, per2)], [], pst), 1, "past of conj1").
t(367, "ikivla",      @verb([@arg(erg, sing, per3)], [], pst), 1, "past of conj1").
t(368, "vikivleth",   @verb([@arg(erg, plur, per1)], [], pst), 1, "past of conj1").
t(369, "ikivleth",    @verb([@arg(erg, plur, per2)], [], pst), 1, "past of conj1").
t(370, "ikivles",     @verb([@arg(erg, plur, per3)], [], pst), 1, "past of conj1").
%ikivleb
t(371, "vikivleb",    @verb([@arg(nom, sing, per1)], [], fut), 1, "future of conj1").
t(372, "ikivleb",     @verb([@arg(nom, sing, per2)], [], fut), 1, "future of conj1").
t(373, "ikivlebs",    @verb([@arg(nom, sing, per3)], [], fut), 1, "future of conj1").
t(374, "vikivlebth",  @verb([@arg(nom, plur, per1)], [], fut), 1, "future of conj1").
t(375, "ikivlebth",   @verb([@arg(nom, plur, per2)], [], fut), 1, "future of conj1").
t(376, "ikivleben",   @verb([@arg(nom, plur, per3)], [], fut), 1, "future of conj1").

%gakivis
%kivi
t(377, "gavkivi",     @verb([@arg(nom, sing, per1)], [], prs), 1, "present of conj1").
t(378, "gakivi",      @verb([@arg(nom, sing, per2)], [], prs), 1, "present of conj1").
t(379, "gakivis",     @verb([@arg(nom, sing, per3)], [], prs), 1, "present of conj1").
t(380, "gavkivith",   @verb([@arg(nom, plur, per1)], [], prs), 1, "present of conj1").
t(381, "gakivith",    @verb([@arg(nom, plur, per2)], [], prs), 1, "present of conj1").
t(382, "gakivian",    @verb([@arg(nom, plur, per3)], [], prs), 1, "present of conj1").
%kiod
t(383, "gavkiodi",   @verb([@arg(nom, sing, per1)], [], psc), 1, "past_cont of conj1").
t(384, "gakiodi",    @verb([@arg(nom, sing, per2)], [], psc), 1, "past_cont of conj1").
t(385, "gakioda",    @verb([@arg(nom, sing, per3)], [], psc), 1, "past_cont of conj1").
t(386, "gavkiodith", @verb([@arg(nom, plur, per1)], [], psc), 1, "past_cont of conj1").
t(387, "gakiodith",  @verb([@arg(nom, plur, per2)], [], psc), 1, "past_cont of conj1").
t(388, "gakiodnen",  @verb([@arg(nom, plur, per3)], [], psc), 1, "past_cont of conj1").
%ikivl
t(389, "gavikivle",     @verb([@arg(erg, sing, per1)], [], pst), 1, "past of conj1").
t(390, "gaikivle",      @verb([@arg(erg, sing, per2)], [], pst), 1, "past of conj1").
t(391, "gaikivla",      @verb([@arg(erg, sing, per3)], [], pst), 1, "past of conj1").
t(392, "gavikivleth",   @verb([@arg(erg, plur, per1)], [], pst), 1, "past of conj1").
t(393, "gaikivleth",    @verb([@arg(erg, plur, per2)], [], pst), 1, "past of conj1").
t(394, "gaikivles",     @verb([@arg(erg, plur, per3)], [], pst), 1, "past of conj1").
%ikivleb
t(395, "gavikivleb",    @verb([@arg(nom, sing, per1)], [], fut), 1, "future of conj1").
t(396, "gaikivleb",     @verb([@arg(nom, sing, per2)], [], fut), 1, "future of conj1").
t(397, "gaikivlebs",    @verb([@arg(nom, sing, per3)], [], fut), 1, "future of conj1").
t(398, "gavikivlebth",  @verb([@arg(nom, plur, per1)], [], fut), 1, "future of conj1").
t(399, "gaikivlebth",   @verb([@arg(nom, plur, per2)], [], fut), 1, "future of conj1").
t(400, "gaikivleben",   @verb([@arg(nom, plur, per3)], [], fut), 1, "future of conj1").

%daikivla
%ikivl
t(401, "davikivle",     @verb([@arg(erg, sing, per1)], [], pst), 1, "past of conj1").
t(402, "daikivle",      @verb([@arg(erg, sing, per2)], [], pst), 1, "past of conj1").
t(403, "daikivla",      @verb([@arg(erg, sing, per3)], [], pst), 1, "past of conj1").
t(404, "davikivleth",   @verb([@arg(erg, plur, per1)], [], pst), 1, "past of conj1").
t(405, "daikivleth",    @verb([@arg(erg, plur, per2)], [], pst), 1, "past of conj1").
t(406, "daikivles",     @verb([@arg(erg, plur, per3)], [], pst), 1, "past of conj1").
%ikivleb
t(407, "davikivleb",    @verb([@arg(nom, sing, per1)], [], fut), 1, "future of conj1").
t(408, "daikivleb",     @verb([@arg(nom, sing, per2)], [], fut), 1, "future of conj1").
t(409, "daikivlebs",    @verb([@arg(nom, sing, per3)], [], fut), 1, "future of conj1").
t(410, "davikivlebth",  @verb([@arg(nom, plur, per1)], [], fut), 1, "future of conj1").
t(411, "daikivlebth",   @verb([@arg(nom, plur, per2)], [], fut), 1, "future of conj1").
t(412, "daikivleben",   @verb([@arg(nom, plur, per3)], [], fut), 1, "future of conj1").
*/

%[0, mi, mo, a, she, ga, cha, a, da, gada, gadmo, amo, chamo, mimo, shemo] rbis
%rbi
t(413, "vrbi",   		@verb([@arg(nom, sing, per1)], [], prs),	1, "present of conj1").
t(414, "mirbi",    		@verb([@arg(nom, sing, per2)], [], prs),	1, "present of conj1").
t(415, "morbis",    	@verb([@arg(nom, sing, per3)], [], prs),	1, "present of conj1").
t(416, "avrbith",    	@verb([@arg(nom, plur, per1)], [], prs),	1, "present of conj1").
t(417, "sherbith",    	@verb([@arg(nom, plur, per2)], [], prs),	1, "present of conj1").
t(418, "garbian",    	@verb([@arg(nom, plur, per3)], [], prs),	1, "present of conj1").
t(419, "chavrbivar",   	@verb([@arg(nom, sing, per1)], [], prs),	0, "present of conj1").
t(420, "arbixar",    	@verb([@arg(nom, sing, per2)], [], prs),	0, "present of conj1").
t(421, "davrbivarth", 	@verb([@arg(nom, plur, per1)], [], prs),	0, "present of conj1").
t(422, "gadarbixarth",  @verb([@arg(nom, plur, per2)], [], prs),	0, "present of conj1").
t(423, "gadmorbien",  	@verb([@arg(nom, plur, per3)], [], prs), 0, "present of conj1").

t(424, "amovrbodi",   	@verb([@arg(nom, sing, per1)], [], psc),	1, "present of conj1").
t(425, "chamorbodi",    @verb([@arg(nom, sing, per2)], [], psc),	1, "present of conj1").
t(426, "mimorboda",    	@verb([@arg(nom, sing, per3)], [], psc),	1, "present of conj1").
t(427, "shemovrbodith", @verb([@arg(nom, plur, per1)], [], psc),	1, "present of conj1").
t(428, "mirbodith",   	@verb([@arg(nom, plur, per2)], [], psc),	1, "present of conj1").
t(429, "morbodnen",   	@verb([@arg(nom, plur, per3)], [], psc),	1, "present of conj1").

t(430, "avirbine",   	@verb([@arg(erg, sing, per1)], [], pst),	1, "present of conj1").
t(431, "sheirbine",    	@verb([@arg(erg, sing, per2)], [], pst),	1, "present of conj1").
t(432, "gairbina",    	@verb([@arg(erg, sing, per3)], [], pst),	1, "present of conj1").
t(433, "chavirbineth", 	@verb([@arg(erg, plur, per1)], [], pst),	1, "present of conj1").
t(434, "airbineth",  	@verb([@arg(erg, plur, per2)], [], pst),	1, "present of conj1").
t(435, "dairbines",   	@verb([@arg(erg, plur, per3)], [], pst),	1, "present of conj1").
t(436, "gadairbini",    @verb([@arg(erg, sing, per2)], [], pst),	0, "present of conj1").
t(437, "gadmoirbino",   @verb([@arg(erg, sing, per3)], [], pst),	0, "present of conj1").

t(438, "amovirben",   	@verb([@arg(nom, sing, per1)], [], fut),	1, "present of conj1").
t(439, "chamoirben",    @verb([@arg(nom, sing, per2)], [], fut),	1, "present of conj1").
t(440, "mimoirbens",    @verb([@arg(nom, sing, per3)], [], fut),	1, "present of conj1").
t(441, "shemovirbenth", @verb([@arg(nom, plur, per1)], [], fut),	1, "present of conj1").
t(442, "miirbenth",   	@verb([@arg(nom, plur, per2)], [], fut),	1, "present of conj1").
t(443, "moirbenen",   	@verb([@arg(nom, plur, per3)], [], fut),	1, "present of conj1").
t(444, "airbenan",   	@verb([@arg(nom, plur, per3)], [], fut),	0, "present of conj1").


% dums
t(445, "vdumvar",   @verb([@arg(nom, sing, per1)], [], prs),		1, "present of conj1").
t(446, "dumxar",    @verb([@arg(nom, sing, per2)], [], prs),		1, "present of conj1").
t(447, "dums",		@verb([@arg(nom, sing, per3)], [], prs),		1, "present of conj1").
t(448, "vdumvarth", @verb([@arg(nom, plur, per1)], [], prs), 	1, "present of conj1").
t(449, "dumxarth", 	@verb([@arg(nom, plur, per2)], [], prs), 	1, "present of conj1").
t(450, "duman", 	@verb([@arg(nom, plur, per3)], [], prs), 	1, "present of conj1").
t(451, "vdum", 		@verb([@arg(nom, sing, per1)], [], prs),		0, "present of conj1").
t(452, "dum",		@verb([@arg(nom, sing, per2)], [], prs),		0, "present of conj1").
t(453, "vdumth", 	@verb([@arg(nom, plur, per1)], [], prs), 	0, "present of conj1").
t(454, "dumth", 	@verb([@arg(nom, plur, per2)], [], prs), 	0, "present of conj1").
t(455, "dumen", 	@verb([@arg(nom, plur, per3)], [], prs), 	0, "present of conj1").

t(456, "vdumdi",  	@verb([@arg(nom, sing, per1)], [], psc), 	1, "past_cont of conj1").
t(457, "dumdi",  	@verb([@arg(nom, sing, per2)], [], psc), 	1, "past_cont of conj1").
t(458, "dumda",  	@verb([@arg(nom, sing, per3)], [], psc), 	1, "past_cont of conj1").
t(459, "vdumdith",  @verb([@arg(nom, plur, per1)], [], psc), 	1, "past_cont of conj1").
t(460, "dumdith",  	@verb([@arg(nom, plur, per2)], [], psc), 	1, "past_cont of conj1").
t(461, "dumdnen",	@verb([@arg(nom, plur, per3)], [], psc), 	1, "past_cont of conj1").

t(462, "vidume",  	@verb([@arg(erg, sing, per1)], [], pst), 	1, "past of conj1").
t(463, "idume",  	@verb([@arg(erg, sing, per2)], [], pst), 	1, "past of conj1").
t(464, "iduma",  	@verb([@arg(erg, sing, per3)], [], pst), 	1, "past of conj1").
t(465, "vidumeth",  @verb([@arg(erg, plur, per1)], [], pst), 	1, "past of conj1").
t(466, "idumeth",  	@verb([@arg(erg, plur, per2)], [], pst), 	1, "past of conj1").
t(467, "idumes",  	@verb([@arg(erg, plur, per3)], [], pst), 	1, "past of conj1").
t(468, "vidumi",  	@verb([@arg(erg, sing, per1)], [], pst), 	0, "past of conj1").
t(469, "idumo",  	@verb([@arg(erg, sing, per3)], [], pst), 	0, "past of conj1").

t(470, "vidumeb",   @verb([@arg(nom, sing, per1)], [], fut), 		1, "future of conj1").
t(471, "idumeb",    @verb([@arg(nom, sing, per2)], [], fut), 		1, "future of conj1").
t(472, "idumebs",   @verb([@arg(nom, sing, per3)], [], fut), 		1, "future of conj1").
t(473, "vidumebth", @verb([@arg(nom, plur, per1)], [], fut), 		1, "future of conj1").
t(474, "idumebth",  @verb([@arg(nom, plur, per2)], [], fut), 		1, "future of conj1").
t(475, "idumeben",  @verb([@arg(nom, plur, per3)], [], fut), 		1, "future of conj1").
t(476, "idumeban",  @verb([@arg(nom, plur, per3)], [], fut), 		0, "future of conj1").


% bghavis
t(477, "vbghavivar",   	@verb([@arg(nom, sing, per1)], [], prs),		1, "present of conj1").
t(478, "bghavixar",   	@verb([@arg(nom, sing, per2)], [], prs),		1, "present of conj1").
t(479, "bghavis",		@verb([@arg(nom, sing, per3)], [], prs),		1, "present of conj1").
t(480, "vbghavivarth",	@verb([@arg(nom, plur, per1)], [], prs), 	1, "present of conj1").
t(481, "bghavixarth", 	@verb([@arg(nom, plur, per2)], [], prs), 	1, "present of conj1").
t(482, "bghavian", 		@verb([@arg(nom, plur, per3)], [], prs), 	1, "present of conj1").
t(483, "vbghavi", 		@verb([@arg(nom, sing, per1)], [], prs),		1, "present of conj1").
t(484, "bghavi",		@verb([@arg(nom, sing, per2)], [], prs),		1, "present of conj1").
t(485, "vbghavith", 	@verb([@arg(nom, plur, per1)], [], prs), 	1, "present of conj1").
t(486, "bghavith", 		@verb([@arg(nom, plur, per2)], [], prs), 	1, "present of conj1").
t(487, "bghavien", 		@verb([@arg(nom, plur, per3)], [], prs), 	0, "present of conj1").

t(488, "vbghaodi",  @verb([@arg(nom, sing, per1)], [], psc), 	1, "past_cont of conj1").
t(489, "bghaodi",  	@verb([@arg(nom, sing, per2)], [], psc), 	1, "past_cont of conj1").
t(490, "bghaoda",  	@verb([@arg(nom, sing, per3)], [], psc), 	1, "past_cont of conj1").
t(491, "vbghaodith",@verb([@arg(nom, plur, per1)], [], psc), 	1, "past_cont of conj1").
t(492, "bghaodith", @verb([@arg(nom, plur, per2)], [], psc), 	1, "past_cont of conj1").
t(493, "bghaodnen",	@verb([@arg(nom, plur, per3)], [], psc), 	1, "past_cont of conj1").

t(494, "vibghavle",  	@verb([@arg(erg, sing, per1)], [], pst), 	1, "past of conj1").
t(495, "ibghavle",  	@verb([@arg(erg, sing, per2)], [], pst), 	1, "past of conj1").
t(496, "ibghavla",  	@verb([@arg(erg, sing, per3)], [], pst), 	1, "past of conj1").
t(497, "vibghavleth",  	@verb([@arg(erg, plur, per1)], [], pst), 	1, "past of conj1").
t(498, "ibghavleth",  	@verb([@arg(erg, plur, per2)], [], pst), 	1, "past of conj1").
t(499, "ibghavles",  	@verb([@arg(erg, plur, per3)], [], pst), 	1, "past of conj1").
t(500, "vibghavli",  	@verb([@arg(erg, sing, per1)], [], pst), 	0, "past of conj1").
t(501, "ibghavlo",  	@verb([@arg(erg, sing, per3)], [], pst), 	0, "past of conj1").

t(502, "vibghavleb",   @verb([@arg(nom, sing, per1)], [], fut), 		1, "future of conj1").
t(503, "ibghavleb",    @verb([@arg(nom, sing, per2)], [], fut), 		1, "future of conj1").
t(504, "ibghavlebs",   @verb([@arg(nom, sing, per3)], [], fut), 		1, "future of conj1").
t(505, "vibghavlebth", @verb([@arg(nom, plur, per1)], [], fut), 		1, "future of conj1").
t(506, "ibghavlebth",  @verb([@arg(nom, plur, per2)], [], fut), 		1, "future of conj1").
t(507, "ibghavleben",  @verb([@arg(nom, plur, per3)], [], fut), 		1, "future of conj1").
t(508, "ibghavleban",  @verb([@arg(nom, plur, per3)], [], fut), 		0, "future of conj1").
/*
% [da] bghavis
t(509, "davbghavivar",   @verb([@arg(nom, sing, per1)], [], prs), 1, "present of conj1").
t(510, "davbghavivarth", @verb([@arg(nom, plur, per1)], [], prs), 1, "present of conj1").
t(511, "dabghavixarth",  @verb([@arg(nom, plur, per2)], [], prs), 1, "present of conj1").
t(512, "dabghavixar",    @verb([@arg(nom, sing, per2)], [], prs), 1, "present of conj1").
t(513, "davbghavi",      @verb([@arg(nom, sing, per1)], [], prs), 1, "present of conj1").
t(514, "davbghavith",    @verb([@arg(nom, plur, per1)], [], prs), 1, "present of conj1").
t(515, "dabghavith",     @verb([@arg(nom, plur, per2)], [], prs), 1, "present of conj1").
t(516, "dabghavi",       @verb([@arg(nom, sing, per2)], [], prs), 1, "present of conj1").
t(517, "dabghaodith",    @verb([@arg(nom, plur, per2)], [], psc), 1, "past_cont of conj1").
t(518, "daibghavleben",  @verb([@arg(nom, plur, per3)], [], fut), 1, "future of conj1").
t(519, "daibghavleth",   @verb([@arg(erg, plur, per2)], [], pst), 1, "past of conj1").


%cocxlobs
t(520, "vcocxlob",     @verb([@arg(nom, sing, per1)], [], prs), 1, "present of conj1").
t(521, "cocxloben",    @verb([@arg(nom, plur, per3)], [], prs), 1, "present of conj1").
t(522, "cocxlobdi",    @verb([@arg(nom, sing, per2)], [], psc), 1, "past_cont of conj1").
t(523, "vicocxleth",   @verb([@arg(erg, plur, per1)], [], pst), 1, "past of conj1").
t(524, "icocxleben",   @verb([@arg(nom, plur, per3)], [], fut), 1, "future of conj1").
*/

%vtcere
%tcer
t(525, "vtcer",     @verb([@arg(nom, sing, per1)], [@arg(dat,_,per3)], prs), 1, "present of conj1").
t(526, "tcer",      @verb([@arg(nom, sing, per2)], [@arg(dat,_,per3)], prs), 1, "present of conj1").
t(527, "tcers",     @verb([@arg(nom, sing, per3)], [@arg(dat,_,per3)], prs), 1, "present of conj1").
t(528, "vtcerth",   @verb([@arg(nom, plur, per1)], [@arg(dat,_,per3)], prs), 1, "present of conj1").
t(529, "tcerth",    @verb([@arg(nom, plur, per2)], [@arg(dat,_,per3)], prs), 1, "present of conj1").
t(530, "tceren",    @verb([@arg(nom, plur, per3)], [@arg(dat,_,per3)], prs), 1, "present of conj1").
%tcerd
t(531, "vtcerdi",   @verb([@arg(nom, sing, per1)], [@arg(dat,_,per3)], psc), 1, "past_cont of conj1").
t(532, "tcerdi",    @verb([@arg(nom, sing, per2)], [@arg(dat,_,per3)], psc), 1, "past_cont of conj1").
t(533, "tcerda",    @verb([@arg(nom, sing, per3)], [@arg(dat,_,per3)], psc), 1, "past_cont of conj1").
t(534, "vtcerdith", @verb([@arg(nom, plur, per1)], [@arg(dat,_,per3)], psc), 1, "past_cont of conj1").
t(535, "tcerdith",  @verb([@arg(nom, plur, per2)], [@arg(dat,_,per3)], psc), 1, "past_cont of conj1").
t(536, "tcerdnen",  @verb([@arg(nom, plur, per3)], [@arg(dat,_,per3)], psc), 1, "past_cont of conj1").
%tcer
t(537, "vtcere",     @verb([@arg(erg, sing, per1)], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(538, "tcere",      @verb([@arg(erg, sing, per2)], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(539, "tcera",      @verb([@arg(erg, sing, per3)], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(540, "vtcereth",   @verb([@arg(erg, plur, per1)], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(541, "tcereth",    @verb([@arg(erg, plur, per2)], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(542, "tceres",     @verb([@arg(erg, plur, per3)], [@arg(nom,_,per3)], pst), 1, "past of conj1").

% [da, ga, gamo, chamo] tcera
%past
t(543, "davtcere",       @verb([@arg(erg, sing, per1)], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(544, "gatcere",        @verb([@arg(erg, sing, per2)], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(545, "gamotcera",      @verb([@arg(erg, sing, per3)], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(546, "chamovtcereth",  @verb([@arg(erg, plur, per1)], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(547, "datcereth",      @verb([@arg(erg, plur, per2)], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(548, "gatceres",       @verb([@arg(erg, plur, per3)], [@arg(nom,_,per3)], pst), 1, "past of conj1").
%future
t(549, "gamovtcer",      @verb([@arg(nom, sing, per1)], [@arg(dat,_,per3)], fut), 1, "future of conj1").
t(550, "chamotcer",      @verb([@arg(nom, sing, per2)], [@arg(dat,_,per3)], fut), 1, "future of conj1").
t(551, "datcers",        @verb([@arg(nom, sing, per3)], [@arg(dat,_,per3)], fut), 1, "future of conj1").
t(552, "gavtcerth",      @verb([@arg(nom, plur, per1)], [@arg(dat,_,per3)], fut), 1, "future of conj1").
t(553, "gamotcerth",     @verb([@arg(nom, plur, per2)], [@arg(dat,_,per3)], fut), 1, "future of conj1").
t(554, "chamotceren",    @verb([@arg(nom, plur, per3)], [@arg(dat,_,per3)], fut), 1, "future of conj1").

% [cha, amo, gada, gadmo] tcera
%past
t(555, "chavtcere",     @verb([@arg(erg, sing, per1)], [@arg(nom,_,per3), @arg(ine,_,per3)], pst), 1, "past of conj1").
t(556, "amotcere",      @verb([@arg(erg, sing, per2)], [@arg(nom,_,per3), @arg(abl1,_,per3)], pst), 1, "past of conj1").
t(557, "gadatcera",     @verb([@arg(erg, sing, per3)], [@arg(nom,_,per3), @arg((abl1;abl2),_,per3), @arg(ine,_,per3)], pst), 2, "past of conj1").
t(558, "gadmovtcereth", @verb([@arg(erg, plur, per1)], [@arg(nom,_,per3), @arg((abl1;abl2),_,_per3), @arg(ine,_,per3)], pst), 2, "past of conj1").
t(559, "chatcereth",    @verb([@arg(erg, plur, per2)], [@arg(nom,_,per3), @arg(ine,_,per3)], pst), 1, "past of conj1").
t(560, "amotceres",     @verb([@arg(erg, plur, per3)], [@arg(nom,_,per3), @arg(abl1,_,per3)], pst), 1, "past of conj1").
%future
t(561, "gadavtcer",     @verb([@arg(nom, sing, per1)], [@arg(dat,_,per3), @arg((abl1;abl2),_,per3), @arg(ine,_,per3)], fut), 2, "future of conj1").
t(562, "gadmotcer",     @verb([@arg(nom, sing, per2)], [@arg(dat,_,per3), @arg((abl1;abl2),_,per3), @arg(ine,_,per3)], fut), 2, "future of conj1").
t(563, "chatcers",      @verb([@arg(nom, sing, per3)], [@arg(dat,_,per3), @arg(ine,_,per3)], fut), 1, "future of conj1").
t(564, "amovtcerth",    @verb([@arg(nom, plur, per1)],[@arg(dat,_,per3), @arg(abl1,_,per3)], fut), 1, "future of conj1").
t(565, "gadatcerth",    @verb([@arg(nom, plur, per2)], [@arg(dat,_,per3), @arg((abl1;abl2),_,per3), @arg(ine,_,per3)], fut), 2, "future of conj1").
t(566, "gadmotceren",   @verb([@arg(nom, plur, per3)], [@arg(dat,_,per3), @arg((abl1;abl2),_,per3), @arg(ine,_,per3)], fut), 2, "future of conj1").
%t(28, "gadmotceren",   @verb([@arg(nom, plur, per3)],   [@arg(dat,_,per3)], [@arg(ine, num, per3), @arg(abl, num, per3)], fut), 1, "future of conj1 reversed constant frame"). %does not work as lists are sequences in ALE

% [0, a, da, ga, cha, gada, mi, mo, amo, gadmo] tcera
/*
t(567, "vasheneb",     @verb([@arg(nom, sing, per1)], [@arg(dat,_,per3)], prs), 1, "present of conj1").
t(568, "aashene",      @verb([@arg(erg, sing, per2)], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(569, "daashena",     @verb([@arg(erg, sing, per3)], [@arg(nom,_,per3), @arg((dat;loc),_,per3)], pst), 2, "past of conj1").
t(570, "gavasheneth",  @verb([@arg(erg, plur, per1)], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(571, "chaashenebth", @verb([@arg(nom, plur, per2)], [@arg(dat,_,per3), @arg(ine,_,per3)], fut), 1, "future of conj1").
t(572, "gadaasheneben",@verb([@arg(nom, plur, per3)], [@arg(dat,_,per3), @arg(abl1,_,per3)], fut), 1, "future of conj1").
t(573, "mivashene",    @verb([@arg(erg, sing, per1)], [@arg(nom,_,per3), @arg(dat,_,per3)], pst), 1, "past of conj1").
t(574, "moasheneb",    @verb([@arg(nom, sing, per2)], [@arg(dat,_,per3), @arg(dat,_,per3)], fut), 1, "future of conj1").
t(575, "amoashenebs",  @verb([@arg(nom, sing, per3)], [@arg(dat,_,per3)], fut), 1, "future of conj1").
t(576, "moashenebs",   @verb([@arg(nom, sing, per3)], [@arg(dat,_,per3), @arg(dat,_,per3)], fut), 1, "future of conj1").
t(577, "gadavasheneb", @verb([@arg(nom, sing, per1)], [@arg(dat,_,per3), @arg(abl1,_,per3)], fut), 1, "future of conj1").
t(578, "aashena", 	   @verb([@arg(erg, sing, per3)], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(579, "ashenebda",    @verb([@arg(nom, sing, per3)], [@arg(dat,_,per3)], psc), 1, "past_cont of conj1").
*/


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Dynamic Conjugation 2 %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%% PRESENT %%%%%%%%%%%%%%%%%%%
% zrdi__zrdid__zard__zrdi
t(580, "vzrdi",			@verb([@arg(nom, sing, per1), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(581, "vzrdith",		@verb([@arg(nom, plur, per1), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(582, "zrdi",			@verb([@arg(nom, sing, per2), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(583, "zrdith",		@verb([@arg(nom, plur, per2), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(584, "zrdis",		    @verb([@arg(nom, sing, per3), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(585, "zrdian",		@verb([@arg(nom, plur, per3), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(586, "gzrdi",			@verb([@arg(nom, sing, per1), @arg(dat,sing,per2)], [], prs), 1, "present of conj2").
t(587, "gzrdith",		@verb([@arg(nom, plur, per1), @arg(dat,_,per2)], [], prs), 1, "present of conj2").
t(588, "gzrdith",		@verb([@arg(nom, sing, per1), @arg(dat,plur,per2)], [], prs), 1, "present of conj2").
t(589, "gzrdis",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per2)], [], prs), 1, "present of conj2").
t(590, "gzrdith",		@verb([@arg(nom, sing, per3), @arg(dat,plur,per2)], [], prs), 1, "present of conj2").
t(591, "gzrdian",		@verb([@arg(nom, plur, per3), @arg(dat,_,per2)], [], prs), 1, "present of conj2").
t(592, "mzrdi",			@verb([@arg(nom, sing, per2), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(593, "gvzrdi",		@verb([@arg(nom, sing, per2), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(594, "mzrdith",		@verb([@arg(nom, plur, per2), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(595, "gvzrdith",		@verb([@arg(nom, plur, per2), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(596, "mzrdis",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(597, "gvzrdis",		@verb([@arg(nom, sing, per3), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(598, "mzrdian",		@verb([@arg(nom, plur, per3), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(599, "gvzrdian",		@verb([@arg(nom, plur, per3), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").

t(600, "vzrdidi",		@verb([@arg(nom, sing, per1), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(601, "vzrdidith",		@verb([@arg(nom, plur, per1), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(602, "zrdidi",		@verb([@arg(nom, sing, per2), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(603, "zrdidith",		@verb([@arg(nom, plur, per2), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(604, "zrdida",		@verb([@arg(nom, sing, per3), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(605, "zrdidnen",		@verb([@arg(nom, plur, per3), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(606, "gzrdidi",		@verb([@arg(nom, sing, per1), @arg(dat,sing,per2)], [], psc), 1, "past_cont of conj2").
t(607, "gzrdidith",		@verb([@arg(nom, plur, per1), @arg(dat,_,per2)], [], psc), 1, "past_cont of conj2").
t(608, "gzrdidith",		@verb([@arg(nom, sing, per1), @arg(dat,plur,per2)], [], psc), 1, "past_cont of conj2").
t(609, "gzrdida",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per2)], [], psc), 1, "past_cont of conj2").
t(610, "gzrdidath",		@verb([@arg(nom, sing, per3), @arg(dat,plur,per2)], [], psc), 1, "past_cont of conj2").
t(611, "gzrdidnen",		@verb([@arg(nom, plur, per3), @arg(dat,_,per2)], [], psc), 1, "past_cont of conj2").
t(612, "mzrdidi",		@verb([@arg(nom, sing, per2), @arg(dat,sing,per1)], [], psc), 1, "past_cont of conj2").
t(613, "gvzrdidi",		@verb([@arg(nom, sing, per2), @arg(dat,plur,per1)], [], psc), 1, "past_cont of conj2").
t(614, "mzrdidith",		@verb([@arg(nom, plur, per2), @arg(dat,sing,per1)], [], psc), 1, "past_cont of conj2").
t(615, "gvzrdidith",	@verb([@arg(nom, plur, per2), @arg(dat,plur,per1)], [], psc), 1, "past_cont of conj2").
t(616, "mzrdida",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per1)], [], psc), 1, "past_cont of conj2").
t(617, "gvzrdida",		@verb([@arg(nom, sing, per3), @arg(dat,plur,per1)], [], psc), 1, "past_cont of conj2").
t(618, "mzrdidnen",		@verb([@arg(nom, plur, per3), @arg(dat,sing,per1)], [], psc), 1, "past_cont of conj2").
t(619, "gvzrdidnen",	@verb([@arg(nom, plur, per3), @arg(dat,plur,per1)], [], psc), 1, "past_cont of conj2").

t(620, "vzarde",		@verb([@arg(erg, sing, per1), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(621, "vzardeth",		@verb([@arg(erg, plur, per1), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(622, "zarde",			@verb([@arg(erg, sing, per2), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(623, "zardeth",		@verb([@arg(erg, plur, per2), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(624, "zarda",		    @verb([@arg(erg, sing, per3), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(625, "zardes",		@verb([@arg(erg, plur, per3), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(626, "gzarde",		@verb([@arg(erg, sing, per1), @arg(nom,sing,per2)], [], pst), 1, "past of conj2").
t(627, "gzardeth",		@verb([@arg(erg, plur, per1), @arg(nom,_,per2)], [], pst), 1, "past of conj2").
t(628, "gzardeth",		@verb([@arg(erg, sing, per1), @arg(nom,plur,per2)], [], pst), 1, "past of conj2").
t(629, "gzarda",		@verb([@arg(erg, sing, per3), @arg(nom,sing,per2)], [], pst), 1, "past of conj2").
t(630, "gzardath",		@verb([@arg(erg, sing, per3), @arg(nom,plur,per2)], [], pst), 1, "past of conj2").
t(631, "gzardes",		@verb([@arg(erg, plur, per3), @arg(nom,_,per2)], [], pst), 1, "past of conj2").
t(632, "mzarde",		@verb([@arg(erg, sing, per2), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(633, "gvzarde",		@verb([@arg(erg, sing, per2), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").
t(634, "mzardeth",		@verb([@arg(erg, plur, per2), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(635, "gvzardeth",		@verb([@arg(erg, plur, per2), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").
t(636, "mzarda",		@verb([@arg(erg, sing, per3), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(637, "gvzarda",		@verb([@arg(erg, sing, per3), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").
t(638, "mzardes",		@verb([@arg(erg, plur, per3), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(639, "gvzardes",		@verb([@arg(erg, plur, per3), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").

% agh- mzrdis, gzrdi, zrdi
t(640, "aghvzarde",		@verb([@arg(erg, sing, per1), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(641, "aghvzardeth",	@verb([@arg(erg, plur, per1), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(642, "aghzarde",		@verb([@arg(erg, sing, per2), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(643, "aghzardeth",	@verb([@arg(erg, plur, per2), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(644, "aghzarda",		@verb([@arg(erg, sing, per3), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(645, "aghzardes",		@verb([@arg(erg, plur, per3), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(646, "aghgzarde",		@verb([@arg(erg, sing, per1), @arg(nom,sing,per2)], [], pst), 1, "past of conj2").
t(647, "aghgzardeth",	@verb([@arg(erg, plur, per1), @arg(nom,_,per2)], [], pst), 1, "past of conj2").
t(648, "aghgzardeth",	@verb([@arg(erg, sing, per1), @arg(nom,plur,per2)], [], pst), 1, "past of conj2").
t(649, "aghgzarda",		@verb([@arg(erg, sing, per3), @arg(nom,sing,per2)], [], pst), 1, "past of conj2").
t(650, "aghgzardath",	@verb([@arg(erg, sing, per3), @arg(nom,plur,per2)], [], pst), 1, "past of conj2").
t(651, "aghgzardes",	@verb([@arg(erg, plur, per3), @arg(nom,_,per2)], [], pst), 1, "past of conj2").
t(652, "aghmzarde",		@verb([@arg(erg, sing, per2), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(653, "aghgvzarde",	@verb([@arg(erg, sing, per2), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").
t(654, "aghmzardeth",	@verb([@arg(erg, plur, per2), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(655, "aghgvzardeth",	@verb([@arg(erg, plur, per2), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").
t(656, "aghmzarda",		@verb([@arg(erg, sing, per3), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(657, "aghgvzarda",	@verb([@arg(erg, sing, per3), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").
t(658, "aghmzardes",	@verb([@arg(erg, plur, per3), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(659, "aghgvzardes",	@verb([@arg(erg, plur, per3), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").

t(660, "aghvzrdi",		@verb([@arg(nom, sing, per1), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(661, "aghvzrdith",	@verb([@arg(nom, plur, per1), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(662, "aghzrdi",		@verb([@arg(nom, sing, per2), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(663, "aghzrdith",		@verb([@arg(nom, plur, per2), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(664, "aghzrdis",		@verb([@arg(nom, sing, per3), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(665, "aghzrdian",		@verb([@arg(nom, plur, per3), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(666, "aghgzrdi",		@verb([@arg(nom, sing, per1), @arg(dat,sing,per2)], [], fut), 1, "future of conj2").
t(667, "aghgzrdith",	@verb([@arg(nom, plur, per1), @arg(dat,_,per2)], [], fut), 1, "future of conj2").
t(668, "aghgzrdith",	@verb([@arg(nom, sing, per1), @arg(dat,plur,per2)], [], fut), 1, "future of conj2").
t(669, "aghgzrdis",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per2)], [], fut), 1, "future of conj2").
t(670, "aghgzrdith",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per2)], [], fut), 1, "future of conj2").
t(671, "aghgzrdian",	@verb([@arg(nom, plur, per3), @arg(dat,_,per2)], [], fut), 1, "future of conj2").
t(672, "aghmzrdi",		@verb([@arg(nom, sing, per2), @arg(dat,sing,per1)], [], fut), 1, "future of conj2").
t(673, "aghgvzrdi",		@verb([@arg(nom, sing, per2), @arg(dat,plur,per1)], [], fut), 1, "future of conj2").
t(674, "aghmzrdith",	@verb([@arg(nom, plur, per2), @arg(dat,sing,per1)], [], fut), 1, "future of conj2").
t(675, "aghgvzrdith",	@verb([@arg(nom, plur, per2), @arg(dat,plur,per1)], [], fut), 1, "future of conj2").
t(676, "aghmzrdis",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per1)], [], fut), 1, "future of conj2").
t(677, "aghgvzrdis",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per1)], [], fut), 1, "future of conj2").
t(678, "aghmzrdian",	@verb([@arg(nom, plur, per3), @arg(dat,sing,per1)], [], fut), 1, "future of conj2").
t(679, "aghgvzrdian",	@verb([@arg(nom, plur, per3), @arg(dat,plur,per1)], [], fut), 1, "future of conj2").

% michivis, gichivi, uchivi
t(680, "vuchivi",		@verb([@arg(nom, sing, per1), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(681, "vuchivivar",	@verb([@arg(nom, sing, per1), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(682, "vuchivith",		@verb([@arg(nom, plur, per1), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(683, "vuchivivarth",	@verb([@arg(nom, plur, per1), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(684, "uchivi",		@verb([@arg(nom, sing, per2), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(685, "uchivixar",		@verb([@arg(nom, sing, per2), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(686, "uchivith",		@verb([@arg(nom, plur, per2), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(687, "uchivixarth",	@verb([@arg(nom, plur, per2), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(688, "uchivis",		@verb([@arg(nom, sing, per3), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(689, "uchivian",		@verb([@arg(nom, plur, per3), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(690, "gichivi",		@verb([@arg(nom, sing, per1), @arg(dat,sing,per2)], [], prs), 1, "present of conj2").
t(691, "gichivivar",	@verb([@arg(nom, sing, per1), @arg(dat,sing,per2)], [], prs), 1, "present of conj2").
t(692, "gichivith",		@verb([@arg(nom, plur, per1), @arg(dat,_,per2)], [], prs), 1, "present of conj2").
t(693, "gichivivarth",	@verb([@arg(nom, plur, per1), @arg(dat,_,per2)], [], prs), 1, "present of conj2").
t(694, "gichivith",		@verb([@arg(nom, sing, per1), @arg(dat,plur,per2)], [], prs), 1, "present of conj2").
t(695, "gichivivarth",	@verb([@arg(nom, sing, per1), @arg(dat,plur,per2)], [], prs), 1, "present of conj2").
t(696, "gichivis",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per2)], [], prs), 1, "present of conj2").
t(697, "gichivith",		@verb([@arg(nom, sing, per3), @arg(dat,plur,per2)], [], prs), 1, "present of conj2").
t(698, "gichivian",		@verb([@arg(nom, plur, per3), @arg(dat,_,per2)], [], prs), 1, "present of conj2").
t(699, "michivi",		@verb([@arg(nom, sing, per2), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(700, "michivixar",	@verb([@arg(nom, sing, per2), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(701, "gvichivi",		@verb([@arg(nom, sing, per2), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(702, "gvichivixar",	@verb([@arg(nom, sing, per2), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(703, "michivith",		@verb([@arg(nom, plur, per2), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(704, "michivixarth",	@verb([@arg(nom, plur, per2), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(705, "gvichivith",	@verb([@arg(nom, plur, per2), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(706, "gvichivixarth",	@verb([@arg(nom, plur, per2), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(707, "michivis",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(708, "gvichivis",		@verb([@arg(nom, sing, per3), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(709, "michivian",		@verb([@arg(nom, plur, per3), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(710, "gvichivian",	@verb([@arg(nom, plur, per3), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").

t(711, "vuchiodi",		@verb([@arg(nom, sing, per1), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(712, "vuchiodith",	@verb([@arg(nom, plur, per1), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(713, "uchiodi",		@verb([@arg(nom, sing, per2), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(714, "uchiodith",		@verb([@arg(nom, plur, per2), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(715, "uchioda",		@verb([@arg(nom, sing, per3), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(716, "uchiodnen",		@verb([@arg(nom, plur, per3), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(717, "gichiodi",		@verb([@arg(nom, sing, per1), @arg(dat,sing,per2)], [], psc), 1, "past_cont of conj2").
t(718, "gichiodith",	@verb([@arg(nom, plur, per1), @arg(dat,_,per2)], [], psc), 1, "past_cont of conj2").
t(719, "gichiodith",	@verb([@arg(nom, sing, per1), @arg(dat,plur,per2)], [], psc), 1, "past_cont of conj2").
t(720, "gichioda",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per2)], [], psc), 1, "past_cont of conj2").
t(721, "gichiodath",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per2)], [], psc), 1, "past_cont of conj2").
t(722, "gichiodnen",	@verb([@arg(nom, plur, per3), @arg(dat,_,per2)], [], psc), 1, "past_cont of conj2").
t(723, "michiodi",		@verb([@arg(nom, sing, per2), @arg(dat,sing,per1)], [], psc), 1, "past_cont of conj2").
t(724, "gvichiodi",		@verb([@arg(nom, sing, per2), @arg(dat,plur,per1)], [], psc), 1, "past_cont of conj2").
t(725, "michiodith",	@verb([@arg(nom, plur, per2), @arg(dat,sing,per1)], [], psc), 1, "past_cont of conj2").
t(726, "gvichiodith",	@verb([@arg(nom, plur, per2), @arg(dat,plur,per1)], [], psc), 1, "past_cont of conj2").
t(727, "michioda",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per1)], [], psc), 1, "past_cont of conj2").
t(728, "gvichioda",		@verb([@arg(nom, sing, per3), @arg(dat,plur,per1)], [], psc), 1, "past_cont of conj2").
t(729, "michiodnen",	@verb([@arg(nom, plur, per3), @arg(dat,sing,per1)], [], psc), 1, "past_cont of conj2").
t(730, "gvichiodnen",	@verb([@arg(nom, plur, per3), @arg(dat,plur,per1)], [], psc), 1, "past_cont of conj2").

t(731, "vuchivle",		@verb([@arg(erg, sing, per1), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(732, "vuchivleth",	@verb([@arg(erg, plur, per1), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(733, "uchivle",		@verb([@arg(erg, sing, per2), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(734, "uchivleth",		@verb([@arg(erg, plur, per2), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(735, "uchivla",		@verb([@arg(erg, sing, per3), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(736, "uchivles",		@verb([@arg(erg, plur, per3), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(737, "gichivle",		@verb([@arg(erg, sing, per1), @arg(nom,sing,per2)], [], pst), 1, "past of conj2").
t(738, "gichivleth",	@verb([@arg(erg, plur, per1), @arg(nom,_,per2)], [], pst), 1, "past of conj2").
t(739, "gichivleth",	@verb([@arg(erg, sing, per1), @arg(nom,plur,per2)], [], pst), 1, "past of conj2").
t(740, "gichivla",		@verb([@arg(erg, sing, per3), @arg(nom,sing,per2)], [], pst), 1, "past of conj2").
t(741, "gichivlath",	@verb([@arg(erg, sing, per3), @arg(nom,plur,per2)], [], pst), 1, "past of conj2").
t(742, "gichivles",		@verb([@arg(erg, plur, per3), @arg(nom,_,per2)], [], pst), 1, "past of conj2").
t(743, "michivle",		@verb([@arg(erg, sing, per2), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(744, "gvichivle",		@verb([@arg(erg, sing, per2), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").
t(745, "michivleth",	@verb([@arg(erg, plur, per2), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(746, "gvichivleth",	@verb([@arg(erg, plur, per2), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").
t(747, "michivla",		@verb([@arg(erg, sing, per3), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(748, "gvichivla",		@verb([@arg(erg, sing, per3), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").
t(749, "michivles",		@verb([@arg(erg, plur, per3), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(750, "gvichivles",	@verb([@arg(erg, plur, per3), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").

t(751, "vuchivleb",		@verb([@arg(nom, sing, per1), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(752, "vuchivlebth",	@verb([@arg(nom, plur, per1), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(753, "uchivleb",		@verb([@arg(nom, sing, per2), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(754, "uchivlebth",	@verb([@arg(nom, plur, per2), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(755, "uchivlebs",		@verb([@arg(nom, sing, per3), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(756, "uchivleben",	@verb([@arg(nom, plur, per3), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(757, "gichivleb",		@verb([@arg(nom, sing, per1), @arg(dat,sing,per2)], [], fut), 1, "future of conj2").
t(758, "gichivlebth",	@verb([@arg(nom, plur, per1), @arg(dat,_,per2)], [], fut), 1, "future of conj2").
t(759, "gichivlebth",	@verb([@arg(nom, sing, per1), @arg(dat,plur,per2)], [], fut), 1, "future of conj2").
t(760, "gichivlebs",	@verb([@arg(nom, sing, per3), @arg(dat,sing,per2)], [], fut), 1, "future of conj2").
t(761, "gichivlebth",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per2)], [], fut), 1, "future of conj2").
t(762, "gichivleben",	@verb([@arg(nom, plur, per3), @arg(dat,_,per2)], [], fut), 1, "future of conj2").
t(763, "michivleb",		@verb([@arg(nom, sing, per2), @arg(dat,sing,per1)], [], fut), 1, "future of conj2").
t(764, "gvichivleb",	@verb([@arg(nom, sing, per2), @arg(dat,plur,per1)], [], fut), 1, "future of conj2").
t(765, "michivlebth",	@verb([@arg(nom, plur, per2), @arg(dat,sing,per1)], [], fut), 1, "future of conj2").
t(766, "gvichivlebth",	@verb([@arg(nom, plur, per2), @arg(dat,plur,per1)], [], fut), 1, "future of conj2").
t(767, "michivlebs",	@verb([@arg(nom, sing, per3), @arg(dat,sing,per1)], [], fut), 1, "future of conj2").
t(768, "gvichivlebs",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per1)], [], fut), 1, "future of conj2").
t(769, "michivleben",	@verb([@arg(nom, plur, per3), @arg(dat,sing,per1)], [], fut), 1, "future of conj2").
t(770, "gvichivleben",	@verb([@arg(nom, plur, per3), @arg(dat,plur,per1)], [], fut), 1, "future of conj2").

% da-mcinis, da-gcini, da-cini
t(771, "davcini",		@verb([@arg(nom, sing, per1), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(772, "davcinith",		@verb([@arg(nom, plur, per1), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(773, "dascini",		@verb([@arg(nom, sing, per2), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(774, "dascinith",		@verb([@arg(nom, plur, per2), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(775, "dascinis",		@verb([@arg(nom, sing, per3), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(776, "dascinian",		@verb([@arg(nom, plur, per3), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(777, "dagcini",		@verb([@arg(nom, sing, per1), @arg(dat,sing,per2)], [], prs), 1, "present of conj2").
t(778, "dagcinith",		@verb([@arg(nom, plur, per1), @arg(dat,_,per2)], [], prs), 1, "present of conj2").
t(779, "dagcinith",		@verb([@arg(nom, sing, per1), @arg(dat,plur,per2)], [], prs), 1, "present of conj2").
t(780, "dagcinis",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per2)], [], prs), 1, "present of conj2").
t(781, "dagcinith",		@verb([@arg(nom, sing, per3), @arg(dat,plur,per2)], [], prs), 1, "present of conj2").
t(782, "dagcinian",		@verb([@arg(nom, plur, per3), @arg(dat,_,per2)], [], prs), 1, "present of conj2").
t(783, "damcini",		@verb([@arg(nom, sing, per2), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(784, "dagvcini",		@verb([@arg(nom, sing, per2), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(785, "damcinith",		@verb([@arg(nom, plur, per2), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(786, "dagvcinith",	@verb([@arg(nom, plur, per2), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(787, "damcinis",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(788, "dagvcinis",		@verb([@arg(nom, sing, per3), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(789, "damcinian",		@verb([@arg(nom, plur, per3), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(790, "dagvcinian",	@verb([@arg(nom, plur, per3), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").

t(791, "davcinodi",		@verb([@arg(nom, sing, per1), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(792, "davcinodith",	@verb([@arg(nom, plur, per1), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(793, "dascinodi",		@verb([@arg(nom, sing, per2), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(794, "dascinodith",	@verb([@arg(nom, plur, per2), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(795, "dascinoda",		@verb([@arg(nom, sing, per3), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(796, "dascinodnen",	@verb([@arg(nom, plur, per3), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(797, "dagcinodi",		@verb([@arg(nom, sing, per1), @arg(dat,sing,per2)], [], psc), 1, "past_cont of conj2").
t(798, "dagcinodith",	@verb([@arg(nom, plur, per1), @arg(dat,_,per2)], [], psc), 1, "past_cont of conj2").
t(799, "dagcinodith",	@verb([@arg(nom, sing, per1), @arg(dat,plur,per2)], [], psc), 1, "past_cont of conj2").
t(800, "dagcinoda",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per2)], [], psc), 1, "past_cont of conj2").
t(801, "dagcinodath",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per2)], [], psc), 1, "past_cont of conj2").
t(802, "dagcinodnen",	@verb([@arg(nom, plur, per3), @arg(dat,_,per2)], [], psc), 1, "past_cont of conj2").
t(803, "damcinodi",		@verb([@arg(nom, sing, per2), @arg(dat,sing,per1)], [], psc), 1, "past_cont of conj2").
t(804, "dagvcinodi",	@verb([@arg(nom, sing, per2), @arg(dat,plur,per1)], [], psc), 1, "past_cont of conj2").
t(805, "damcinodith",	@verb([@arg(nom, plur, per2), @arg(dat,sing,per1)], [], psc), 1, "past_cont of conj2").
t(806, "dagvcinodith",	@verb([@arg(nom, plur, per2), @arg(dat,plur,per1)], [], psc), 1, "past_cont of conj2").
t(807, "damcinoda",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per1)], [], psc), 1, "past_cont of conj2").
t(808, "dagvcinoda",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per1)], [], psc), 1, "past_cont of conj2").
t(809, "damcinodnen",	@verb([@arg(nom, plur, per3), @arg(dat,sing,per1)], [], psc), 1, "past_cont of conj2").
t(810, "dagvcinodnen",	@verb([@arg(nom, plur, per3), @arg(dat,plur,per1)], [], psc), 1, "past_cont of conj2").

t(811, "davcine",		@verb([@arg(erg, sing, per1), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(812, "davcineth",		@verb([@arg(erg, plur, per1), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(813, "dascine",		@verb([@arg(erg, sing, per2), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(814, "dascineth",		@verb([@arg(erg, plur, per2), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(815, "dascina",		@verb([@arg(erg, sing, per3), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(816, "dascines",		@verb([@arg(erg, plur, per3), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(817, "dagcine",		@verb([@arg(erg, sing, per1), @arg(nom,sing,per2)], [], pst), 1, "past of conj2").
t(818, "dagcineth",		@verb([@arg(erg, plur, per1), @arg(nom,_,per2)], [], pst), 1, "past of conj2").
t(819, "dagcineth",		@verb([@arg(erg, sing, per1), @arg(nom,plur,per2)], [], pst), 1, "past of conj2").
t(820, "dagcina",		@verb([@arg(erg, sing, per3), @arg(nom,sing,per2)], [], pst), 1, "past of conj2").
t(821, "dagcinath",		@verb([@arg(erg, sing, per3), @arg(nom,plur,per2)], [], pst), 1, "past of conj2").
t(822, "dagcines",		@verb([@arg(erg, plur, per3), @arg(nom,_,per2)], [], pst), 1, "past of conj2").
t(823, "damcine",		@verb([@arg(erg, sing, per2), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(824, "dagvcine",		@verb([@arg(erg, sing, per2), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").
t(825, "damcineth",		@verb([@arg(erg, plur, per2), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(826, "dagvcineth",	@verb([@arg(erg, plur, per2), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").
t(827, "damcina",		@verb([@arg(erg, sing, per3), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(828, "dagvcina",		@verb([@arg(erg, sing, per3), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").
t(829, "damcines",		@verb([@arg(erg, plur, per3), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(830, "dagvcines",		@verb([@arg(erg, plur, per3), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").

t(831, "davcineb",		@verb([@arg(nom, sing, per1), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(832, "davcinebth",	@verb([@arg(nom, plur, per1), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(833, "dascineb",		@verb([@arg(nom, sing, per2), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(834, "dascinebth",	@verb([@arg(nom, plur, per2), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(835, "dascinebs",		@verb([@arg(nom, sing, per3), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(836, "dascineben",	@verb([@arg(nom, plur, per3), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(837, "dagcineb",		@verb([@arg(nom, sing, per1), @arg(dat,sing,per2)], [], fut), 1, "future of conj2").
t(838, "dagcinebth",	@verb([@arg(nom, plur, per1), @arg(dat,_,per2)], [], fut), 1, "future of conj2").
t(839, "dagcinebth",	@verb([@arg(nom, sing, per1), @arg(dat,plur,per2)], [], fut), 1, "future of conj2").
t(840, "dagcinebs",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per2)], [], fut), 1, "future of conj2").
t(841, "dagcinebth",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per2)], [], fut), 1, "future of conj2").
t(842, "dagcineben",	@verb([@arg(nom, plur, per3), @arg(dat,_,per2)], [], fut), 1, "future of conj2").
t(843, "damcineb",		@verb([@arg(nom, sing, per2), @arg(dat,sing,per1)], [], fut), 1, "future of conj2").
t(844, "dagvcineb",		@verb([@arg(nom, sing, per2), @arg(dat,plur,per1)], [], fut), 1, "future of conj2").
t(845, "damcinebth",	@verb([@arg(nom, plur, per2), @arg(dat,sing,per1)], [], fut), 1, "future of conj2").
t(846, "dagvcinebth",	@verb([@arg(nom, plur, per2), @arg(dat,plur,per1)], [], fut), 1, "future of conj2").
t(847, "damcinebs",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per1)], [], fut), 1, "future of conj2").
t(848, "dagvcinebs",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per1)], [], fut), 1, "future of conj2").
t(849, "damcineben",	@verb([@arg(nom, plur, per3), @arg(dat,sing,per1)], [], fut), 1, "future of conj2").
t(850, "dagvcineben",	@verb([@arg(nom, plur, per3), @arg(dat,plur,per1)], [], fut), 1, "future of conj2").

/*% mchqmets, gchqmet, chqmet
t(851, "vchqmet",		@verb([@arg(nom, sing, per1), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(852, "vchqmetth",		@verb([@arg(nom, plur, per1), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(853, "chqmet",		@verb([@arg(nom, sing, per2), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(854, "chqmetth",		@verb([@arg(nom, plur, per2), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(855, "chqmets",		@verb([@arg(nom, sing, per3), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(856, "chqmeten",		@verb([@arg(nom, plur, per3), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(857, "gchqmet",		@verb([@arg(nom, sing, per1), @arg(dat,sing,per2)], [], prs), 1, "present of conj2").
t(858, "gchqmetth",		@verb([@arg(nom, plur, per1), @arg(dat,_,per2)], [], prs), 1, "present of conj2").
t(859, "gchqmetth",		@verb([@arg(nom, sing, per1), @arg(dat,plur,per2)], [], prs), 1, "present of conj2").
t(860, "gchqmets",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per2)], [], prs), 1, "present of conj2").
t(861, "gchqmetth",		@verb([@arg(nom, sing, per3), @arg(dat,plur,per2)], [], prs), 1, "present of conj2").
t(862, "gchqmeten",		@verb([@arg(nom, plur, per3), @arg(dat,_,per2)], [], prs), 1, "present of conj2").
t(863, "mchqmet",		@verb([@arg(nom, sing, per2), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(864, "gvchqmet",		@verb([@arg(nom, sing, per2), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(865, "mchqmetth",		@verb([@arg(nom, plur, per2), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(866, "gvchqmetth",	@verb([@arg(nom, plur, per2), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(867, "mchqmets",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(868, "gvchqmets",		@verb([@arg(nom, sing, per3), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(869, "mchqmeten",		@verb([@arg(nom, plur, per3), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(870, "gvchqmeten",	@verb([@arg(nom, plur, per3), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").

% matrialebs, gatrialeb, atrialeb;  % mpatronobs, gpatronob, patronob;  % mamodzravebs, gamodzraveb, amodzraveb
t(871, "vatrialeb",		@verb([@arg(nom, sing, per1), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(872, "vpatronobth",	@verb([@arg(nom, plur, per1), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(873, "amodzraveb",	@verb([@arg(nom, sing, per2), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(874, "atrialebth",	@verb([@arg(nom, plur, per2), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(875, "atrialebs",		@verb([@arg(nom, sing, per3), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(876, "amodzraveben",	@verb([@arg(nom, plur, per3), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(877, "gatrialeb",		@verb([@arg(nom, sing, per1), @arg(dat,sing,per2)], [], prs), 1, "present of conj2").
t(878, "gpatronobth",	@verb([@arg(nom, plur, per1), @arg(dat,_,per2)], [], prs), 1, "present of conj2").
t(879, "gatrialebth",	@verb([@arg(nom, sing, per1), @arg(dat,plur,per2)], [], prs), 1, "present of conj2").
t(880, "gatrialebs",	@verb([@arg(nom, sing, per3), @arg(dat,sing,per2)], [], prs), 1, "present of conj2").
t(881, "gamodzravebth",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per2)], [], prs), 1, "present of conj2").
t(882, "gatrialeben",	@verb([@arg(nom, plur, per3), @arg(dat,_,per2)], [], prs), 1, "present of conj2").
t(883, "mpatronob",		@verb([@arg(nom, sing, per2), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(884, "gvamodzraveb",	@verb([@arg(nom, sing, per2), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(885, "matrialebth",	@verb([@arg(nom, plur, per2), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(886, "gvpatronobth",	@verb([@arg(nom, plur, per2), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(887, "mamodzravebs",	@verb([@arg(nom, sing, per3), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(888, "gvatrialebs",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(889, "mpatronoben",	@verb([@arg(nom, plur, per3), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(890, "gvamodzraveben",@verb([@arg(nom, plur, per3), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
*/

/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%  Conjugation 1 %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% umdzims, ukharia, [she]udzlia, marthebs, hghvidzavs, hshia, stcyins, sdzinavs, esmis, [mo]esmis, acxia
% present
t(891, "mimdzims",     @verb([@arg(dat, sing, per1)], [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(892, "gixaria",      @verb([@arg(dat, sing, per2)], [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(893, "sheudzlia",    @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(894, "sheidzlia",    @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], prs), 0, "present of conj1").
t(895, "gvmarthebs",   @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(896, "gghvidzavth",  @verb([@arg(dat, plur, per2)], [], prs), 1, "present of conj1").
t(897, "hghvidzavs",   @verb([@arg(dat, sing, per3)], [], prs), 1, "present of conj1").
t(898, "hghvidzavth",  @verb([@arg(dat, plur, per3)], [], prs), 1, "present of conj1").
t(899, "hshia",        @verb([@arg(dat, sing, per3)], [], prs), 1, "present of conj1").
t(900, "shia",         @verb([@arg(dat, sing, per3)], [], prs), 0, "present of conj1").
t(901, "hshiath",      @verb([@arg(dat, plur, per3)], [], prs), 1, "present of conj1").
t(902, "gvtcyins",     @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(903, "stcyinth",     @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(904, "gdzinavth",    @verb([@arg(dat, plur, per2)], [], prs), 1, "present of conj1").
t(905, "gesmis",       @verb([@arg(dat, sing, per2)], [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(906, "mogvesmis",    @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(907, "moesmith",     @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(908, "esmith",       @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(909, "esmisth",      @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], prs), 0, "present of conj1").
t(910, "umdzimth",     @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(911, "umdzimsth",    @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], prs), 0, "present of conj1").
t(912, "imdzimsth",    @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], prs), 0, "present of conj1").
t(913, "umdzims",      @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(914, "uxariath",     @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(915, "ixariath",     @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], prs), 0, "present of conj1").
t(916, "uxaria",       @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(917, "ixaria",       @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], prs), 0, "present of conj1").
t(918, "marthebth",    @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(919, "acxiath",      @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(920, "acxia",        @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(921, "gvacxia",      @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
t(922, "gacxia",       @verb([@arg(dat, sing, per2)], [], [@arg(nom,_,per3)], prs), 1, "present of conj1").
% past_cont
t(923, "gimdzimda",     @verb([@arg(dat, sing, per2)], [], [@arg(nom,_,per3)], psc), 1, "past_cont of conj1").
t(924, "gvixaroda",     @verb([@arg(dat, plur, per1)], [], [@arg(nom,_,per3)], psc), 1, "past_cont of conj1").
t(925, "sheedzlo",      @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], psc), 0, "past_cont of conj1").
t(926, "gvmarthebda",   @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], psc), 1, "past_cont of conj1").
t(927, "gghvidzavdath", @verb([@arg(dat, plur, per2)], [], psc), 1, "past_cont of conj1").
t(928, "hghvidzavda",   @verb([@arg(dat, sing, per3)], [], psc), 1, "past_cont of conj1").
t(929, "hghvidzavdath", @verb([@arg(dat, plur, per3)], [], psc), 1, "past_cont of conj1").
t(930, "hshioda",       @verb([@arg(dat, sing, per3)], [], psc), 1, "past_cont of conj1").
t(931, "hshiodath",     @verb([@arg(dat, plur, per3)], [], psc), 1, "past_cont of conj1").
t(932, "gvtcyinda",     @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], psc), 1, "past_cont of conj1").
t(933, "stcyindath",    @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], psc), 1, "past_cont of conj1").
t(934, "gdzinavdath",   @verb([@arg(dat, plur, per2)], [], psc), 1, "past_cont of conj1").
t(935, "gesmoda",       @verb([@arg(dat, sing, per2)], [], [@arg(nom,_,per3)], psc), 1, "past_cont of conj1").
t(936, "mogvesmoda",    @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], psc), 1, "past_cont of conj1").
t(937, "moesmodath",    @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], psc), 1, "past_cont of conj1").
t(938, "esmodath",      @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], psc), 1, "past_cont of conj1").
t(939, "umdzimdath",    @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], psc), 1, "past_cont of conj1").
t(940, "umdzimda",      @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], psc), 1, "past_cont of conj1").
t(941, "uxarodath",     @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], psc), 1, "past_cont of conj1").
t(942, "uxaroda",       @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], psc), 1, "past_cont of conj1").
t(943, "marthebdath",   @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], psc), 1, "past_cont of conj1").
t(944, "acxiodath",     @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], psc), 0, "past_cont of conj1").
t(945, "acxioda",       @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], psc), 0, "past_cont of conj1").
t(946, "gvecxeoda",     @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], psc), 0, "past_cont of conj1").
t(947, "gecxeoda",      @verb([@arg(dat, sing, per2)], [], [@arg(nom,_,per3)], psc), 0, "past_cont of conj1").
% past
t(948, "gemdzima",      @verb([@arg(dat, sing, per2)], [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(949, "gagvexarda",    @verb([@arg(dat, plur, per1)], [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(950, "sheedzlo",      @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(951, "gvemartha",     @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(952, "geghvidzath",   @verb([@arg(dat, plur, per2)], [], pst), 1, "past of conj1").
t(953, "gageghvidzath", @verb([@arg(dat, plur, per2)], [], pst), 1, "past of conj1").
t(954, "eghvidza",      @verb([@arg(dat, sing, per3)], [], pst), 1, "past of conj1").
t(955, "gaeghvidza",    @verb([@arg(dat, sing, per3)], [], pst), 1, "past of conj1").
t(956, "eghvidzath",    @verb([@arg(dat, plur, per3)], [], pst), 1, "past of conj1").
t(957, "moshivda",      @verb([@arg(dat, sing, per3)], [], pst), 1, "past of conj1").
t(958, "moshivdath",    @verb([@arg(dat, plur, per3)], [], pst), 1, "past of conj1").
t(959, "gvetcyina",     @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(960, "etcyinath",     @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(961, "gedzinath",     @verb([@arg(dat, plur, per2)], [], pst), 1, "past of conj1").
t(962, "gesma",         @verb([@arg(dat, sing, per2)], [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(963, "mogvesma",      @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(964, "moesmath",      @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(965, "esmath",        @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(966, "chagesma",      @verb([@arg(dat, sing, per2)], [], [@arg(nom,_,per3), @arg(loc, num, per3)], pst), 1, "past of conj1").
t(967, "chamogvesma",   @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3), @arg(abl1, num, per3)], pst), 1, "past of conj1").
t(968, "shemoesmath",   @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(969, "chamoesmath",   @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3), @arg(abl1, num, per3)], pst), 1, "past of conj1").
t(970, "emdzimath",     @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(971, "emdzima",       @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(972, "gaexardath",    @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(973, "gaexarda",      @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(974, "emarthath",     @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(975, "ecxoth",        @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(976, "ecxo",          @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(977, "gvecxo",        @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(978, "gecxo",         @verb([@arg(dat, sing, per2)], [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(979, "moecxoth",      @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(980, "miecxo",        @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(981, "dagvecxo",      @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
t(982, "dagecxo",       @verb([@arg(dat, sing, per2)], [], [@arg(nom,_,per3)], pst), 1, "past of conj1").
% future
t(983, "gemdzimeba",      @verb([@arg(dat, sing, per2)], [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(984, "gagvexardeba",    @verb([@arg(dat, plur, per1)], [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(985, "sheedzleba",      @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(986, "gvemartheba",     @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(987, "geghvidzebath",   @verb([@arg(dat, plur, per2)], [], fut), 1, "future of conj1").
t(988, "eghvidzeba",      @verb([@arg(dat, sing, per3)], [], fut), 1, "future of conj1").
t(989, "gaeghvidzeba",    @verb([@arg(dat, sing, per3)], [], fut), 1, "future of conj1").
t(990, "eghvidzebath",    @verb([@arg(dat, plur, per3)], [], fut), 1, "future of conj1").
t(991, "gaeghvidzebath",  @verb([@arg(dat, plur, per3)], [], fut), 1, "future of conj1").
t(992, "moshivdeba",      @verb([@arg(dat, sing, per3)], [], fut), 1, "future of conj1").
t(993, "moshivdebath",    @verb([@arg(dat, plur, per3)], [], fut), 1, "future of conj1").
t(994, "gvetcyineba",     @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(995, "etcyinebath",     @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(996, "gedzinebath",     @verb([@arg(dat, plur, per2)], [], fut), 1, "future of conj1").
t(997, "gesmeba",         @verb([@arg(dat, sing, per2)], [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(998, "mogvesmeba",      @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(999, "moesmebath",      @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(1000, "esmebath",        @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(1001, "chagesmebath",    @verb([@arg(dat, plur, per2)], [], [@arg(nom,_,per3), @arg(loc, num, per3)], fut), 1, "future of conj1").
t(1002, "chamogvesmeba",   @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3), @arg(abl1, num, per3)], fut), 1, "future of conj1").
t(1003, "shemoesmebath",   @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(1004, "chamoesmebath",   @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3), @arg(abl1, num, per3)], fut), 1, "future of conj1").
t(1005, "emdzimebath",     @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(1006, "emdzimeba",       @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(1007, "gaexardebath",    @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(1008, "gauxardebath",    @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], fut), 0, "future of conj1").
t(1009, "gaexardeba",      @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(1010, "emarthebath",     @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(1011, "ecxebath",        @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(1012, "ecxeba",          @verb([@arg(dat, sing, per3)], [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(1013, "gvecxeba",        @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(1014, "gecxeba",         @verb([@arg(dat, sing, per2)], [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(1015, "moecxebath",      @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(1016, "miecxebath",      @verb([@arg(dat, plur, per3)],   [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(1017, "dagvecxeba",      @verb([@arg(dat, plur, per1)],   [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
t(1018, "dagecxeba",       @verb([@arg(dat, sing, per2)], [], [@arg(nom,_,per3)], fut), 1, "future of conj1").
*/




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% Static Conjugation 2 %%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% vimalebi
t(1019, "vimalebi",		@verb([@arg(nom, sing, per1)], [], prs), 1, "").
t(1020, "imalebi",     	@verb([@arg(nom, sing, per2)], [], prs), 1, "").
t(1021, "imaleba",     	@verb([@arg(nom, sing, per3)], [], prs), 1, "").
t(1022, "vimalebith",    @verb([@arg(nom, plur, per1)], [], prs), 1, "").
t(1023, "imalebith",     @verb([@arg(nom, plur, per2)], [], prs), 1, "").
t(1024, "imalebian",     @verb([@arg(nom, plur, per3)], [], prs), 1, "").

t(1025, "vimalebodi",    @verb([@arg(nom, sing, per1)], [], psc), 1, "").
t(1026, "imalebodi",     @verb([@arg(nom, sing, per2)], [], psc), 1, "").
t(1027, "imaleboda",     @verb([@arg(nom, sing, per3)], [], psc), 1, "").
t(1028, "vimalebodith",  @verb([@arg(nom, plur, per1)], [], psc), 1, "").
t(1029, "imalebodith",   @verb([@arg(nom, plur, per2)], [], psc), 1, "").
t(1030, "imalebodnen",   @verb([@arg(nom, plur, per3)], [], psc), 1, "").

t(1031, "davimale",     	@verb([@arg(nom, sing, per1)], [], pst), 1, "").
t(1032, "daimale",     	@verb([@arg(nom, sing, per2)], [], pst), 1, "").
t(1033, "daimala",     	@verb([@arg(nom, sing, per3)], [], pst), 1, "").
t(1034, "davimaleth",    @verb([@arg(nom, plur, per1)], [], pst), 1, "").
t(1035, "daimaleth",     @verb([@arg(nom, plur, per2)], [], pst), 1, "").
t(1036, "daimalnen",     @verb([@arg(nom, plur, per3)], [], pst), 1, "").

t(1037, "davimalebi",    @verb([@arg(nom, sing, per1)], [], fut), 1, "").
t(1038, "daimalebi",     @verb([@arg(nom, sing, per2)], [], fut), 1, "").
t(1039, "daimaleba",   	@verb([@arg(nom, sing, per3)], [], fut), 1, "").
t(1040, "davimalebith",  @verb([@arg(nom, plur, per1)], [], fut), 1, "").
t(1041, "daimalebith",   @verb([@arg(nom, plur, per2)], [], fut), 1, "").
t(1042, "daimalebian",   @verb([@arg(nom, plur, per3)], [], fut), 1, "").

% vtcvdebi
t(1043, "vtcvdebi",		@verb([@arg(nom, sing, per1), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(1044, "stcvdebi",		@verb([@arg(nom, sing, per2), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(1045, "stcvdeba",		@verb([@arg(nom, sing, per3), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(1046, "vtcvdebith",	@verb([@arg(nom, plur, per1), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(1047, "stcvdebith",	@verb([@arg(nom, plur, per2), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(1048, "stcvdebian",	@verb([@arg(nom, plur, per3), @arg(dat,_,per3)], [], prs), 1, "present of conj2").
t(1049, "gtcvdebi",		@verb([@arg(nom, sing, per1), @arg(dat,sing,per2)], [], prs), 1, "present of conj2").
t(1050, "gtcvdebith",	@verb([@arg(nom, plur, per1), @arg(dat,_,per2)], 	[], prs), 1, "present of conj2").
t(1051, "gtcvdebith",	@verb([@arg(nom, sing, per1), @arg(dat,plur,per2)], [], prs), 1, "present of conj2").
t(1052, "gtcvdeba",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per2)], [], prs), 1, "present of conj2").
t(1053, "gtcvdebath",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per2)], [], prs), 1, "present of conj2").
t(1054, "gtcvdebian",	@verb([@arg(nom, plur, per3), @arg(dat,_,per2)], 	[], prs), 1, "present of conj2").
t(1055, "mtcvdebi",		@verb([@arg(nom, sing, per2), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(1056, "gvtcvdebi",		@verb([@arg(nom, sing, per2), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(1057, "mtcvdebith",	@verb([@arg(nom, plur, per2), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(1058, "gvtcvdebith",	@verb([@arg(nom, plur, per2), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(1059, "mtcvdeba",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(1060, "gvtcvdeba",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").
t(1061, "mtcvdebian",	@verb([@arg(nom, plur, per3), @arg(dat,sing,per1)], [], prs), 1, "present of conj2").
t(1062, "gvtcvdebian",	@verb([@arg(nom, plur, per3), @arg(dat,plur,per1)], [], prs), 1, "present of conj2").

t(1063, "vtcvdebodi",	@verb([@arg(nom, sing, per1), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(1064, "stcvdebodi",	@verb([@arg(nom, sing, per2), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(1065, "stcvdeboda",	@verb([@arg(nom, sing, per3), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(1066, "vtcvdebodith",	@verb([@arg(nom, plur, per1), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(1067, "stcvdebodith",	@verb([@arg(nom, plur, per2), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(1068, "stcvdebodnen",	@verb([@arg(nom, plur, per3), @arg(dat,_,per3)], [], psc), 1, "past_cont of conj2").
t(1069, "gtcvdebodi",	@verb([@arg(nom, sing, per1), @arg(dat,sing,per2)], [], psc), 1, "past_cont of conj2").
t(1070, "gtcvdebodith",	@verb([@arg(nom, plur, per1), @arg(dat,_,per2)], 	[], psc), 1, "past_cont of conj2").
t(1071, "gtcvdebodith",	@verb([@arg(nom, sing, per1), @arg(dat,plur,per2)], [], psc), 1, "past_cont of conj2").
t(1072, "gtcvdeboda",	@verb([@arg(nom, sing, per3), @arg(dat,sing,per2)], [], psc), 1, "past_cont of conj2").
t(1073, "gtcvdebodath",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per2)], [], psc), 1, "past_cont of conj2").
t(1074, "gtcvdebodnen",	@verb([@arg(nom, plur, per3), @arg(dat,_,per2)], 	[], psc), 1, "past_cont of conj2").
t(1075, "mtcvdebodi",	@verb([@arg(nom, sing, per2), @arg(dat,sing,per1)], [], psc), 1, "past_cont of conj2").
t(1076, "gvtcvdebodi",	@verb([@arg(nom, sing, per2), @arg(dat,plur,per1)], [], psc), 1, "past_cont of conj2").
t(1077, "mtcvdebodith",	@verb([@arg(nom, plur, per2), @arg(dat,sing,per1)], [], psc), 1, "past_cont of conj2").
t(1078, "gvtcvdebodith",@verb([@arg(nom, plur, per2), @arg(dat,plur,per1)], [], psc), 1, "past_cont of conj2").
t(1079, "mtcvdeboda",	@verb([@arg(nom, sing, per3), @arg(dat,sing,per1)], [], psc), 1, "past_cont of conj2").
t(1080, "gvtcvdeboda",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per1)], [], psc), 1, "past_cont of conj2").
t(1081, "mtcvdebodnen",	@verb([@arg(nom, plur, per3), @arg(dat,sing,per1)], [], psc), 1, "past_cont of conj2").
t(1082, "gvtcvdebodnen",@verb([@arg(nom, plur, per3), @arg(dat,plur,per1)], [], psc), 1, "past_cont of conj2").

t(1083, "mivtcvdi",		@verb([@arg(nom, sing, per1), @arg(dat,_,per3)], [], pst), 1, "past of conj2").
t(1084, "mistcvdi",		@verb([@arg(nom, sing, per2), @arg(dat,_,per3)], [], pst), 1, "past of conj2").
t(1085, "mistcvda",		@verb([@arg(nom, sing, per3), @arg(dat,_,per3)], [], pst), 1, "past of conj2").
t(1086, "mivtcvdith",	@verb([@arg(nom, plur, per1), @arg(dat,_,per3)], [], pst), 1, "past of conj2").
t(1087, "mistcvdith",	@verb([@arg(nom, plur, per2), @arg(dat,_,per3)], [], pst), 1, "past of conj2").
t(1088, "mistcvdnen",	@verb([@arg(nom, plur, per3), @arg(dat,_,per3)], [], pst), 1, "past of conj2").
t(1089, "mogtcvdi",		@verb([@arg(nom, sing, per1), @arg(dat,sing,per2)], [], pst), 1, "past of conj2").
t(1090, "mogtcvdith",	@verb([@arg(nom, plur, per1), @arg(dat,_,per2)], 	[], pst), 1, "past of conj2").
t(1091, "mogtcvdith",	@verb([@arg(nom, sing, per1), @arg(dat,plur,per2)], [], pst), 1, "past of conj2").
t(1092, "mogtcvda",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per2)], [], pst), 1, "past of conj2").
t(1093, "mogtcvdath",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per2)], [], pst), 1, "past of conj2").
t(1094, "mogtcvdnen",	@verb([@arg(nom, plur, per3), @arg(dat,_,per2)], 	[], pst), 1, "past of conj2").
t(1095, "momtcvdi",		@verb([@arg(nom, sing, per2), @arg(dat,sing,per1)], [], pst), 1, "past of conj2").
t(1096, "mogvtcvdi",	@verb([@arg(nom, sing, per2), @arg(dat,plur,per1)], [], pst), 1, "past of conj2").
t(1097, "momtcvdith",	@verb([@arg(nom, plur, per2), @arg(dat,sing,per1)], [], pst), 1, "past of conj2").
t(1098, "mogvtcvdith",	@verb([@arg(nom, plur, per2), @arg(dat,plur,per1)], [], pst), 1, "past of conj2").
t(1099, "momtcvda",		@verb([@arg(nom, sing, per3), @arg(dat,sing,per1)], [], pst), 1, "past of conj2").
t(1100, "mogvtcvda",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per1)], [], pst), 1, "past of conj2").
t(1101, "momtcvdnen",	@verb([@arg(nom, plur, per3), @arg(dat,sing,per1)], [], pst), 1, "past of conj2").
t(1102, "mogvtcvdnen",	@verb([@arg(nom, plur, per3), @arg(dat,plur,per1)], [], pst), 1, "past of conj2").

t(1103, "mivtcvdebi",	@verb([@arg(nom, sing, per1), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(1104, "mistcvdebi",	@verb([@arg(nom, sing, per2), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(1105, "mistcvdeba",	@verb([@arg(nom, sing, per3), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(1106, "mivtcvdebith",	@verb([@arg(nom, plur, per1), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(1107, "mistcvdebith",	@verb([@arg(nom, plur, per2), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(1108, "mistcvdebian",	@verb([@arg(nom, plur, per3), @arg(dat,_,per3)], [], fut), 1, "future of conj2").
t(1109, "mogtcvdebi",	@verb([@arg(nom, sing, per1), @arg(dat,sing,per2)], [], fut), 1, "future of conj2").
t(1110, "mogtcvdebith",	@verb([@arg(nom, plur, per1), @arg(dat,_,per2)], 	[], fut), 1, "future of conj2").
t(1111, "mogtcvdebith",	@verb([@arg(nom, sing, per1), @arg(dat,plur,per2)], [], fut), 1, "future of conj2").
t(1112, "mogtcvdeba",	@verb([@arg(nom, sing, per3), @arg(dat,sing,per2)], [], fut), 1, "future of conj2").
t(1113, "mogtcvdebath",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per2)], [], fut), 1, "future of conj2").
t(1114, "mogtcvdebian",	@verb([@arg(nom, plur, per3), @arg(dat,_,per2)], 	[], fut), 1, "future of conj2").
t(1115, "momtcvdebi",	@verb([@arg(nom, sing, per2), @arg(dat,sing,per1)], [], fut), 1, "future of conj2").
t(1116, "mogvtcvdebi",	@verb([@arg(nom, sing, per2), @arg(dat,plur,per1)], [], fut), 1, "future of conj2").
t(1117, "momtcvdebith",	@verb([@arg(nom, plur, per2), @arg(dat,sing,per1)], [], fut), 1, "future of conj2").
t(1118, "mogvtcvdebith",@verb([@arg(nom, plur, per2), @arg(dat,plur,per1)], [], fut), 1, "future of conj2").
t(1119, "momtcvdeba",	@verb([@arg(nom, sing, per3), @arg(dat,sing,per1)], [], fut), 1, "future of conj2").
t(1120, "mogvtcvdeba",	@verb([@arg(nom, sing, per3), @arg(dat,plur,per1)], [], fut), 1, "future of conj2").
t(1121, "momtcvdebian",	@verb([@arg(nom, plur, per3), @arg(dat,sing,per1)], [], fut), 1, "future of conj2").
t(1122, "mogvtcvdebian",@verb([@arg(nom, plur, per3), @arg(dat,plur,per1)], [], fut), 1, "future of conj2").


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% Stative Conjugation 2 %%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% m-iyvars
t(1123, "miyvars",		@verb([@arg(dat, sing, per1), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1124, "giyvars",		@verb([@arg(dat, sing, per2), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1125, "uyvars",		@verb([@arg(dat, sing, per3), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1126, "gviyvars",		@verb([@arg(dat, plur, per1), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1127, "giyvarth",		@verb([@arg(dat, plur, per2), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1128, "uyvarth",		@verb([@arg(dat, plur, per3), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1129, "miyvarxar",	@verb([@arg(dat, sing, per1), @arg(nom,sing,per2)], [], prs), 1, "present of conj2").
t(1130, "gviyvarxar",	@verb([@arg(dat, plur, per1), @arg(nom,sing,per2)], [], prs), 1, "present of conj2").
t(1131, "miyvarxarth",	@verb([@arg(dat, sing, per1), @arg(nom,plur,per2)], [], prs), 1, "present of conj2").
t(1132, "gviyvarxarth",	@verb([@arg(dat, plur, per1), @arg(nom,plur,per2)], [], prs), 1, "present of conj2").
t(1133, "uyvarxar",		@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per2)], [], prs), 1, "present of conj2").
t(1134, "uyvarxarth",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per2)], [], prs), 1, "present of conj2").
t(1135, "giyvarvar",	@verb([@arg(dat, sing, per2), @arg(nom,sing,per1)], [], prs), 1, "present of conj2").
t(1136, "giyvarvarth",	@verb([@arg(dat, _, per2), @arg(nom,plur,per1)], [], prs), 1, "present of conj2").
t(1137, "giyvarvarth",	@verb([@arg(dat, plur, per2), @arg(nom,sing,per1)], [], prs), 1, "present of conj2").
t(1139, "vuyvarvar",	@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per1)], [], prs), 1, "present of conj2").
t(1140, "vuyvarvarth",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per1)], [], prs), 1, "present of conj2").

t(1141, "miyvarda",		@verb([@arg(dat, sing, per1), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1142, "giyvarda",		@verb([@arg(dat, sing, per2), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1143, "uyvarda",		@verb([@arg(dat, sing, per3), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1144, "gviyvarda",	@verb([@arg(dat, plur, per1), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1145, "giyvardath",	@verb([@arg(dat, plur, per2), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1146, "uyvardath",	@verb([@arg(dat, plur, per3), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1147, "miyvardi",		@verb([@arg(dat, sing, per1), @arg(nom,sing,per2)], [], psc), 1, "past_cont of conj2").
t(1148, "gviyvardi",	@verb([@arg(dat, plur, per1), @arg(nom,sing,per2)], [], psc), 1, "past_cont of conj2").
t(1149, "miyvardith",	@verb([@arg(dat, sing, per1), @arg(nom,plur,per2)], [], psc), 1, "past_cont of conj2").
t(1150, "gviyvardith",	@verb([@arg(dat, plur, per1), @arg(nom,plur,per2)], [], psc), 1, "past_cont of conj2").
t(1151, "uyvardi",		@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per2)], [], psc), 1, "past_cont of conj2").
t(1152, "uyvardith",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per2)], [], psc), 1, "past_cont of conj2").
t(1153, "giyvardi",		@verb([@arg(dat, sing, per2), @arg(nom,sing,per1)], [], psc), 1, "past_cont of conj2").
t(1154, "giyvardith",	@verb([@arg(dat, _, per2), @arg(nom,plur,per1)], [], psc), 1, "past_cont of conj2").
t(1155, "giyvardith",	@verb([@arg(dat, plur, per2), @arg(nom,sing,per1)], [], psc), 1, "past_cont of conj2").
t(1157, "vuyvardi",		@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per1)], [], psc), 1, "past_cont of conj2").
t(1158, "vuyvardith",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per1)], [], psc), 1, "past_cont of conj2").

t(1159, "meyvareba",	@verb([@arg(dat, sing, per1), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1160, "geyvareba",	@verb([@arg(dat, sing, per2), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1161, "eyvareba",		@verb([@arg(dat, sing, per3), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1162, "gveyvareba",	@verb([@arg(dat, plur, per1), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1163, "geyvarebath",	@verb([@arg(dat, plur, per2), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1164, "eyvarebath",	@verb([@arg(dat, plur, per3), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1165, "meyvarebi",	@verb([@arg(dat, sing, per1), @arg(nom,sing,per2)], [], fut), 1, "future of conj2").
t(1166, "gveyvarebi",	@verb([@arg(dat, plur, per1), @arg(nom,sing,per2)], [], fut), 1, "future of conj2").
t(1167, "meyvarebith",	@verb([@arg(dat, sing, per1), @arg(nom,plur,per2)], [], fut), 1, "future of conj2").
t(1168, "gveyvarebith",	@verb([@arg(dat, plur, per1), @arg(nom,plur,per2)], [], fut), 1, "future of conj2").
t(1169, "eyvarebi",		@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per2)], [], fut), 1, "future of conj2").
t(1170, "eyvarebith",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per2)], [], fut), 1, "future of conj2").
t(1171, "geyvarebi",	@verb([@arg(dat, sing, per2), @arg(nom,sing,per1)], [], fut), 1, "future of conj2").
t(1172, "geyvarebith",	@verb([@arg(dat, _, per2), @arg(nom,plur,per1)], [], fut), 1, "future of conj2").
t(1173, "geyvarebith",	@verb([@arg(dat, plur, per2), @arg(nom,sing,per1)], [], fut), 1, "future of conj2").
t(1175, "veyvarebi",	@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per1)], [], fut), 1, "future of conj2").
t(1176, "veyvarebith",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per1)], [], fut), 1, "future of conj2").

%%% m-enatreba
t(1177, "menatreba",	@verb([@arg(dat, sing, per1), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1178, "genatreba",	@verb([@arg(dat, sing, per2), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1179, "enatreba",		@verb([@arg(dat, sing, per3), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1180, "gvenatreba",	@verb([@arg(dat, plur, per1), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1181, "genatrebath",	@verb([@arg(dat, plur, per2), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1182, "enatrebath",	@verb([@arg(dat, plur, per3), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1183, "menatrebi",	@verb([@arg(dat, sing, per1), @arg(nom,sing,per2)], [], prs), 1, "present of conj2").
t(1184, "gvenatrebi",	@verb([@arg(dat, plur, per1), @arg(nom,sing,per2)], [], prs), 1, "present of conj2").
t(1185, "menatrebith",	@verb([@arg(dat, sing, per1), @arg(nom,plur,per2)], [], prs), 1, "present of conj2").
t(1186, "gvenatrebith",	@verb([@arg(dat, plur, per1), @arg(nom,plur,per2)], [], prs), 1, "present of conj2").
t(1187, "enatrebi",		@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per2)], [], prs), 1, "present of conj2").
t(1188, "enatrebith",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per2)], [], prs), 1, "present of conj2").
t(1189, "genatrebi",	@verb([@arg(dat, sing, per2), @arg(nom,sing,per1)], [], prs), 1, "present of conj2").
t(1190, "genatrebith",	@verb([@arg(dat, _, per2), @arg(nom,plur,per1)], [], prs), 1, "present of conj2").
t(1191, "genatrebith",	@verb([@arg(dat, plur, per2), @arg(nom,sing,per1)], [], prs), 1, "present of conj2").
t(1193, "venatrebi",	@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per1)], [], prs), 1, "present of conj2").
t(1194, "venatrebith",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per1)], [], prs), 1, "present of conj2").

t(1195, "menatreboda",	@verb([@arg(dat, sing, per1), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1196, "genatreboda",	@verb([@arg(dat, sing, per2), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1197, "enatreboda",	@verb([@arg(dat, sing, per3), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1198, "gvenatreboda",	@verb([@arg(dat, plur, per1), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1199, "genatrebodath",@verb([@arg(dat, plur, per2), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1200, "enatrebodath",	@verb([@arg(dat, plur, per3), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1201, "menatrebodi",	@verb([@arg(dat, sing, per1), @arg(nom,sing,per2)], [], psc), 1, "past_cont of conj2").
t(1202, "gvenatrebodi",	@verb([@arg(dat, plur, per1), @arg(nom,sing,per2)], [], psc), 1, "past_cont of conj2").
t(1203, "menatrebodith",@verb([@arg(dat, sing, per1), @arg(nom,plur,per2)], [], psc), 1, "past_cont of conj2").
t(1204, "gvenatrebodith",@verb([@arg(dat, plur, per1), @arg(nom,plur,per2)], [], psc), 1, "past_cont of conj2").
t(1205, "enatrebodi",	@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per2)], [], psc), 1, "past_cont of conj2").
t(1206, "enatrebodith",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per2)], [], psc), 1, "past_cont of conj2").
t(1207, "genatrebodi",	@verb([@arg(dat, sing, per2), @arg(nom,sing,per1)], [], psc), 1, "past_cont of conj2").
t(1208, "genatrebodith",@verb([@arg(dat, _, per2), @arg(nom,plur,per1)], [], psc), 1, "past_cont of conj2").
t(1209, "genatrebodith",@verb([@arg(dat, plur, per2), @arg(nom,sing,per1)], [], psc), 1, "past_cont of conj2").
t(1211, "venatrebodi",	@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per1)], [], psc), 1, "past_cont of conj2").
t(1212, "venatrebodith",@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per1)], [], psc), 1, "past_cont of conj2").

t(1213, "momenatra",	@verb([@arg(dat, sing, per1), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(1214, "mogenatra",	@verb([@arg(dat, sing, per2), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(1215, "moenatra",		@verb([@arg(dat, sing, per3), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(1216, "mogvenatra",	@verb([@arg(dat, plur, per1), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(1217, "mogenatrath",	@verb([@arg(dat, plur, per2), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(1218, "moenatrath",	@verb([@arg(dat, plur, per3), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(1219, "momenatre",	@verb([@arg(dat, sing, per1), @arg(nom,sing,per2)], [], pst), 1, "past of conj2").
t(1220, "mogvenatre",	@verb([@arg(dat, plur, per1), @arg(nom,sing,per2)], [], pst), 1, "past of conj2").
t(1221, "momenatreth",	@verb([@arg(dat, sing, per1), @arg(nom,plur,per2)], [], pst), 1, "past of conj2").
t(1222, "mogvenatreth",	@verb([@arg(dat, plur, per1), @arg(nom,plur,per2)], [], pst), 1, "past of conj2").
t(1223, "moenatre",		@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per2)], [], pst), 1, "past of conj2").
t(1224, "moenatreth",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per2)], [], pst), 1, "past of conj2").
t(1225, "mogenatre",	@verb([@arg(dat, sing, per2), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(1226, "mogenatreth",	@verb([@arg(dat, _, per2), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").
t(1227, "mogenatreth",	@verb([@arg(dat, plur, per2), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(1229, "movenatre",	@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(1230, "movenatreth",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per1)], [], pst), 1, "past of conj2").

t(1231, "momenatreba",	@verb([@arg(dat, sing, per1), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1232, "mogenatreba",	@verb([@arg(dat, sing, per2), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1233, "moenatreba",	@verb([@arg(dat, sing, per3), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1234, "mogvenatreba",	@verb([@arg(dat, plur, per1), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1235, "mogenatrebath",@verb([@arg(dat, plur, per2), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1236, "moenatrebath",	@verb([@arg(dat, plur, per3), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1237, "momenatrebi",	@verb([@arg(dat, sing, per1), @arg(nom,sing,per2)], [], fut), 1, "future of conj2").
t(1238, "mogvenatrebi",	@verb([@arg(dat, plur, per1), @arg(nom,sing,per2)], [], fut), 1, "future of conj2").
t(1239, "momenatrebith",@verb([@arg(dat, sing, per1), @arg(nom,plur,per2)], [], fut), 1, "future of conj2").
t(1240, "mogvenatrebith",@verb([@arg(dat, plur, per1), @arg(nom,plur,per2)], [], fut), 1, "future of conj2").
t(1241, "moenatrebi",	@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per2)], [], fut), 1, "future of conj2").
t(1242, "moenatrebith",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per2)], [], fut), 1, "future of conj2").
t(1243, "mogenatrebi",	@verb([@arg(dat, sing, per2), @arg(nom,sing,per1)], [], fut), 1, "future of conj2").
t(1244, "mogenatrebith",@verb([@arg(dat, _, per2), @arg(nom,plur,per1)], [], fut), 1, "future of conj2").
t(1245, "mogenatrebith",@verb([@arg(dat, plur, per2), @arg(nom,sing,per1)], [], fut), 1, "future of conj2").
t(1247, "movenatrebi",	@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per1)], [], fut), 1, "future of conj2").
t(1248, "movenatrebith",@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per1)], [], fut), 1, "future of conj2").

%%% mo-m-tcons
t(1249, "momtcons",		@verb([@arg(dat, sing, per1), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1250, "mogtcons",		@verb([@arg(dat, sing, per2), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1251, "mostcons",		@verb([@arg(dat, sing, per3), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1252, "mogvtcons",	@verb([@arg(dat, plur, per1), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1253, "mogtconth",	@verb([@arg(dat, plur, per2), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1254, "mostconth",	@verb([@arg(dat, plur, per3), @arg(nom,_,per3)], [], prs), 1, "present of conj2").
t(1255, "momtconxar",	@verb([@arg(dat, sing, per1), @arg(nom,sing,per2)], [], prs), 1, "present of conj2").
t(1256, "mogvtconxar",	@verb([@arg(dat, plur, per1), @arg(nom,sing,per2)], [], prs), 1, "present of conj2").
t(1257, "momtconxarth",	@verb([@arg(dat, sing, per1), @arg(nom,plur,per2)], [], prs), 1, "present of conj2").
t(1258, "mogvtconxarth",@verb([@arg(dat, plur, per1), @arg(nom,plur,per2)], [], prs), 1, "present of conj2").
t(1259, "mostconxar",	@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per2)], [], prs), 1, "present of conj2").
t(1260, "mostconxarth",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per2)], [], prs), 1, "present of conj2").
t(1261, "mogtconvar",	@verb([@arg(dat, sing, per2), @arg(nom,sing,per1)], [], prs), 1, "present of conj2").
t(1262, "mogtconvarth",	@verb([@arg(dat, _, per2), @arg(nom,plur,per1)], [], prs), 1, "present of conj2").
t(1263, "mogtconvarth",	@verb([@arg(dat, plur, per2), @arg(nom,sing,per1)], [], prs), 1, "present of conj2").
t(1265, "movtconvar",	@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per1)], [], prs), 1, "present of conj2").
t(1266, "movtconvarth",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per1)], [], prs), 1, "present of conj2").

t(1267, "momtconda",	@verb([@arg(dat, sing, per1), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1268, "mogtconda",	@verb([@arg(dat, sing, per2), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1269, "mostconda",	@verb([@arg(dat, sing, per3), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1270, "mogvtconda",	@verb([@arg(dat, plur, per1), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1271, "mogtcondath",	@verb([@arg(dat, plur, per2), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1272, "mostcondath",	@verb([@arg(dat, plur, per3), @arg(nom,_,per3)], [], psc), 1, "past_cont of conj2").
t(1273, "momtcondi",	@verb([@arg(dat, sing, per1), @arg(nom,sing,per2)], [], psc), 1, "past_cont of conj2").
t(1274, "mogvtcondi",	@verb([@arg(dat, plur, per1), @arg(nom,sing,per2)], [], psc), 1, "past_cont of conj2").
t(1275, "momtcondith",	@verb([@arg(dat, sing, per1), @arg(nom,plur,per2)], [], psc), 1, "past_cont of conj2").
t(1276, "mogvtcondith",	@verb([@arg(dat, plur, per1), @arg(nom,plur,per2)], [], psc), 1, "past_cont of conj2").
t(1277, "mostcondi",	@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per2)], [], psc), 1, "past_cont of conj2").
t(1278, "mostcondith",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per2)], [], psc), 1, "past_cont of conj2").
t(1279, "mogtcondi",	@verb([@arg(dat, sing, per2), @arg(nom,sing,per1)], [], psc), 1, "past_cont of conj2").
t(1280, "mogtcondith",	@verb([@arg(dat, _, per2), @arg(nom,plur,per1)], [], psc), 1, "past_cont of conj2").
t(1281, "mogtcondith",	@verb([@arg(dat, plur, per2), @arg(nom,sing,per1)], [], psc), 1, "past_cont of conj2").
t(1283, "movtcondi",	@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per1)], [], psc), 1, "past_cont of conj2").
t(1284, "movtcondith",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per1)], [], psc), 1, "past_cont of conj2").

t(1285, "mometcona",	@verb([@arg(dat, sing, per1), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(1286, "mogetcona",	@verb([@arg(dat, sing, per2), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(1287, "moetcona",		@verb([@arg(dat, sing, per3), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(1288, "mogvetcona",	@verb([@arg(dat, plur, per1), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(1289, "mogetconath",	@verb([@arg(dat, plur, per2), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(1290, "moetconath",	@verb([@arg(dat, plur, per3), @arg(nom,_,per3)], [], pst), 1, "past of conj2").
t(1291, "mometcone",	@verb([@arg(dat, sing, per1), @arg(nom,sing,per2)], [], pst), 1, "past of conj2").
t(1292, "mogvetcone",	@verb([@arg(dat, plur, per1), @arg(nom,sing,per2)], [], pst), 1, "past of conj2").
t(1293, "mometconeth",	@verb([@arg(dat, sing, per1), @arg(nom,plur,per2)], [], pst), 1, "past of conj2").
t(1294, "mogvetconeth",	@verb([@arg(dat, plur, per1), @arg(nom,plur,per2)], [], pst), 1, "past of conj2").
t(1295, "moetcone",		@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per2)], [], pst), 1, "past of conj2").
t(1296, "moetconeth",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per2)], [], pst), 1, "past of conj2").
t(1297, "mogetcone",	@verb([@arg(dat, sing, per2), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(1298, "mogetconeth",	@verb([@arg(dat, _, per2), @arg(nom,plur,per1)], [], pst), 1, "past of conj2").
t(1299, "mogetconeth",	@verb([@arg(dat, plur, per2), @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(1301, "movetcone",	@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per1)], [], pst), 1, "past of conj2").
t(1302, "movetconeth",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per1)], [], pst), 1, "past of conj2").

t(1303, "mometconeba",	@verb([@arg(dat, sing, per1), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1304, "mogetconeba",	@verb([@arg(dat, sing, per2), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1305, "moetconeba",	@verb([@arg(dat, sing, per3), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1306, "mogvetconeba",	@verb([@arg(dat, plur, per1), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1307, "mogetconebath",@verb([@arg(dat, plur, per2), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1308, "moetconebath",	@verb([@arg(dat, plur, per3), @arg(nom,_,per3)], [], fut), 1, "future of conj2").
t(1309, "mometconebi",	@verb([@arg(dat, sing, per1), @arg(nom,sing,per2)], [], fut), 1, "future of conj2").
t(1310, "mogvetconebi",	@verb([@arg(dat, plur, per1), @arg(nom,sing,per2)], [], fut), 1, "future of conj2").
t(1311, "mometconebith",@verb([@arg(dat, sing, per1), @arg(nom,plur,per2)], [], fut), 1, "future of conj2").
t(1312, "mogvetconebith",@verb([@arg(dat, plur, per1), @arg(nom,plur,per2)], [], fut), 1, "future of conj2").
t(1313, "moetconebi",	@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per2)], [], fut), 1, "future of conj2").
t(1314, "moetconebith",	@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per2)], [], fut), 1, "future of conj2").
t(1315, "mogetconebi",	@verb([@arg(dat, sing, per2), @arg(nom,sing,per1)], [], fut), 1, "future of conj2").
t(1316, "mogetconebith",@verb([@arg(dat, _, per2), @arg(nom,plur,per1)], [], fut), 1, "future of conj2").
t(1317, "mogetconebith",@verb([@arg(dat, plur, per2), @arg(nom,sing,per1)], [], fut), 1, "future of conj2").
t(1319, "movetconebi",	@verb([@arg(dat, _, per3), 	  @arg(nom,sing,per1)], [], fut), 1, "future of conj2").
t(1320, "movetconebith",@verb([@arg(dat, _, per3), 	  @arg(nom,plur,per1)], [], fut), 1, "future of conj2").

%%% mo-m-tcons
t(1321, "mshia",		@verb([@arg(dat, sing, per1)], [], prs), 1, "present of conj2").
t(1322, "gshia",		@verb([@arg(dat, sing, per2)], [], prs), 1, "present of conj2").
t(1323, "shia",			@verb([@arg(dat, sing, per3)], [], prs), 1, "present of conj2").
t(1324, "gvshia",		@verb([@arg(dat, plur, per1)], [], prs), 1, "present of conj2").
t(1325, "gshiath",		@verb([@arg(dat, plur, per2)], [], prs), 1, "present of conj2").
t(1326, "shiath",		@verb([@arg(dat, plur, per3)], [], prs), 1, "present of conj2").

t(1327, "mshioda",		@verb([@arg(dat, sing, per1)], [], psc), 1, "past_cont of conj2").
t(1328, "gshioda",		@verb([@arg(dat, sing, per2)], [], psc), 1, "past_cont of conj2").
t(1329, "shioda",		@verb([@arg(dat, sing, per3)], [], psc), 1, "past_cont of conj2").
t(1330, "gvshioda",		@verb([@arg(dat, plur, per1)], [], psc), 1, "past_cont of conj2").
t(1331, "gshiodath",	@verb([@arg(dat, plur, per2)], [], psc), 1, "past_cont of conj2").
t(1332, "shiodath",	@verb([@arg(dat, plur, per3)], [], psc), 1, "past_cont of conj2").

t(1333, "meshieba",		@verb([@arg(dat, sing, per1)], [], fut), 1, "future of conj2").
t(1334, "geshieba",		@verb([@arg(dat, sing, per2)], [], fut), 1, "future of conj2").
t(1335, "eshieba",		@verb([@arg(dat, sing, per3)], [], fut), 1, "future of conj2").
t(1336, "gveshieba",	@verb([@arg(dat, plur, per1)], [], fut), 1, "future of conj2").
t(1337, "geshiebath",	@verb([@arg(dat, plur, per2)], [], fut), 1, "future of conj2").
t(1338, "eshiebath",	@verb([@arg(dat, plur, per3)], [], fut), 1, "future of conj2").



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% Test Noun Phrase %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t(1339, "did kacs", 		(phrase, cat:(@noun_ss(dat,sing,_,_))), 	1, 'big man in dative').
t(1340, "didma kacebma", (phrase, cat:(@noun_ss(erg,plur,_,_))), 	1, 'big men in ergative').
t(1341, "patara gogos", 	(phrase, cat:(@noun_ss(dat,sing,_,_))), 	1, 'little girl in dat').
t(1342, "patara gogos", 	(phrase, cat:(@noun_ss(cnst,sing,_,_))), 	1, 'little girl in genetive1').
t(1343, "didi gogosi", 	(phrase, cat:(@noun_ss(gen,sing,_,_))), 	1, 'little girl in genetive2').
t(1344, "didi manqanith",(phrase, cat:(@noun_ss(ins,sing,_,_))), 	1, 'big car in instrumental').
t(1345, "didi gogom", 	bot, 								0, '*big_in_nominative girl_in_ergative').
t(1346, "did gogo", 		bot, 							0, '*').
t(1347, "didi manqanas", bot,						 	0, '*').

t(1348, "kacis manqana",	(phrase, cat:(@noun_ss(nom,sing,_,_))), 	1, '').
t(1349, "gogos peplebma",(phrase, cat:(@noun_ss(erg,plur,_,_))), 	1, '').
t(1350, "kacis gogos", 	(phrase, cat:(@noun_ss(dat,sing,_,_))), 	1, '').
t(1351, "kacis gogos", 	(phrase, cat:(@noun_ss(cnst,sing,_,_))), 	1, '').
t(1352, "peplis chais", 	(phrase, cat:(@noun_ss(dat,sing,_,_))),  1, '').
t(1353, "peplis chais", 	(phrase, cat:(@noun_ss(cnst,sing,_,_))),  1, '').
t(1354, "kacs gogo", 	bot, 							0, '*').
t(1355, "gogo kacis",	bot, 							0, '*').

t(1356, "ubralo maghali kacis tcitheli lamazi manqana",		(phrase, cat:(@noun_ss(nom,sing,_,_))), 	1, '').
t(1357, "kacebis lamazi gogoebis lamazma didma peplebma", 	(phrase, cat:(@noun_ss(erg,plur,_,_))), 	1, '').
t(1358, "cru kacis lamaz maghal gogoebs", 					(phrase, cat:(@noun_ss(dat,plur,_,_))), 	1, '').
t(1359, "maghali kacebis lamazi gogos didi peplebis chai", 	(phrase, cat:(@noun_ss(nom,sing,_,_))),   1, '').
t(1360, "lamazma kacis gogom", 								bot, 							0, '*').
t(1361, "kacis gogos manqanis peplis xe",					(phrase, cat:(@noun_ss(nom,sing,_,_))),   1, '').
t(1362, "did kacis kacs", 									bot, 							0, '*').



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% Complementing Verbs with Noun Phrases %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t(1363, "gogo icinis",			 	@v_exp(e_list, e_list, prs), 	1, '').
t(1364, "gogom gaicina", 		 	@v_exp(e_list, e_list, pst), 		1, '').
t(1365, "didi kaci icinoda", 	 	@v_exp(e_list, e_list, psc), 	1, '').
t(1366, "manqanebi mushaoben", 	 	@v_exp(e_list, e_list, prs),	1, '').
t(1367, "kaci zrdis mgels", 		@v_exp(e_list, e_list, prs),	1, '').
t(1368, "zrdis mgels", 			 	@v_exp(ne_list, e_list, prs),	1, '').
t(1369, "davcinith kacebs",		 	@v_exp(ne_list, e_list, prs),  	1, '').
t(1370, "kacis lamazi gogo icinis",		 	@v_exp(e_list, e_list, prs), 	1, '').
t(1371, "lamazma maghalma gogom gaicina", 	@v_exp(e_list, e_list, pst), 		1, '').
t(1372, "kaci icinoda", 				 	@v_exp(e_list, e_list, psc), 	1, '').
t(1373, "ubralo manqanebi mushaoben", 	 	@v_exp(e_list, e_list, prs),	1, '').
t(1374, "maghali ucxo kacis lamazi axalgazrda gogo zrdis did mgels", @v_exp(e_list, e_list, prs),	1, '').

t(1375, "patara dzaghli mirboda", 			@v_exp(e_list, e_list, psc),	1, '').
t(1376, "tcitheli manqana imushavebs", 		@v_exp(e_list, e_list, fut),	1, '').
t(1377, "lamazi qalma tcers", 				bot,	0, '*').
t(1378, "me mivtcvdebi mthvares", 			@v_exp(e_list, e_list, fut),	1, '').
t(1379, "me mogtcvdi", 						@v_exp(ne_list, e_list, pst),	1, '').
t(1380, "lamazi gogo dascinis ucxo qals",	@v_exp(e_list, e_list, prs),	1, '').
t(1381, "ucxo kacma damcina",				@v_exp(ne_list, e_list, pst),	1, '').
t(1382, "mthvare imaleboda",				@v_exp(e_list, e_list, psc),	1, '').
t(1383, "maghali lamazi gogo ubrazdeba patara dzaghls",	@v_exp(e_list, e_list, prs),	1, '').
t(1384, "cru kacs moetcona ubralo tcitheli manqana",	@v_exp(e_list, e_list, pst),	1, '').
t(1385, "maghal kacebs enatrebath maghali qalebi",		@v_exp(e_list, e_list, prs),	1, '').
t(1386, "patara dzaghlebi thamashoben",			@v_exp(e_list, ne_list, prs),	1, '').
t(1387, "kacebs uyvarth qalebi",				@v_exp(e_list, e_list, prs),	1, '').
t(1388, "did mgels shioda",						@v_exp(e_list, e_list, psc),	1, '').
t(1389, "qalebi endobian kacebs",				@v_exp(e_list, e_list, prs),	1, '').
t(1390, "chven gviyvars lamazi maghali qalebi",	@v_exp(e_list, e_list, prs),	1, '').
t(1391, "ucxo kaci chven gvibrazdeboda",		@v_exp(e_list, e_list, psc),	1, '').
t(1392, "kacebi did mglebs uchivian",			@v_exp(e_list, e_list, prs),	1, '').
t(1393, "chven vdumvarth",						@v_exp(e_list, e_list, prs),	1, '').
t(1394, "enatrebodath patara lamazi dzaghli",	@v_exp(ne_list, e_list, psc),	1, '').

% t(1395, "kkk",	word,	1, '').






