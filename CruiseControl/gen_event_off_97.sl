(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
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
			 3
			 4
			 7
			 11
			 484
			 1112
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

(constraint (= (next 0 0 3 0 true 1697 ) 4))
(constraint (= (next 0 1 15 5 true 1683 ) 7))
(constraint (= (next 0 2 13 0 true 313 ) 5))
(constraint (= (next 0 3 11 0 true 1439 ) 6))
(constraint (= (next 0 4 19 4 true 1115 ) 5))
(constraint (= (next 0 4 20 4 true 826 ) 1))
(constraint (= (next 1 8 11 0 true 1372 ) 5))
(constraint (= (next 1 8 9 0 true 998 ) 3))

(check-synth)
