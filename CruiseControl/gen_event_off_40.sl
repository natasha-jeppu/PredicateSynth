(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 591
			 829
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

(constraint (= (next 0 0 0 0 true 1179 ) 1))
(constraint (= (next 0 0 0 0 true 718 ) 4))
(constraint (= (next 0 0 0 0 true 1050 ) 5))
(constraint (= (next 0 0 0 0 true 127 ) 3))
(constraint (= (next 0 0 0 5 true 15 ) 4))
(constraint (= (next 0 0 0 0 true 1295 ) 6))
(constraint (= (next 0 0 1 0 true 749 ) 5))
(constraint (= (next 0 0 1 0 true 1874 ) 6))
(constraint (= (next 0 0 6 4 true 457 ) 4))

(check-synth)
