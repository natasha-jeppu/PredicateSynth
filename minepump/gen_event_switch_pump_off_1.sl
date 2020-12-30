(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 8
			 19
			 31
			 565
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

(constraint (= (next 72 604 true ) 5))
(constraint (= (next 29 584 true ) 5))
(constraint (= (next 30 594 true ) 5))
(constraint (= (next 29 582 true ) 5))
(constraint (= (next 30 573 true ) 5))
(constraint (= (next 29 562 true ) 5))
(constraint (= (next 28 581 true ) 5))
(constraint (= (next 29 595 true ) 5))
(constraint (= (next 29 585 true ) 5))
(constraint (= (next 28 571 true ) 5))
(constraint (= (next 29 577 true ) 5))
(constraint (= (next 29 555 true ) 5))
(constraint (= (next 29 563 true ) 5))
(constraint (= (next 29 547 true ) 5))
(constraint (= (next 29 539 true ) 5))
(constraint (= (next 29 526 true ) 5))
(constraint (= (next 30 536 true ) 5))
(constraint (= (next 30 544 true ) 5))
(constraint (= (next 29 542 true ) 5))
(constraint (= (next 30 545 true ) 5))
(constraint (= (next 29 562 true ) 5))
(constraint (= (next 30 570 true ) 5))
(constraint (= (next 29 572 true ) 5))
(constraint (= (next 28 569 true ) 5))
(constraint (= (next 29 563 true ) 5))
(constraint (= (next 30 564 true ) 5))
(constraint (= (next 30 554 true ) 5))
(constraint (= (next 30 555 true ) 5))

(check-synth)
