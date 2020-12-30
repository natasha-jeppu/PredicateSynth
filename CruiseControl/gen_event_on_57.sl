(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 13
			 528
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

(constraint (= (next 0 0 3 0 true 971 ) 6))
(constraint (= (next 0 1 16 1 true 861 ) 3))
(constraint (= (next 0 2 16 1 true 525 ) 1))

(check-synth)
