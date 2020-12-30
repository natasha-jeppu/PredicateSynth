(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 10
			 12
			 283
			 882
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

(constraint (= (next 1 3 28 0 true 1036 ) 5))
(constraint (= (next 1 3 25 0 true 575 ) 4))
(constraint (= (next 0 0 0 0 false 767 ) 5))
(constraint (= (next 0 0 0 0 false 1384 ) 3))
(constraint (= (next 0 0 0 0 true 662 ) 1))
(constraint (= (next 0 0 6 0 true 1032 ) 7))
(constraint (= (next 0 0 9 4 true 721 ) 3))

(check-synth)
