(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 437
			 732
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

(constraint (= (next 0 0 0 0 true 798 ) 4))
(constraint (= (next 2 2 0 0 true 912 ) 6))
(constraint (= (next 0 2 12 3 true 1280 ) 4))
(constraint (= (next 1 0 0 0 true 392 ) 3))
(constraint (= (next 0 0 0 0 true 951 ) 5))

(check-synth)
