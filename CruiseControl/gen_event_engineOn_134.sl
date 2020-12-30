(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 639
			 1113
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

(constraint (= (next 0 0 0 0 true 422 ) 1))
(constraint (= (next 0 0 0 0 true 1236 ) 6))
(constraint (= (next 0 0 3 0 true 1938 ) 3))
(constraint (= (next 0 0 3 0 true 382 ) 7))
(constraint (= (next 0 1 2 1 true 1907 ) 1))
(constraint (= (next 0 1 2 0 true 1126 ) 6))
(constraint (= (next 0 1 3 0 true 780 ) 6))

(check-synth)
