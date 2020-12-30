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
			 715
			 1000
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

(constraint (= (next 0 0 4 0 true 1699 ) 3))
(constraint (= (next 0 0 0 0 true 450 ) 3))
(constraint (= (next 0 0 0 0 true 1970 ) 3))
(constraint (= (next 0 0 2 0 true 267 ) 1))
(constraint (= (next 0 0 2 0 true 482 ) 6))
(constraint (= (next 0 0 0 0 true 1134 ) 7))

(check-synth)
