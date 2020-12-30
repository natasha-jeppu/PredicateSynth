(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 740
			 1110
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

(constraint (= (next 1 0 0 0 true 723 ) 5))
(constraint (= (next 1 0 0 0 true 152 ) 5))
(constraint (= (next 2 0 0 0 true 1814 ) 3))
(constraint (= (next 1 0 0 0 true 972 ) 2))
(constraint (= (next 1 1 5 0 true 1891 ) 1))

(check-synth)
