(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 6
			 10
			 350
			 513
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

(constraint (= (next 0 0 3 5 true 851 ) 3))
(constraint (= (next 0 1 8 5 true 109 ) 4))
(constraint (= (next 0 1 9 5 true 176 ) 6))
(constraint (= (next 0 1 16 10 true 766 ) 4))
(constraint (= (next 0 3 11 5 true 640 ) 7))
(constraint (= (next 0 3 11 5 true 600 ) 7))
(constraint (= (next 0 4 10 5 true 917 ) 3))

(check-synth)
