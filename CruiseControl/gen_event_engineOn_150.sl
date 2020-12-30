(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 7
			 8
			 333
			 770
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

(constraint (= (next 0 0 0 0 true 1363 ) 1))
(constraint (= (next 0 0 0 0 true 434 ) 6))
(constraint (= (next 0 0 6 4 true 1069 ) 6))
(constraint (= (next 0 0 16 9 true 782 ) 4))
(constraint (= (next 0 0 0 0 true 583 ) 5))
(constraint (= (next 0 2 19 1 true 611 ) 4))

(check-synth)
