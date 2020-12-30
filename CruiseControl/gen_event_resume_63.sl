(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 7
			 10
			 14
			 423
			 947
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

(constraint (= (next 0 0 0 0 true 801 ) 1))
(constraint (= (next 0 6 17 1 true 292 ) 7))
(constraint (= (next 0 7 10 3 true 1073 ) 7))
(constraint (= (next 0 11 29 0 true 1224 ) 5))
(constraint (= (next 0 16 17 0 true 1516 ) 6))

(check-synth)
