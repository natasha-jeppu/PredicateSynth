(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 7
			 469
			 1410
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

(constraint (= (next 1 1 2 0 true 1932 ) 7))
(constraint (= (next 2 1 0 0 true 1274 ) 5))
(constraint (= (next 1 3 13 0 true 1024 ) 4))

(check-synth)
