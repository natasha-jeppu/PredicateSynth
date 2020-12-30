(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 9
			 10
			 776
			 911
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

(constraint (= (next 0 4 22 0 true 1986 ) 4))
(constraint (= (next 0 5 19 0 true 1335 ) 1))
(constraint (= (next 0 0 0 0 true 107 ) 5))
(constraint (= (next 0 0 0 0 true 259 ) 6))
(constraint (= (next 0 0 6 0 true 869 ) 5))

(check-synth)
