(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 4
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 18
			 19
			 833
			 982
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

(constraint (= (next 0 0 0 0 true 1656 ) 2))
(constraint (= (next 0 0 0 0 true 1967 ) 6))
(constraint (= (next 0 0 10 9 true 198 ) 6))
(constraint (= (next 0 2 36 9 true 209 ) 1))
(constraint (= (next 0 5 36 3 true 288 ) 2))
(constraint (= (next 0 6 32 0 true 1573 ) 4))

(check-synth)
