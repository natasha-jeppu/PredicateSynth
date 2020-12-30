(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 5
			 504
			 1131
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

(constraint (= (next 0 0 3 0 true 470 ) 4))
(constraint (= (next 0 0 0 0 true 1121 ) 1))
(constraint (= (next 0 0 0 0 true 966 ) 2))
(constraint (= (next 0 0 5 0 true 1490 ) 6))
(constraint (= (next 0 1 11 1 true 1985 ) 5))
(constraint (= (next 0 2 8 1 true 1200 ) 1))
(constraint (= (next 0 2 8 0 true 684 ) 6))

(check-synth)
