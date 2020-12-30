(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 6
			 7
			 14
			 662
			 1033
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

(constraint (= (next 0 0 7 4 true 1678 ) 6))
(constraint (= (next 0 0 17 9 true 1226 ) 3))
(constraint (= (next 0 2 24 5 true 337 ) 7))
(constraint (= (next 0 4 7 4 true 1844 ) 1))
(constraint (= (next 0 5 8 5 true 292 ) 3))
(constraint (= (next 0 6 18 9 true 821 ) 4))

(check-synth)
