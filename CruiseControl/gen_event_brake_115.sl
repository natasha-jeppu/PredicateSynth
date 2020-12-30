(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 512
			 730
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

(constraint (= (next 0 0 0 0 false 835 ) 4))
(constraint (= (next 0 0 0 0 false 1371 ) 3))
(constraint (= (next 1 0 1 0 true 151 ) 7))
(constraint (= (next 2 0 0 0 true 562 ) 3))

(check-synth)
