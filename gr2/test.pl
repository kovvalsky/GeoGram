%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% TEST SUITE %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%=====================================
%      Verb complemeted with nouns
%=====================================

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

t(12, "bitchma gaaba thoki",				(phrase, cat:(@verb_ss(e_list, ne_list, pst))),	1, 
	  'The boy stretched the rope').
t(13, "kacma thoki gaaba saxlidan ghobemde",(phrase, cat:(@verb_ss(e_list, e_list, pst))),	1, 
	  'The mam stretched the rope from the house till the fence').
t(14, "saxlidan ghobemde kacma thoki gaaba",(phrase, cat:(@verb_ss(e_list, e_list, pst))),	1, 
	  'The mam stretched the rope from the house till the fence').
t(15, "ghobidan saxlamde kacma thoki gaaba",(phrase, cat:(@verb_ss(e_list, e_list, pst))),	1,
	  'The mam stretched the rope from the fence till the house').
t(16, "ghobidan gaaba saxlamde kacma thoki",(phrase, cat:(@verb_ss(e_list, e_list, pst))),	1, 
	  'The mam stretched the rope from the fence till the house').

%=====================================
%      Verb complemeted with nouns and pronouns
%=====================================

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
t(22, "me gavagzavne shen",			  bot,												0, 
	  '3rd person required 2nd person got').
t(23, "gavagzavne tcerili shvilthan", (phrase, cat:(@verb_ss(ne_list, e_list, pst))),	1, 
	  'I sent a letter to to the son').
t(24, "thqven agzavnith tcerils", 	  (phrase, cat:(@verb_ss(e_list, ne_list, prs))),	1, 
	  'You-pl are sending a letter').
t(25, "gagibav saxlamde thoks", 	  (phrase, cat:(@verb_ss(ne_list, ne_list, fut))),	1, 
	  'I will stretch for you the rope till the house').
t(26, "gagigzavne tcerilebi studentebthan", 	(phrase, cat:(@verb_ss(ne_list, e_list, pst))),	1, 
	  'I sent for you letters to students').
