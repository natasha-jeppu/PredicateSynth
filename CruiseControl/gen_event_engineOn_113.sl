(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 20
			 21
			 442
			 1065
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

(constraint (= (next 0 0 0 0 true 1262 ) 4))
(constraint (= (next 0 7 36 6 true 858 ) 3))
(constraint (= (next 0 8 38 6 true 687 ) 2))
(constraint (= (next 0 0 0 0 true 768 ) 7))
(constraint (= (next 0 2 33 7 true 1750 ) 5))

(check-synth)
