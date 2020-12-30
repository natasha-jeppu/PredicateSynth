(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 5
			 7
			 565
			 881
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

(constraint (= (next 0 0 7 4 true 1653 ) 5))
(constraint (= (next 0 0 0 0 false 1408 ) 3))
(constraint (= (next 0 0 1 5 true 297 ) 1))
(constraint (= (next 0 0 5 4 true 1222 ) 5))
(constraint (= (next 0 2 13 5 true 762 ) 7))
(constraint (= (next 0 3 7 5 true 671 ) 5))
(constraint (= (next 0 6 14 5 true 155 ) 5))

(check-synth)
