(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 8
			 685
			 966
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

(constraint (= (next 0 1 14 3 true 1315 ) 1))
(constraint (= (next 0 2 7 2 true 194 ) 1))
(constraint (= (next 0 2 2 1 true 1436 ) 4))
(constraint (= (next 0 2 3 1 true 305 ) 7))
(constraint (= (next 0 3 11 0 true 645 ) 4))
(constraint (= (next 0 4 9 0 true 1898 ) 1))

(check-synth)
