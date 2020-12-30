(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 9
			 21
			 32
			 557
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

(constraint (= (next 75 621 false ) 6))
(constraint (= (next 30 558 false ) 1))
(constraint (= (next 31 560 false ) 1))
(constraint (= (next 31 554 false ) 1))
(constraint (= (next 31 530 false ) 1))
(constraint (= (next 31 526 false ) 1))
(constraint (= (next 31 512 false ) 1))
(constraint (= (next 32 525 false ) 1))
(constraint (= (next 30 535 false ) 1))
(constraint (= (next 30 545 false ) 1))
(constraint (= (next 31 546 false ) 1))
(constraint (= (next 31 559 false ) 1))
(constraint (= (next 30 554 false ) 1))
(constraint (= (next 30 564 false ) 1))
(constraint (= (next 31 570 false ) 1))
(constraint (= (next 31 563 false ) 1))
(constraint (= (next 30 572 false ) 1))
(constraint (= (next 30 560 false ) 1))
(constraint (= (next 31 561 false ) 1))
(constraint (= (next 31 565 false ) 1))
(constraint (= (next 31 573 false ) 1))
(constraint (= (next 31 567 false ) 1))
(constraint (= (next 30 557 false ) 1))
(constraint (= (next 30 568 false ) 1))
(constraint (= (next 31 549 false ) 1))
(constraint (= (next 31 567 false ) 1))
(constraint (= (next 30 578 false ) 1))

(check-synth)
