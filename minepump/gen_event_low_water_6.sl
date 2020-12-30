(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 21
			 29
			 573
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

(constraint (= (next 30 568 true ) 2))
(constraint (= (next 29 574 true ) 2))
(constraint (= (next 28 581 true ) 2))
(constraint (= (next 29 597 true ) 2))
(constraint (= (next 29 596 true ) 2))
(constraint (= (next 30 585 true ) 2))
(constraint (= (next 29 582 true ) 2))
(constraint (= (next 29 579 true ) 2))
(constraint (= (next 29 596 true ) 2))
(constraint (= (next 30 579 true ) 2))
(constraint (= (next 30 578 true ) 2))
(constraint (= (next 30 582 true ) 2))
(constraint (= (next 30 592 true ) 2))
(constraint (= (next 29 586 true ) 2))
(constraint (= (next 30 568 true ) 2))
(constraint (= (next 30 572 true ) 2))
(constraint (= (next 29 575 true ) 2))
(constraint (= (next 30 557 true ) 2))
(constraint (= (next 28 555 true ) 2))
(constraint (= (next 30 521 true ) 2))
(constraint (= (next 29 520 true ) 2))

(check-synth)
