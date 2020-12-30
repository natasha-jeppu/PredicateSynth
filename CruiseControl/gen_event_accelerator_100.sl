(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 5
			 7
			 10
			 14
			 15
			 598
			 1299
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

(constraint (= (next 0 0 0 0 false 1780 ) 3))
(constraint (= (next 0 0 4 5 true 978 ) 3))
(constraint (= (next 0 0 12 9 true 473 ) 3))
(constraint (= (next 0 4 41 9 true 1279 ) 1))
(constraint (= (next 0 19 18 4 true 1792 ) 7))
(constraint (= (next 0 20 20 4 true 1929 ) 3))
(constraint (= (next 0 22 31 8 true 1704 ) 2))
(constraint (= (next 0 0 0 0 false 1467 ) 1))
(constraint (= (next 0 0 1 5 true 292 ) 3))

(check-synth)
