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
			 10
			 11
			 750
			 932
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

(constraint (= (next 0 0 0 0 true 1288 ) 4))
(constraint (= (next 0 0 0 0 true 391 ) 7))
(constraint (= (next 1 0 0 0 true 1802 ) 6))
(constraint (= (next 0 1 14 3 true 379 ) 6))
(constraint (= (next 0 4 16 4 true 54 ) 3))
(constraint (= (next 0 9 27 2 true 1681 ) 5))

(check-synth)
