(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 6
			 678
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

(constraint (= (next 0 0 9 9 true 300 ) 6))
(constraint (= (next 0 2 10 1 true 210 ) 3))
(constraint (= (next 0 2 10 0 true 463 ) 1))
(constraint (= (next 0 2 6 0 true 168 ) 3))
(constraint (= (next 0 3 3 0 true 1637 ) 1))
(constraint (= (next 0 3 3 0 true 1861 ) 4))
(constraint (= (next 0 3 3 0 true 205 ) 3))
(constraint (= (next 0 3 3 0 true 582 ) 7))

(check-synth)
