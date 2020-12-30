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
			 6
			 490
			 1032
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

(constraint (= (next 0 0 0 0 true 1341 ) 2))
(constraint (= (next 0 0 0 0 false 1466 ) 3))
(constraint (= (next 0 0 0 0 true 1093 ) 3))
(constraint (= (next 1 0 0 0 true 807 ) 5))
(constraint (= (next 1 0 0 0 true 1178 ) 7))
(constraint (= (next 0 0 11 4 true 1308 ) 3))
(constraint (= (next 0 3 12 1 true 31 ) 4))

(check-synth)
