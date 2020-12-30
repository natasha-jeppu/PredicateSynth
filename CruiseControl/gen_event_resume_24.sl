(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 12
			 14
			 582
			 920
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

(constraint (= (next 0 0 0 0 true 794 ) 3))
(constraint (= (next 0 0 0 0 true 506 ) 3))
(constraint (= (next 1 0 0 0 true 1755 ) 6))
(constraint (= (next 0 0 20 9 true 1525 ) 6))
(constraint (= (next 1 7 32 0 true 333 ) 3))
(constraint (= (next 1 9 21 0 true 609 ) 1))

(check-synth)
