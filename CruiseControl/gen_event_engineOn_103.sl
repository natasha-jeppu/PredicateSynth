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
			 3
			 4
			 12
			 13
			 510
			 1105
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

(constraint (= (next 0 0 0 0 true 1442 ) 6))
(constraint (= (next 0 2 13 1 true 1248 ) 6))
(constraint (= (next 0 4 24 4 true 878 ) 4))
(constraint (= (next 0 5 22 0 true 1063 ) 4))
(constraint (= (next 0 14 37 3 true 1882 ) 4))
(constraint (= (next 0 0 0 0 true 978 ) 5))
(constraint (= (next 0 0 0 0 true 1881 ) 6))
(constraint (= (next 0 0 11 4 true 441 ) 5))
(constraint (= (next 0 0 13 3 true 534 ) 3))

(check-synth)
