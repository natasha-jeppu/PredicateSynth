(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 11
			 19
			 34
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

(constraint (= (next 78 596 false ) 6))
(constraint (= (next 77 595 false ) 3))
(constraint (= (next 32 553 false ) 3))
(constraint (= (next 31 560 false ) 3))
(constraint (= (next 30 568 false ) 3))
(constraint (= (next 30 552 false ) 3))
(constraint (= (next 30 556 false ) 3))
(constraint (= (next 32 551 false ) 3))
(constraint (= (next 31 563 false ) 3))
(constraint (= (next 30 559 false ) 3))
(constraint (= (next 31 566 false ) 3))
(constraint (= (next 30 582 false ) 3))
(constraint (= (next 31 580 false ) 3))
(constraint (= (next 30 554 false ) 3))
(constraint (= (next 31 565 false ) 3))
(constraint (= (next 31 562 false ) 3))
(constraint (= (next 30 545 false ) 3))
(constraint (= (next 32 540 false ) 3))
(constraint (= (next 31 536 false ) 3))
(constraint (= (next 31 525 false ) 3))
(constraint (= (next 30 526 false ) 3))
(constraint (= (next 30 536 false ) 3))
(constraint (= (next 31 530 false ) 3))
(constraint (= (next 31 539 false ) 3))
(constraint (= (next 31 527 false ) 3))
(constraint (= (next 31 538 false ) 3))
(constraint (= (next 32 533 false ) 3))
(constraint (= (next 31 527 false ) 3))
(constraint (= (next 31 529 false ) 3))
(constraint (= (next 30 535 false ) 3))
(constraint (= (next 30 551 false ) 3))
(constraint (= (next 30 555 false ) 3))
(constraint (= (next 31 549 false ) 3))

(check-synth)
