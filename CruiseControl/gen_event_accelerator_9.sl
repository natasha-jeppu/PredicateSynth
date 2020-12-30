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
			 5
			 530
			 775
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

(constraint (= (next 0 0 4 5 true 1008 ) 7))
(constraint (= (next 0 0 9 4 true 1666 ) 3))
(constraint (= (next 0 0 5 4 true 1100 ) 4))
(constraint (= (next 0 0 0 5 true 137 ) 5))
(constraint (= (next 0 0 2 5 true 614 ) 3))
(constraint (= (next 0 1 7 5 true 657 ) 4))
(constraint (= (next 0 1 10 6 true 242 ) 7))

(check-synth)
