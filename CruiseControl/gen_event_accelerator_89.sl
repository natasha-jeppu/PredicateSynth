(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 6
			 8
			 12
			 540
			 902
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

(constraint (= (next 0 0 3 5 true 647 ) 1))
(constraint (= (next 0 0 5 4 true 1337 ) 1))
(constraint (= (next 0 0 11 4 true 1417 ) 3))
(constraint (= (next 0 2 11 5 true 751 ) 6))
(constraint (= (next 0 3 21 9 true 1249 ) 6))
(constraint (= (next 0 3 21 10 true 11 ) 2))

(check-synth)
