(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 4
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 6
			 431
			 872
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

(constraint (= (next 0 0 0 0 true 1044 ) 4))
(constraint (= (next 0 0 0 0 true 225 ) 3))
(constraint (= (next 0 0 6 0 true 665 ) 1))
(constraint (= (next 0 0 3 1 true 665 ) 4))
(constraint (= (next 0 0 4 1 true 1286 ) 7))
(constraint (= (next 0 2 15 0 true 1347 ) 2))

(check-synth)
