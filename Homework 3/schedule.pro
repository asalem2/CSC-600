%Facts
teaches(souza,210.01).
teaches(milliken,210.03).
teaches(saylor,210.04).
teaches(wong,220.01).
teaches(sikka,220.03).
teaches(okada,230.01).
teaches(tomasevich,230.03).
teaches(sosnick,256.01).
teaches(sosnick,256.02).
teaches(tomasevich,300.01).
teaches(tomasevich,300.03).
teaches(potter,340.01).
teaches(roberts,340.02).
teaches(souza,412.01).
teaches(yoon,413.01).
teaches(yoon,413.02).
teaches(sosnick,413.03).
teaches(yue,415.01).
teaches(potter,415.02).
teaches(wall,510.01).
teaches(wall,510.02).
teaches(sosnick,520.01).
teaches(dujmovic,600.01).
teaches(dujmovic,600.02).
teaches(dujmovic,641.01).
teaches(petkovic, 648.01).
teaches(kulkarni,675.01).
teaches(brown,675.02).

freshman(210.01).
freshman(210.03).
freshman(210.04).

sophomore(220.01).
sophomore(220.03).
sophomore(230.01).
sophomore(230.03).
sophomore(256.01).
sophomore(256.02).
sophomore(340.01).
sophomore(340.02).
sophomore(412.03).

junior(300.01).
junior(300.03).
junior(413.01).
junior(413.02).
junior(413.03).
junior(415.01).
junior(415.02).
junior(510.01).
junior(510.02).
junior(520.01).

senior(600.01).
senior(600.02).
senior(641.01).
senior(648.01).
senior(675.01).
senior(675.02).

morning(210.01).
morning(210.03).
morning(220.01).
morning(256.01).
morning(340.01).
morning(413.01).
morning(413.03).
morning(510.01).
morning(600.01).

afternoon(210.04).
afternoon(220.03).
afternoon(230.01).
afternoon(230.03).
afternoon(256.02).
afternoon(300.01).
afternoon(300.03).
afternoon(340.02).
afternoon(412.03).
afternoon(413.02).
afternoon(415.01).
afternoon(415.02).
afternoon(510.02).
afternoon(520.01).
afternoon(600.02).
afternoon(641.01).
afternoon(648.01).
afternoon(675.01).
afternoon(675.02).

tth(210.03).
tth(220.03).
tth(230.01).
tth(230.03).
tth(300.01).
tth(413.01).
tth(413.02).
tth(413.03).
tth(415.01).

mwf(210.01).
mwf(220.01).
mwf(256.01).
mwf(256.02).
mwf(340.01).
mwf(510.01).
mwf(510.02).
mwf(600.01).
mwf(600.02).
mwf(641.01).
mwf(675.01).

%Rules
teaches_freshman(P) :- teaches(P,C), freshman(C).
teaches_sophomore(P) :- teaches(P,C), sophomore(C).
teaches_junior(P) :- teaches(P,C), junior(C).
teaches_senior(P) :- teaches(P,C), senior(C).
teaches_morning(P) :- teaches(P,C), morning(C).
teaches_afternoon(P) :- teaches(P,C), afternoon(C).
teaches_whole_day(P) :- teaches(P,C1), morning(C1), teaches(P,C2), afternoon(C2), mwf(C1), mwf(C2).
teaches_whole_day(P) :- teaches(P,C1), morning(C1), teaches(P,C2), afternoon(C2), tth(C1), tth(C2).
works_mwf(P) :- teaches(P,C), mwf(C).
works_tth(P) :- teaches(P,C), tth(C).
teaches_three_classes(P) :- teaches(P,C1), teaches(P,C2), teaches(P,C3), C1\=C2, C2\=C3, C1\=C3.