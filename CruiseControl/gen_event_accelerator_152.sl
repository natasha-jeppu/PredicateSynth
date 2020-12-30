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
			 3
			 5
			 6
			 568
			 831
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

(constraint (= (next 0 0 2 5 true 668 ) 7))
(constraint (= (next 0 0 1 5 true 332 ) 3))
(constraint (= (next 0 1 6 5 true 1001 ) 5))
(constraint (= (next 0 3 4 5 true 615 ) 1))
(constraint (= (next 0 3 5 5 true 344 ) 4))
(constraint (= (next 0 4 12 4 true 1991 ) 5))
(constraint (= (next 0 7 14 5 true 865 ) 4))

(check-synth)
