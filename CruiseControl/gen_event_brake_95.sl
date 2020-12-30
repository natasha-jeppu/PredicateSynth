(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 8
			 11
			 558
			 963
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

(constraint (= (next 1 0 0 0 true 709 ) 4))
(constraint (= (next 1 0 10 0 true 454 ) 6))
(constraint (= (next 1 1 9 0 true 1913 ) 6))
(constraint (= (next 1 2 12 0 true 870 ) 5))
(constraint (= (next 1 8 23 0 true 870 ) 4))

(check-synth)
