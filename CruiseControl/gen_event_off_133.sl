(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 432
			 1080
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

(constraint (= (next 0 0 0 0 false 957 ) 3))
(constraint (= (next 0 0 0 0 false 1406 ) 4))
(constraint (= (next 0 1 6 0 true 1643 ) 6))
(constraint (= (next 0 2 11 1 true 618 ) 4))
(constraint (= (next 0 3 6 1 true 775 ) 1))

(check-synth)
