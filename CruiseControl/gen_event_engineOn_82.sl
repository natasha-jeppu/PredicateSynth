(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 652
			 906
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

(constraint (= (next 0 0 0 0 true 75 ) 3))
(constraint (= (next 0 0 0 0 true 1620 ) 2))
(constraint (= (next 0 0 0 0 true 439 ) 2))
(constraint (= (next 0 0 0 0 true 1779 ) 5))
(constraint (= (next 0 0 0 0 true 902 ) 7))
(constraint (= (next 0 0 0 0 true 1314 ) 4))
(constraint (= (next 0 0 0 0 true 1828 ) 3))
(constraint (= (next 0 0 0 0 true 387 ) 5))
(constraint (= (next 0 0 0 0 true 786 ) 1))
(constraint (= (next 1 0 0 0 true 352 ) 7))
(constraint (= (next 2 0 0 0 true 165 ) 3))
(constraint (= (next 2 0 0 0 true 209 ) 3))
(constraint (= (next 2 0 0 0 true 1718 ) 7))

(check-synth)
