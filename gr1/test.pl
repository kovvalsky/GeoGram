%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% TEST SUITE %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%=====================================
%      Verb complemeted with nouns
%=====================================

t(1, "studenti kithxulobs tcigns",		(phrase, cat:(@verb_ss(e_list))),	1, 
	 'The student reads the book').
t(2, "studentebi kithxuloben tcignebs",	(phrase, cat:(@verb_ss(e_list))),	1, 
	 'students reads books').
t(3, "studentma tcaikithxa tcigni",		(phrase, cat:(@verb_ss(e_list))),	1, 
	 'The student read the book').
t(4, "tcigni tcaikithxa studentma",		(phrase, cat:(@verb_ss(e_list))),	1, 
	 'The student read the book').
t(5, "studentebi kithxuloben",			(phrase, cat:(@verb_ss(ne_list))),	1, 
	 'Students read').

t(6, "studentebs eshiniath gamocdebis",	(phrase, cat:(@verb_ss(e_list))),	1, 
	 'Students are afraid of exams').
t(7, "students eshinia",				(phrase, cat:(@verb_ss(ne_list))),	1, 
	 'Student is afraid of').
t(8, "students eshiniath gamocdebis",	bot,								0, 
	 'verb noun agreemnet in number').

t(9, "kaci gzavnis tcerils shvilthan",	(phrase, cat:(@verb_ss(e_list))),	1, 
     'The man sends the letter tothe son').
t(10, "qalma gaagzavna tcerils",		bot,							0, 
      'wrong case for the noun argumnet').
t(11, "bitchma gaagzavna tcigni",		(phrase, cat:(@verb_ss(ne_list))),	1, 
	 'the boy sent the book').

t(12, "bitchma gaaba thoki",					(phrase, cat:(@verb_ss(ne_list))),	1, 
	 'The boy stretched the rope').
t(13, "kacma thoki gaaba saxlidan ghobemde",	(phrase, cat:(@verb_ss(e_list))),	1, 
      'The mam stretched the rope from the house till the fence').
t(14, "saxlidan ghobemde kacma thoki gaaba",	(phrase, cat:(@verb_ss(e_list))),	1, 
      'The mam stretched the rope from the house till the fence').
t(15, "ghobidan saxlamde kacma thoki gaaba",	(phrase, cat:(@verb_ss(e_list))),	1, 
      'The mam stretched the rope from the fence till the house').
t(16, "ghobidan gaaba saxlamde kacma thoki",	(phrase, cat:(@verb_ss(e_list))),	1, 
      'The mam stretched the rope from the fence till the house').
