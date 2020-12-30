(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
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
			 5
			 541
			 614
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

(constraint (= (next 1 0 1 0 true 162 ) 3))
(constraint (= (next 0 0 0 0 false 1684 ) 2))
(constraint (= (next 2 0 0 0 true 1085 ) 6))
(constraint (= (next 0 0 2 5 true 441 ) 6))
(constraint (= (next 0 2 11 1 true 48 ) 4))
(constraint (= (next 0 2 11 1 true 137 ) 7))
(constraint (= (next 0 2 4 2 true 229 ) 3))

(check-synth)
