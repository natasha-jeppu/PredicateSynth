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
			 10
			 12
			 547
			 1407
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

(constraint (= (next 0 0 0 0 true 1018 ) 4))
(constraint (= (next 0 0 0 0 true 1741 ) 1))
(constraint (= (next 0 0 0 0 true 1957 ) 5))
(constraint (= (next 0 0 0 0 true 1872 ) 7))
(constraint (= (next 0 1 7 0 true 1338 ) 1))
(constraint (= (next 0 2 15 4 true 546 ) 1))
(constraint (= (next 0 4 25 5 true 857 ) 3))
(constraint (= (next 0 6 29 4 true 1924 ) 4))

(check-synth)
