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
			 6
			 11
			 14
			 701
			 1074
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

(constraint (= (next 0 0 7 4 true 1729 ) 4))
(constraint (= (next 0 0 18 8 true 1196 ) 7))
(constraint (= (next 0 2 17 6 true 758 ) 3))
(constraint (= (next 0 3 30 9 true 1656 ) 5))
(constraint (= (next 0 0 0 5 true 33 ) 5))

(check-synth)
