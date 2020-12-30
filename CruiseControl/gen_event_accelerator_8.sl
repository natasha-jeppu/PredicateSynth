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
			 5
			 6
			 7
			 17
			 434
			 962
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

(constraint (= (next 0 0 4 5 true 1065 ) 4))
(constraint (= (next 0 0 18 8 true 1253 ) 5))
(constraint (= (next 0 6 14 5 true 265 ) 1))
(constraint (= (next 0 7 20 5 true 1368 ) 6))
(constraint (= (next 0 7 24 10 true 466 ) 1))
(constraint (= (next 0 10 25 4 true 1333 ) 5))
(constraint (= (next 0 14 13 5 true 981 ) 4))

(check-synth)
