(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 8
			 9
			 466
			 777
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

(constraint (= (next 0 0 0 0 true 20 ) 5))
(constraint (= (next 0 0 0 0 true 1233 ) 5))
(constraint (= (next 0 0 0 0 true 491 ) 7))
(constraint (= (next 0 1 14 3 true 1121 ) 1))
(constraint (= (next 0 1 18 6 true 702 ) 7))

(check-synth)
