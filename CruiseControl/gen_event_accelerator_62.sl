(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 8
			 13
			 23
			 604
			 775
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

(constraint (= (next 0 0 7 4 true 1684 ) 6))
(constraint (= (next 0 0 13 9 true 861 ) 6))
(constraint (= (next 0 0 17 10 true 350 ) 6))
(constraint (= (next 0 0 22 10 true 573 ) 5))
(constraint (= (next 0 3 41 10 true 173 ) 3))
(constraint (= (next 0 9 46 7 true 1490 ) 7))
(constraint (= (next 0 0 7 4 true 1634 ) 5))
(constraint (= (next 0 0 16 8 true 811 ) 6))
(constraint (= (next 0 0 18 10 true 121 ) 1))
(constraint (= (next 0 1 23 6 true 1205 ) 5))
(constraint (= (next 0 2 29 10 true 393 ) 5))

(check-synth)
