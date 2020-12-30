(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 667
			 1051
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

(constraint (= (next 0 0 0 0 false 1377 ) 3))
(constraint (= (next 0 0 0 0 false 86 ) 3))
(constraint (= (next 0 0 0 0 false 1213 ) 2))
(constraint (= (next 0 0 0 0 false 361 ) 2))
(constraint (= (next 0 0 0 0 false 1676 ) 3))
(constraint (= (next 0 0 0 0 false 1594 ) 3))

(check-synth)
