(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 7
			 12
			 14
			 295
			 925
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

(constraint (= (next 0 0 0 0 false 677 ) 1))
(constraint (= (next 0 0 4 5 true 1005 ) 4))
(constraint (= (next 0 0 17 9 true 1406 ) 6))
(constraint (= (next 0 0 22 10 true 790 ) 6))
(constraint (= (next 0 1 28 10 true 748 ) 4))

(check-synth)
