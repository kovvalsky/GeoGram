%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% PHRASE STRUCTURE RULES %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%=====================================
%       Head Initial PS rule
%=====================================

head_init_phrase ##
    (phrase,
     h_init:plus,
     head_dtr:Head,
     nonh_dtr:NonHead)
===>
    cat> (Head,	h_init:plus),
    cat> (NonHead).
% results head initial phrase
% whose head is also head initial
% i.e. the first word is the head word in the phrase

%=====================================
%       Head Final PS rule
%=====================================

head_fin_phrase ##
    (phrase,
     h_init:minus,
     head_dtr:Head,
     nonh_dtr:NonHead)
===>
    cat> (NonHead),
    cat> (Head).
% results the head final phrase
% without any constraints on the head
