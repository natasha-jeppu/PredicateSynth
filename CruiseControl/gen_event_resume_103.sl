(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 12
			 21
			 598
			 790
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

(constraint (= (next 0 4 24 0 true 359 ) 3))
(constraint (= (next 0 5 19 0 true 1503 ) 6))
(constraint (= (next 0 10 34 0 true 1387 ) 5))
(constraint (= (next 0 14 36 0 true 277 ) 2))
(constraint (= (next 0 0 6 4 true 156 ) 4))
(constraint (= (next 0 0 9 4 true 1057 ) 3))

(check-synth)
