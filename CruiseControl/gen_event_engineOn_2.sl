(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 11
			 13
			 605
			 1064
			 brake
			 distance
			 speed
			 throttle
			 time
			 (+ Var Var)						
			 (- Var Var)						
			 (* Var Var)))

	(StartBool Bool (
				 	 ignition
					(= Var Var)						
					(>= Var Var)						
					(<= Var Var)						
					(and StartBool StartBool)			
					(or  StartBool StartBool)				
					(not StartBool)))))

(constraint (= (next 0 0 0 0 true 98 ) 4))
(constraint (= (next 0 0 0 0 true 1539 ) 5))
(constraint (= (next 0 0 0 0 true 1315 ) 1))
(constraint (= (next 0 0 0 0 true 1715 ) 7))
(constraint (= (next 0 1 29 8 true 1460 ) 2))
(constraint (= (next 0 0 0 0 true 443 ) 4))
(constraint (= (next 0 2 9 1 true 1416 ) 1))
(constraint (= (next 0 2 9 1 true 935 ) 3))
(constraint (= (next 0 2 9 1 true 1847 ) 1))
(constraint (= (next 0 5 29 8 true 457 ) 3))
(constraint (= (next 0 5 32 8 true 477 ) 6))

(check-synth)
