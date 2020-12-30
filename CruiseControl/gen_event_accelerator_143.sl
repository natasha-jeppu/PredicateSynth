(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 4
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 7
			 621
			 857
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

(constraint (= (next 0 0 0 0 false 232 ) 2))
(constraint (= (next 0 0 7 4 true 1857 ) 4))
(constraint (= (next 0 1 10 5 true 812 ) 4))
(constraint (= (next 0 2 1 5 true 476 ) 3))
(constraint (= (next 0 3 16 5 true 909 ) 2))

(check-synth)
