(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 5
			 21
			 22
			 579
			 1215
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

(constraint (= (next 0 0 0 0 true 572 ) 6))
(constraint (= (next 0 0 7 0 true 1374 ) 7))
(constraint (= (next 0 0 0 0 true 1583 ) 2))
(constraint (= (next 0 1 19 1 true 1677 ) 7))
(constraint (= (next 0 6 41 3 true 485 ) 6))
(constraint (= (next 0 9 44 4 true 851 ) 1))
(constraint (= (next 0 11 44 4 true 1962 ) 4))

(check-synth)
