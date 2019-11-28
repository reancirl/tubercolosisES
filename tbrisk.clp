(defrule main-conscious
(initial-fact)
=>
(printout t "====================================================== "crlf)
(printout t "   Tuberculosis Risk Analysis using Expert System      "crlf)
(printout t "   Programmed by: Balaba, Madriaga, Quiamco, Rodrigo  "crlf)
(printout t "   E-mail:carloquiamco45@gmail.com                     "crlf)
(printout t "     A simple expert system that measures the risk of  "crlf)
(printout t "     		having Tuberculosis.          	    "crlf)
(printout t "====================================================== "crlf)
(printout t"Conscious of having a TB? (yes/no) ")
(assert(why))
(assert(conscious(read))))

;;;======================================================

(defrule non-conscious
(conscious no)
=>
(printout t "You are not conscious of having TB " crlf)
(bind $?animal notConsciousOfHavingTB)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-conscious
(conscious yes)
=>
(printout t"Living in a community with high TB population ?(yes/no) ")
(assert(communityTB(read))))

;;;======================================================

(defrule non-communityTB
(communityTB no)
=>
(printout t"Living in a community with high HIV population ?(yes/no) ")
(assert(hiv(read))))

;;;======================================================

(defrule non-hiv
(hiv no)
=>
(printout t"Having symptoms ?(yes/no) ")
(assert(symptoms3(read))))

;;;======================================================

(defrule non-symptoms3
(symptoms3 no)
=>
(printout t "You have LOW RISK of TB " crlf)
(bind $?animal notTb1)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-symptoms3
(symptoms3 yes)
=>
(printout t "You have HIGH RISK of TB " crlf)
(bind $?animal Tb1)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-hiv
(hiv yes)
=>
(printout t"Inheritance in Family ?(yes/no) ")
(assert(famInherit(read))))

;;;======================================================

(defrule non-famInherit
(famInherit no)
=>
(printout t"Having symptoms ?(yes/no) ")
(assert(symptoms4(read))))

;;;======================================================

(defrule non-symptoms4
(symptoms4 no)
=>
(printout t "You have LOW RISK of TB " crlf)
(bind $?animal notTb2)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-symptoms4
(symptoms4 yes)
=>
(printout t "You have HIGH RISK of TB " crlf)
(bind $?animal Tb2)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-famInherit
(famInherit yes)
=>
(printout t"Working in a workplace with a high risk of TB population ?(yes/no) ")
(assert(workwork(read))))

;;;======================================================

(defrule non-workwork
(workwork no)
=>
(printout t"Having symptoms ?(yes/no) ")
(assert(symptoms5(read))))

;;;======================================================

(defrule non-symptoms5
(symptoms5 no)
=>
(printout t "You have LOW RISK of TB " crlf)
(bind $?animal notTb3)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-symptoms4
(symptoms4 yes)
=>
(printout t "You have HIGH RISK of TB " crlf)
(bind $?animal Tb3)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-workwork
(workwork yes)
=>
(printout t"Living with a person with high risk or have TB ?(yes/no) ")
(assert(livings(read))))

;;;======================================================

(defrule non-livings
(livings no)
=>
(printout t "You are have HIGH RISK of TB " crlf)
(bind $?animal highRisk4)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-livings
(livings yes)
=>
(printout t"Have you contacted with that person ?(yes/no) ")
(assert(contacting(read))))

;;;======================================================

(defrule non-contacting
(contacting no)
=>
(printout t "You are have HIGH RISK of TB " crlf)
(bind $?animal highRisk5)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-contacting
(contacting yes)
=>
(printout t"Have symptoms ?(yes/no) ")
(assert(symptoms2(read))))

;;;======================================================

(defrule non-symptoms2
(symptoms2 no)
=>
(printout t "You are have HIGH RISK of TB " crlf)
(bind $?animal highRisk6)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-symptoms2
(symptoms2 yes)
=>
(printout t "You are have HIGH RISK of TB " crlf)
(bind $?animal highRisk7)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-communityTB
(communityTB yes)
=>
(printout t"Do you have inheritance with TB ?(yes/no) ")
(assert(inheritance(read))))

;;;======================================================

(defrule yes-inheritance
(inheritance yes)
=>
(printout t"Working in a workplace with high risk of TB ?(yes/no) ")
(assert(working(read))))

;;;======================================================

(defrule non-inheritance
(inheritance no)
=>
(printout t"Having symptoms ?(yes/no) ")
(assert(symptoms6(read))))

;;;======================================================

(defrule non-symptoms6
(symptoms6 no)
=>
(printout t "You have LOW RISK of TB " crlf)
(bind $?animal notTb4)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-symptoms6
(symptoms6 yes)
=>
(printout t "You have HIGH RISK of TB " crlf)
(bind $?animal Tb4)
(assert(animal-is $?animal)))

;;;======================================================

(defrule non-working
(working no)
=>
(printout t"Having symptoms ?(yes/no) ")
(assert(symptoms7(read))))

;;;======================================================

(defrule non-symptoms7
(symptoms7 no)
=>
(printout t "You have LOW RISK of TB " crlf)
(bind $?animal notTb5)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-symptoms7
(symptoms7 yes)
=>
(printout t "You have HIGH RISK of TB " crlf)
(bind $?animal Tb5)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-working
(working yes)
=>
(printout t"Living with a person with high risk or have TB ?(yes/no) ")
(assert(livingPerson(read))))

;;;======================================================

(defrule non-livingPerson
(livingPerson no)
=>
(printout t"Having symptoms ?(yes/no) ")
(assert(symptoms8(read))))

;;;======================================================

(defrule non-symptoms8
(symptoms8 no)
=>
(printout t "You have LOW RISK of TB " crlf)
(bind $?animal notTb6)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-symptoms8
(symptoms8 yes)
=>
(printout t "You have HIGH RISK of TB " crlf)
(bind $?animal Tb6)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-livingPerson
(livingPerson yes)
=>
(printout t"Have contacted with that person ?(yes/no) ")
(assert(contacted(read))))

;;;======================================================

(defrule non-contacted
(contacted no)
=>
(printout t"You have HIGH RISK of having TB. "crlf)
(bind $?animal highRisk1)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-contacted
(contacted yes)
=>
(printout t"Have symptoms ?(yes/no) ")
(assert(symptoms1(read))))

;;;======================================================

(defrule non-symptoms1
(symptoms1 no)
=>
(printout t"You have HIGH RISK of having TB. "crlf)
(bind $?animal highRisk3)
(assert(User-is $?animal)))

;;;======================================================

(defrule yes-symptoms1
(symptoms1 yes)
=>
(printout t"You have HIGH RISK of having TB. "crlf)
(bind $?animal highRisk3)
(assert(User-is $?animal)))

;;;======================================================

;;;======================================================
;;;******************************************************
;;;======================================================
;;;******************************************************
;;;======================================================
;;;******************************************************
;;;======================================================
;;;******************************************************



