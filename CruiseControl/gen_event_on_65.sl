(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 560
			 852
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

(constraint (= (next 0 0 0 0 false 608 ) 3))
(constraint (= (next 0 0 7 0 true 648 ) 4))
(constraint (= (next 0 0 7 0 true 1683 ) 4))
(constraint (= (next 0 1 0 0 true 468 ) 6))

(check-synth)
