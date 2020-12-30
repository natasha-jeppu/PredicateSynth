(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 596
			 1189
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

(constraint (= (next 0 0 0 0 false 1795 ) 3))
(constraint (= (next 0 0 0 0 false 1543 ) 4))
(constraint (= (next 0 1 10 0 true 1683 ) 7))
(constraint (= (next 0 0 0 0 true 973 ) 5))
(constraint (= (next 0 0 0 0 true 232 ) 4))

(check-synth)
