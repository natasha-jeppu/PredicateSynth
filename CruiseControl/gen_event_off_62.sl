(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 18
			 389
			 878
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

(constraint (= (next 0 0 0 0 true 802 ) 7))
(constraint (= (next 0 1 25 10 true 468 ) 3))
(constraint (= (next 0 4 47 10 true 498 ) 7))
(constraint (= (next 1 0 0 0 true 658 ) 5))
(constraint (= (next 1 0 0 0 true 1543 ) 6))
(constraint (= (next 0 0 10 4 true 1244 ) 6))
(constraint (= (next 0 2 26 6 true 665 ) 6))
(constraint (= (next 0 3 37 9 true 1147 ) 6))

(check-synth)
