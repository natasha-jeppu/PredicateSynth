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
			 22
			 30
			 578
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

(constraint (= (next 30 568 true ) 0))
(constraint (= (next 29 574 true ) 0))
(constraint (= (next 28 581 true ) 0))
(constraint (= (next 29 597 true ) 0))
(constraint (= (next 29 603 true ) 6))
(constraint (= (next 29 596 true ) 6))
(constraint (= (next 31 604 true ) 7))
(constraint (= (next 31 603 true ) 7))
(constraint (= (next 30 604 true ) 7))
(constraint (= (next 30 585 true ) 0))
(constraint (= (next 29 582 true ) 0))
(constraint (= (next 29 579 true ) 0))
(constraint (= (next 29 596 true ) 0))
(constraint (= (next 30 579 true ) 0))
(constraint (= (next 30 578 true ) 0))
(constraint (= (next 30 582 true ) 0))
(constraint (= (next 30 592 true ) 0))
(constraint (= (next 29 586 true ) 0))
(constraint (= (next 30 568 true ) 0))
(constraint (= (next 30 572 true ) 0))
(constraint (= (next 29 575 true ) 0))
(constraint (= (next 30 557 true ) 0))
(constraint (= (next 28 555 true ) 0))
(constraint (= (next 30 521 true ) 0))
(constraint (= (next 29 520 true ) 0))

(check-synth)
