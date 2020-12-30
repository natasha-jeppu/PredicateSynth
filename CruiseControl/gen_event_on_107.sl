(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 606
			 1174
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

(constraint (= (next 0 0 0 0 true 1753 ) 5))
(constraint (= (next 0 0 0 0 true 1429 ) 1))
(constraint (= (next 0 0 0 0 true 968 ) 7))
(constraint (= (next 0 0 0 0 true 1340 ) 5))
(constraint (= (next 0 0 6 0 true 52 ) 7))
(constraint (= (next 0 0 0 0 true 1503 ) 3))

(check-synth)
