(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 13
			 24
			 34
			 541
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

(constraint (= (next 69 600 true ) 5))
(constraint (= (next 69 606 true ) 5))
(constraint (= (next 30 543 true ) 5))
(constraint (= (next 30 541 true ) 5))
(constraint (= (next 29 542 true ) 5))
(constraint (= (next 29 546 true ) 5))
(constraint (= (next 29 541 true ) 5))
(constraint (= (next 30 535 true ) 5))
(constraint (= (next 28 529 true ) 5))
(constraint (= (next 29 527 true ) 5))
(constraint (= (next 29 529 true ) 5))
(constraint (= (next 30 528 true ) 5))
(constraint (= (next 29 533 true ) 5))
(constraint (= (next 30 520 true ) 5))
(constraint (= (next 28 535 true ) 5))
(constraint (= (next 30 538 true ) 5))
(constraint (= (next 30 526 true ) 5))
(constraint (= (next 29 527 true ) 5))

(check-synth)
