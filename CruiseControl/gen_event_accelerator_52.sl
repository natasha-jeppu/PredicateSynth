(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 6
			 9
			 14
			 60
			 1494
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

(constraint (= (next 0 0 7 4 true 1536 ) 5))
(constraint (= (next 0 0 20 8 true 1451 ) 3))

(check-synth)
