(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 16
			 17
			 628
			 827
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

(constraint (= (next 1 0 0 0 true 833 ) 1))
(constraint (= (next 0 0 0 0 true 1437 ) 5))
(constraint (= (next 0 4 24 2 true 135 ) 1))
(constraint (= (next 0 12 31 2 true 1467 ) 4))
(constraint (= (next 0 12 31 3 true 262 ) 6))

(check-synth)
