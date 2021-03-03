(set-logic LIA)
(synth-fun next ((inp Int) (thresh Int) ) Int
	((Start Int)  (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 1
				 (ite StartBool Start Start)))

	(Var Int (
			 inp
			 thresh
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

(constraint (= (next 101 100 ) 1))
(constraint (= (next 101 100 ) 1))
(constraint (= (next (- 2147483548) 100 ) 0))
(constraint (= (next 101 100 ) 1))
(constraint (= (next (- 2147483548) 100 ) 0))
(constraint (= (next 101 100 ) 1))
(constraint (= (next (- 2147483548) 100 ) 0))
(constraint (= (next 101 100 ) 1))
(constraint (= (next (- 2147483548) 100 ) 0))
(constraint (= (next 101 100 ) 1))
(constraint (= (next 101 100 ) 1))
(constraint (= (next (- 2147483548) 100 ) 0))
(constraint (= (next 101 100 ) 1))
(constraint (= (next 101 100 ) 1))
(constraint (= (next 101 100 ) 1))
(constraint (= (next (- 2147482608) 100 ) 0))
(constraint (= (next 100 100 ) 0))
(constraint (= (next 2097254 100 ) 1))
(constraint (= (next 1073741924 100 ) 1))
(constraint (= (next 101 100 ) 1))
(constraint (= (next (- 2147483546) 100 ) 0))
(constraint (= (next 1073741924 100 ) 1))
(constraint (= (next 101 100 ) 1))
(constraint (= (next 101 100 ) 1))
(constraint (= (next 1073741876 100 ) 1))
(constraint (= (next 101 100 ) 1))
(constraint (= (next (- 2147483546) 100 ) 0))
(constraint (= (next 101 100 ) 1))
(constraint (= (next 1073741876 100 ) 1))
(constraint (= (next 101 100 ) 1))
(constraint (= (next 101 100 ) 1))
(constraint (= (next 101 100 ) 1))
(constraint (= (next 101 100 ) 1))
(constraint (= (next 101 100 ) 1))
(constraint (= (next 100 100 ) 0))

(check-synth)
