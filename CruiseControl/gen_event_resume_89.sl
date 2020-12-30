(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 631
			 1094
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

(constraint (= (next 0 0 3 0 true 1517 ) 7))
(constraint (= (next 0 0 0 0 false 1881 ) 5))
(constraint (= (next 0 0 0 0 false 190 ) 3))
(constraint (= (next 0 0 0 0 false 1115 ) 4))
(constraint (= (next 0 0 0 0 false 1298 ) 3))
(constraint (= (next 0 0 0 0 true 1372 ) 5))
(constraint (= (next 0 0 0 0 true 285 ) 5))

(check-synth)
