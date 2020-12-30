(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 9
			 11
			 39
			 597
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

(constraint (= (next 59 601 true ) 5))
(constraint (= (next 59 607 true ) 5))
(constraint (= (next 55 602 true ) 5))
(constraint (= (next 46 604 true ) 5))
(constraint (= (next 47 606 true ) 5))
(constraint (= (next 43 603 true ) 5))
(constraint (= (next 43 602 true ) 5))
(constraint (= (next 43 601 true ) 5))
(constraint (= (next 44 607 true ) 5))
(constraint (= (next 33 600 true ) 5))
(constraint (= (next 30 572 true ) 5))
(constraint (= (next 29 583 true ) 5))
(constraint (= (next 30 589 true ) 5))
(constraint (= (next 30 603 true ) 5))
(constraint (= (next 29 596 true ) 5))
(constraint (= (next 30 596 true ) 5))
(constraint (= (next 29 600 true ) 5))
(constraint (= (next 29 590 true ) 5))
(constraint (= (next 29 587 true ) 5))

(check-synth)
