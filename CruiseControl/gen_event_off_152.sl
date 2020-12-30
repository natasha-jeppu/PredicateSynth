(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 9
			 764
			 1120
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

(constraint (= (next 1 0 1 0 true 283 ) 4))
(constraint (= (next 0 0 13 3 true 1328 ) 7))
(constraint (= (next 1 1 9 0 true 317 ) 7))
(constraint (= (next 0 1 8 4 true 396 ) 5))
(constraint (= (next 0 2 13 4 true 1701 ) 7))
(constraint (= (next 0 3 3 0 true 1851 ) 1))
(constraint (= (next 0 5 17 3 true 1967 ) 4))

(check-synth)
