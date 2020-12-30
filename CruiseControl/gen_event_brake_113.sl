(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 15
			 16
			 674
			 1090
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

(constraint (= (next 1 4 28 0 true 861 ) 1))
(constraint (= (next 1 0 0 0 true 971 ) 6))
(constraint (= (next 1 0 1 0 true 13 ) 1))
(constraint (= (next 1 6 35 0 true 1070 ) 7))
(constraint (= (next 2 8 24 0 true 1749 ) 5))
(constraint (= (next 3 9 8 0 true 1873 ) 1))

(check-synth)
