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
			 4
			 6
			 13
			 21
			 459
			 1252
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

(constraint (= (next 0 0 4 5 true 1173 ) 5))
(constraint (= (next 0 0 12 9 true 450 ) 5))
(constraint (= (next 0 3 20 5 true 1823 ) 5))
(constraint (= (next 0 6 23 4 true 1351 ) 6))
(constraint (= (next 0 7 30 9 true 889 ) 6))
(constraint (= (next 0 8 38 9 true 1200 ) 4))
(constraint (= (next 0 12 36 4 true 1848 ) 3))
(constraint (= (next 0 0 5 4 true 1284 ) 5))

(check-synth)
