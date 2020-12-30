(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 8
			 648
			 653
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

(constraint (= (next 0 0 10 4 true 1820 ) 4))
(constraint (= (next 1 1 7 0 true 112 ) 1))
(constraint (= (next 0 3 5 0 true 857 ) 5))
(constraint (= (next 0 3 5 0 true 65 ) 1))
(constraint (= (next 0 3 5 0 true 407 ) 6))
(constraint (= (next 0 4 15 4 true 655 ) 3))

(check-synth)
