(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 806
			 978
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

(constraint (= (next 0 0 1 0 true 195 ) 5))
(constraint (= (next 0 0 0 0 true 1936 ) 5))
(constraint (= (next 0 0 0 0 true 923 ) 1))
(constraint (= (next 0 1 5 0 true 1799 ) 4))
(constraint (= (next 0 1 5 0 true 326 ) 4))
(constraint (= (next 0 1 5 0 true 1718 ) 4))
(constraint (= (next 0 1 5 0 true 172 ) 5))
(constraint (= (next 0 1 0 0 true 45 ) 6))
(constraint (= (next 0 2 4 0 true 1687 ) 7))

(check-synth)
