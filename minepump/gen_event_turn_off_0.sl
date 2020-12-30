(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 5
			 21
			 33
			 592
			 water
			 methane
			 (+ Var Var)						
			 (- Var Var)						
			 (* Var Var)))

	(StartBool Bool (
				 	 pump
					(= Var Var)						
					(>= Var Var)						
					(<= Var Var)						
					(and StartBool StartBool)			
					(or  StartBool StartBool)				
					(not StartBool)))))

(constraint (= (next 47 602 true ) 7))
(constraint (= (next 47 602 true ) 7))
(constraint (= (next 40 607 true ) 7))
(constraint (= (next 36 601 true ) 7))
(constraint (= (next 35 602 true ) 7))
(constraint (= (next 35 603 true ) 7))
(constraint (= (next 37 605 true ) 6))
(constraint (= (next 36 603 true ) 7))
(constraint (= (next 37 604 true ) 7))
(constraint (= (next 36 600 true ) 7))
(constraint (= (next 30 605 true ) 7))
(constraint (= (next 30 604 true ) 7))
(constraint (= (next 30 592 true ) 0))
(constraint (= (next 29 589 true ) 0))
(constraint (= (next 30 600 true ) 7))
(constraint (= (next 30 598 true ) 6))
(constraint (= (next 29 593 true ) 0))
(constraint (= (next 31 607 true ) 7))
(constraint (= (next 31 606 true ) 6))
(constraint (= (next 31 608 true ) 7))
(constraint (= (next 30 586 true ) 0))
(constraint (= (next 30 581 true ) 0))
(constraint (= (next 29 574 true ) 0))
(constraint (= (next 30 559 true ) 0))
(constraint (= (next 29 535 true ) 0))

(check-synth)
