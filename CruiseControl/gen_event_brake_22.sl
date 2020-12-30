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
			 6
			 7
			 14
			 20
			 400
			 785
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

(constraint (= (next 1 0 0 0 true 514 ) 1))
(constraint (= (next 1 2 9 0 true 1065 ) 4))
(constraint (= (next 1 9 31 0 true 742 ) 5))
(constraint (= (next 2 10 25 0 true 311 ) 6))
(constraint (= (next 1 14 33 0 true 1295 ) 5))

(check-synth)
