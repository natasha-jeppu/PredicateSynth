(set-logic LIA)
(synth-fun next ((temp Int) (anomalousLow Int) (anomalousHigh Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 temp
			 anomalousLow
			 anomalousHigh
			 (+ Var Var)						
			 (- Var Var)						
			 (* Var Var)))

	(StartBool Bool (
					(= Var Var)						
					(>= Var Var)						
					(<= Var Var)						
					(and StartBool StartBool)			
					(or  StartBool StartBool)				
					(not StartBool)))))

(constraint (= (next 50 0 0 ) 1))

(check-synth)
