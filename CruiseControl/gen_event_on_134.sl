(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 488
			 560
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

(constraint (= (next 0 0 0 0 true 561 ) 7))
(constraint (= (next 0 0 1 0 true 46 ) 7))
(constraint (= (next 0 0 0 0 false 76 ) 3))
(constraint (= (next 0 0 4 0 true 187 ) 1))
(constraint (= (next 0 0 4 0 true 243 ) 1))
(constraint (= (next 0 0 4 0 true 1771 ) 4))
(constraint (= (next 0 0 4 0 true 970 ) 5))
(constraint (= (next 0 1 2 0 true 350 ) 5))
(constraint (= (next 0 1 3 0 true 187 ) 3))

(check-synth)
