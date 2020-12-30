(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
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
			 8
			 11
			 675
			 1257
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

(constraint (= (next 1 2 23 0 true 786 ) 6))
(constraint (= (next 1 3 17 0 true 1857 ) 3))
(constraint (= (next 2 4 0 0 true 1609 ) 5))
(constraint (= (next 1 7 13 0 true 1226 ) 1))
(constraint (= (next 1 7 7 0 true 1890 ) 7))
(constraint (= (next 2 7 7 0 true 176 ) 2))

(check-synth)
