(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 572
			 743
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

(constraint (= (next 0 0 0 0 true 799 ) 7))
(constraint (= (next 0 0 0 0 true 459 ) 1))
(constraint (= (next 0 0 0 0 true 924 ) 4))
(constraint (= (next 0 0 5 0 true 1727 ) 1))
(constraint (= (next 0 0 5 0 true 159 ) 1))
(constraint (= (next 0 0 5 0 true 80 ) 6))

(check-synth)
