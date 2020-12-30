(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 562
			 924
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

(constraint (= (next 1 0 0 0 true 1536 ) 5))
(constraint (= (next 2 0 0 0 true 1269 ) 4))
(constraint (= (next 3 0 0 0 true 1625 ) 4))
(constraint (= (next 1 1 10 0 true 833 ) 7))
(constraint (= (next 2 1 7 0 true 620 ) 7))
(constraint (= (next 3 1 4 0 true 378 ) 3))
(constraint (= (next 1 2 5 0 true 208 ) 5))

(check-synth)
