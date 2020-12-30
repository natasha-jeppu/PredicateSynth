(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 427
			 803
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

(constraint (= (next 0 0 0 0 false 163 ) 4))
(constraint (= (next 0 0 0 0 true 411 ) 4))
(constraint (= (next 0 0 0 0 true 1343 ) 1))
(constraint (= (next 0 0 0 0 true 759 ) 3))
(constraint (= (next 0 0 0 0 true 1199 ) 1))
(constraint (= (next 0 0 0 0 true 686 ) 5))
(constraint (= (next 0 0 0 0 true 1057 ) 3))

(check-synth)
