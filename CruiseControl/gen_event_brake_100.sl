(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 7
			 12
			 13
			 20
			 453
			 1072
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

(constraint (= (next 1 8 40 0 true 276 ) 5))
(constraint (= (next 2 10 28 0 true 844 ) 5))
(constraint (= (next 1 13 21 0 true 1415 ) 4))
(constraint (= (next 1 15 24 0 true 1042 ) 3))
(constraint (= (next 1 18 12 0 true 1680 ) 6))
(constraint (= (next 1 19 14 0 true 1284 ) 6))
(constraint (= (next 1 0 0 0 true 965 ) 5))

(check-synth)
