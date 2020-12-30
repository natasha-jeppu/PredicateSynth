(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 6
			 14
			 20
			 618
			 964
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

(constraint (= (next 0 0 2 5 true 524 ) 4))
(constraint (= (next 0 1 14 4 true 1269 ) 7))
(constraint (= (next 0 2 14 4 true 1378 ) 5))
(constraint (= (next 0 3 5 5 true 71 ) 5))
(constraint (= (next 0 6 20 5 true 1840 ) 1))
(constraint (= (next 0 7 20 7 true 99 ) 5))
(constraint (= (next 0 9 26 6 true 791 ) 4))
(constraint (= (next 0 12 32 5 true 1943 ) 6))
(constraint (= (next 0 13 38 10 true 774 ) 6))
(constraint (= (next 0 14 45 10 true 1057 ) 2))
(constraint (= (next 0 0 3 5 true 861 ) 4))

(check-synth)
