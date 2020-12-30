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
			 8
			 21
			 32
			 551
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

(constraint (= (next 75 626 false ) 6))
(constraint (= (next 32 553 false ) 1))
(constraint (= (next 31 560 false ) 1))
(constraint (= (next 30 568 false ) 1))
(constraint (= (next 30 552 false ) 1))
(constraint (= (next 30 556 false ) 1))
(constraint (= (next 32 551 false ) 1))
(constraint (= (next 31 563 false ) 1))
(constraint (= (next 30 559 false ) 1))
(constraint (= (next 31 566 false ) 1))
(constraint (= (next 30 582 false ) 1))
(constraint (= (next 31 580 false ) 1))
(constraint (= (next 30 554 false ) 1))
(constraint (= (next 31 565 false ) 1))
(constraint (= (next 31 562 false ) 1))
(constraint (= (next 30 545 false ) 1))
(constraint (= (next 32 540 false ) 1))
(constraint (= (next 31 536 false ) 1))
(constraint (= (next 31 525 false ) 1))
(constraint (= (next 30 526 false ) 1))
(constraint (= (next 30 536 false ) 1))
(constraint (= (next 31 530 false ) 1))
(constraint (= (next 31 539 false ) 1))
(constraint (= (next 31 527 false ) 1))
(constraint (= (next 31 538 false ) 1))
(constraint (= (next 32 533 false ) 1))
(constraint (= (next 31 527 false ) 1))
(constraint (= (next 31 529 false ) 1))
(constraint (= (next 30 535 false ) 1))
(constraint (= (next 30 551 false ) 1))
(constraint (= (next 30 555 false ) 1))
(constraint (= (next 31 549 false ) 1))

(check-synth)
