(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 821
			 1197
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

(constraint (= (next 0 0 0 0 true 1309 ) 3))
(constraint (= (next 0 0 11 4 true 1999 ) 1))
(constraint (= (next 1 3 6 0 true 52 ) 4))
(constraint (= (next 0 4 3 0 true 1427 ) 1))

(check-synth)
