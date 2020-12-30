(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 14
			 22
			 35
			 577
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

(constraint (= (next 74 571 false ) 1))
(constraint (= (next 31 583 false ) 1))
(constraint (= (next 30 597 false ) 1))
(constraint (= (next 32 603 false ) 7))
(constraint (= (next 31 599 false ) 1))
(constraint (= (next 30 584 false ) 1))
(constraint (= (next 31 583 false ) 1))
(constraint (= (next 31 563 false ) 1))
(constraint (= (next 31 545 false ) 1))
(constraint (= (next 30 541 false ) 1))

(check-synth)
