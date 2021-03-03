(set-logic LIA)
(synth-fun next ((prev_inp.temp Int) (rangeLow Int) (rangeHigh Int) (desiredTemperature Int) (allowedError Int) ) Int
	((Start Int)  (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 (ite StartBool Start Start)))

	(Var Int (
			 prev_inp.temp
			 rangeLow
			 rangeHigh
			 desiredTemperature
			 allowedError
			 	(+ Var Var)						
			 	(- Var Var)						
			 	(* Var Var)))

	 (StartBool Bool (
					 (> Var Var)						
					 (>= Var Var)						
					 (< Var Var)						
					 (<= Var Var)						
					 (= Var Var)						
					 (and StartBool StartBool)			
					 (or  StartBool StartBool)				
					 (not StartBool)))))

(constraint (= (next 1 0 100 50 10 ) 3))
(constraint (= (next 1 0 100 50 10 ) 3))
(constraint (= (next (- 9) 0 100 50 10 ) 3))
(constraint (= (next (- 134217737) 0 100 50 10 ) 3))
(constraint (= (next (- 2147483593) 0 100 50 10 ) 3))
(constraint (= (next (- 2147483593) 0 100 50 10 ) 3))
(constraint (= (next (- 2147483593) 0 100 50 10 ) 3))
(constraint (= (next 61 0 100 50 10 ) 2))
(constraint (= (next 61 0 100 50 10 ) 2))
(constraint (= (next 60 0 100 50 10 ) 1))
(constraint (= (next 60 0 100 50 10 ) 1))
(constraint (= (next 66 0 100 50 10 ) 2))
(constraint (= (next 60 0 100 50 10 ) 1))
(constraint (= (next 60 0 100 50 10 ) 1))
(constraint (= (next 66 0 100 50 10 ) 2))
(constraint (= (next 60 0 100 50 10 ) 1))
(constraint (= (next 60 0 100 50 10 ) 1))
(constraint (= (next 106 0 100 50 10 ) 2))
(constraint (= (next 111 0 100 50 10 ) 2))
(constraint (= (next 47 0 100 50 10 ) 1))
(constraint (= (next 60 0 100 50 10 ) 1))
(constraint (= (next 40 0 100 50 10 ) 1))
(constraint (= (next 34 0 100 50 10 ) 3))
(constraint (= (next 102 0 100 50 10 ) 2))
(constraint (= (next 0 0 100 50 10 ) 3))
(constraint (= (next 41 0 100 50 10 ) 1))
(constraint (= (next 50 0 100 50 10 ) 1))
(constraint (= (next 0 0 100 50 10 ) 3))
(constraint (= (next 62 0 100 50 10 ) 2))
(constraint (= (next 0 0 100 50 10 ) 3))
(constraint (= (next 41 0 100 50 10 ) 1))
(constraint (= (next 41 0 100 50 10 ) 1))
(constraint (= (next 41 0 100 50 10 ) 1))
(constraint (= (next 60 0 100 50 10 ) 1))
(constraint (= (next 44 0 100 50 10 ) 1))
(constraint (= (next 2147483546 0 100 50 10 ) 2))
(constraint (= (next 2147483546 0 100 50 10 ) 2))
(constraint (= (next 41 0 100 50 10 ) 1))
(constraint (= (next 62 0 100 50 10 ) 2))
(constraint (= (next 0 0 100 50 10 ) 3))
(constraint (= (next (- 2147483546) 0 100 50 10 ) 3))
(constraint (= (next (- 2147483546) 0 100 50 10 ) 3))
(constraint (= (next 62 0 100 50 10 ) 2))
(constraint (= (next 41 0 100 50 10 ) 1))
(constraint (= (next 62 0 100 50 10 ) 2))
(constraint (= (next 0 0 100 50 10 ) 3))
(constraint (= (next 62 0 100 50 10 ) 2))
(constraint (= (next 41 0 100 50 10 ) 1))
(constraint (= (next (- 2147483648) 0 100 50 10 ) 3))
(constraint (= (next 0 0 100 50 10 ) 3))
(constraint (= (next 41 0 100 50 10 ) 1))
(constraint (= (next 62 0 100 50 10 ) 2))
(constraint (= (next 0 0 100 50 10 ) 3))
(constraint (= (next 41 0 100 50 10 ) 1))
(constraint (= (next (- 2147483648) 0 100 50 10 ) 3))
(constraint (= (next 41 0 100 50 10 ) 1))
(constraint (= (next 41 0 100 50 10 ) 1))
(constraint (= (next 41 0 100 50 10 ) 1))
(constraint (= (next 44 0 100 50 10 ) 1))
(constraint (= (next 44 0 100 50 10 ) 1))
(constraint (= (next (- 2147483546) 0 100 50 10 ) 3))
(constraint (= (next 1073741865 0 100 50 10 ) 2))
(constraint (= (next 60 0 100 50 10 ) 1))
(constraint (= (next 0 0 100 50 10 ) 3))
(constraint (= (next 1073741865 0 100 50 10 ) 2))
(constraint (= (next 200 0 100 50 10 ) 2))
(constraint (= (next 62 0 100 50 10 ) 2))
(constraint (= (next 60 0 100 50 10 ) 1))
(constraint (= (next 0 0 100 50 10 ) 3))
(constraint (= (next 62 0 100 50 10 ) 2))
(constraint (= (next 200 0 100 50 10 ) 2))

(check-synth)
