(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 5
			 11
			 12
			 173
			 275
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

(constraint (= (next 1 0 0 0 true 200 ) 3))
(constraint (= (next 1 5 26 0 true 32 ) 3))
(constraint (= (next 2 6 20 0 true 277 ) 3))
(constraint (= (next 1 8 8 0 true 384 ) 7))
(constraint (= (next 2 8 7 0 true 482 ) 3))

(check-synth)
