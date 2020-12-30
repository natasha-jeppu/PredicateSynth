(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 5
			 572
			 1076
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

(constraint (= (next 0 0 0 0 true 1859 ) 5))
(constraint (= (next 0 0 11 4 true 1586 ) 4))
(constraint (= (next 1 2 0 0 true 584 ) 6))
(constraint (= (next 0 3 7 4 true 637 ) 3))
(constraint (= (next 0 3 11 3 true 1539 ) 4))
(constraint (= (next 0 0 0 0 true 437 ) 6))

(check-synth)
