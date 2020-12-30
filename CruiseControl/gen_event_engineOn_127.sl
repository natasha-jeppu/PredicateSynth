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
			 3
			 4
			 7
			 569
			 954
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

(constraint (= (next 0 0 0 0 true 173 ) 3))
(constraint (= (next 0 0 0 0 true 841 ) 4))
(constraint (= (next 0 0 0 0 true 717 ) 1))
(constraint (= (next 0 0 0 0 true 805 ) 1))
(constraint (= (next 0 1 17 9 true 1379 ) 4))
(constraint (= (next 0 0 0 0 true 1812 ) 6))

(check-synth)
