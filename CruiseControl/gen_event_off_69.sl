(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 5
			 17
			 593
			 830
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

(constraint (= (next 0 1 19 1 true 248 ) 3))
(constraint (= (next 0 2 18 0 true 608 ) 5))
(constraint (= (next 0 2 16 0 true 914 ) 4))
(constraint (= (next 0 3 17 1 true 1226 ) 7))
(constraint (= (next 1 4 10 0 true 33 ) 6))
(constraint (= (next 0 7 14 1 true 1038 ) 7))
(constraint (= (next 0 8 22 6 true 651 ) 4))
(constraint (= (next 0 14 17 1 true 1926 ) 4))

(check-synth)
