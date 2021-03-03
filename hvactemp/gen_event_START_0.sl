(set-logic LIA)
(synth-fun next ((prev_inp.temp Int) (anomalousLow Int) (anomalousHigh Int) ) Int
	((Start Int)  (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 (ite StartBool Start Start)))

	(Var Int (
			 prev_inp.temp
			 anomalousLow
			 anomalousHigh
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

(constraint (= (next 0 0 0 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 0 0 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 0 0 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 0 0 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 0 0 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 0 0 ) 1))
(constraint (= (next 0 0 0 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))
(constraint (= (next 0 (- 10) 110 ) 1))

(check-synth)
