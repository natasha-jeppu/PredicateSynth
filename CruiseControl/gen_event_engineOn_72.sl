(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 6
			 424
			 1050
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

(constraint (= (next 0 0 0 0 true 983 ) 1))
(constraint (= (next 0 0 0 0 true 1132 ) 3))
(constraint (= (next 0 0 0 0 true 635 ) 4))
(constraint (= (next 1 1 10 0 true 1009 ) 1))
(constraint (= (next 0 1 10 1 true 376 ) 3))
(constraint (= (next 0 2 10 1 true 1784 ) 3))
(constraint (= (next 0 2 10 1 true 1183 ) 1))
(constraint (= (next 0 4 10 1 true 1299 ) 6))

(check-synth)
