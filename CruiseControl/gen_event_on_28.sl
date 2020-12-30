(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 5
			 6
			 690
			 856
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

(constraint (= (next 0 4 0 0 true 60 ) 6))
(constraint (= (next 0 5 7 1 true 1527 ) 1))
(constraint (= (next 0 5 7 0 true 816 ) 6))
(constraint (= (next 0 7 13 1 true 303 ) 7))
(constraint (= (next 0 0 0 0 false 1572 ) 3))

(check-synth)
