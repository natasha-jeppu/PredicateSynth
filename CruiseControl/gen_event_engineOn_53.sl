(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 5
			 7
			 11
			 651
			 987
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

(constraint (= (next 0 0 0 0 true 536 ) 5))
(constraint (= (next 0 0 0 0 true 477 ) 4))
(constraint (= (next 0 0 11 3 true 23 ) 3))
(constraint (= (next 0 0 14 3 true 1048 ) 4))
(constraint (= (next 1 3 16 0 true 1667 ) 5))
(constraint (= (next 0 5 21 3 true 1793 ) 5))
(constraint (= (next 1 12 14 0 true 1619 ) 3))
(constraint (= (next 1 13 12 0 true 736 ) 1))

(check-synth)
