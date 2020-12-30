(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 589
			 980
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

(constraint (= (next 1 0 2 0 true 804 ) 6))
(constraint (= (next 1 0 8 0 true 179 ) 3))
(constraint (= (next 1 0 0 0 true 1266 ) 7))
(constraint (= (next 2 0 0 0 true 791 ) 6))
(constraint (= (next 1 0 4 0 true 1947 ) 6))

(check-synth)
