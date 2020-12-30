(set-logic LIA)
(synth-fun next ((temp Int) (rangeLow Int) (rangeHigh Int) (desiredTemperature Int) (allowedError Int) (goodToGo Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 temp
			 rangeLow
			 rangeHigh
			 desiredTemperature
			 allowedError
			 (+ Var Var)						
			 (- Var Var)						
			 (* Var Var)))

	(StartBool Bool (
				 	 goodToGo
					(= Var Var)						
					(>= Var Var)						
					(<= Var Var)						
					(and StartBool StartBool)			
					(or  StartBool StartBool)				
					(not StartBool)))))

(constraint (= (next 50 10 110 100 2 false ) 3))
(constraint (= (next 51 10 110 100 2 true ) 3))
(constraint (= (next 52 10 110 100 2 true ) 3))
(constraint (= (next 53 10 110 100 2 true ) 3))
(constraint (= (next 54 10 110 100 2 true ) 3))
(constraint (= (next 55 10 110 100 2 true ) 3))
(constraint (= (next 56 10 110 100 2 true ) 3))
(constraint (= (next 57 10 110 100 2 true ) 3))
(constraint (= (next 58 10 110 100 2 true ) 3))
(constraint (= (next 59 10 110 100 2 true ) 3))
(constraint (= (next 60 10 110 100 2 true ) 3))
(constraint (= (next 61 10 110 100 2 true ) 3))
(constraint (= (next 62 10 110 100 2 true ) 3))
(constraint (= (next 63 10 110 100 2 true ) 3))
(constraint (= (next 64 10 110 100 2 true ) 3))
(constraint (= (next 65 10 110 100 2 true ) 3))
(constraint (= (next 66 10 110 100 2 true ) 3))
(constraint (= (next 67 10 110 100 2 true ) 3))
(constraint (= (next 68 10 110 100 2 true ) 3))
(constraint (= (next 69 10 110 100 2 true ) 3))
(constraint (= (next 70 10 110 100 2 true ) 3))
(constraint (= (next 71 10 110 100 2 true ) 3))
(constraint (= (next 72 10 110 100 2 true ) 3))
(constraint (= (next 73 10 110 100 2 true ) 3))
(constraint (= (next 74 10 110 100 2 true ) 3))
(constraint (= (next 75 10 110 100 2 true ) 3))
(constraint (= (next 76 10 110 100 2 true ) 3))
(constraint (= (next 77 10 110 100 2 true ) 3))
(constraint (= (next 78 10 110 100 2 true ) 3))
(constraint (= (next 79 10 110 100 2 true ) 3))
(constraint (= (next 80 10 110 100 2 true ) 3))
(constraint (= (next 81 10 110 100 2 true ) 3))
(constraint (= (next 82 10 110 100 2 true ) 3))
(constraint (= (next 83 10 110 100 2 true ) 3))
(constraint (= (next 84 10 110 100 2 true ) 3))
(constraint (= (next 85 10 110 100 2 true ) 3))
(constraint (= (next 86 10 110 100 2 true ) 3))
(constraint (= (next 87 10 110 100 2 true ) 3))
(constraint (= (next 88 10 110 100 2 true ) 3))
(constraint (= (next 89 10 110 100 2 true ) 3))
(constraint (= (next 90 10 110 100 2 true ) 3))
(constraint (= (next 91 10 110 100 2 true ) 3))
(constraint (= (next 92 10 110 100 2 true ) 3))
(constraint (= (next 93 10 110 100 2 true ) 3))
(constraint (= (next 94 10 110 100 2 true ) 3))
(constraint (= (next 95 10 110 100 2 true ) 3))
(constraint (= (next 96 10 110 100 2 true ) 3))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 106 10 110 100 2 true ) 1))
(constraint (= (next 5 10 110 100 2 true ) 3))
(constraint (= (next 6 10 110 100 2 true ) 3))
(constraint (= (next 103 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 4 10 110 100 2 true ) 3))
(constraint (= (next 120 10 110 100 2 true ) 2))
(constraint (= (next 120 10 110 100 2 true ) 2))
(constraint (= (next 4 10 110 100 2 true ) 3))
(constraint (= (next 106 10 110 100 2 true ) 1))
(constraint (= (next 106 10 110 100 2 true ) 1))
(constraint (= (next 4 10 110 100 2 true ) 3))
(constraint (= (next 120 10 110 100 2 true ) 2))
(constraint (= (next 106 10 110 100 2 true ) 1))
(constraint (= (next 120 10 110 100 2 true ) 2))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))
(constraint (= (next 97 10 110 100 2 true ) 3))
(constraint (= (next 98 10 110 100 2 true ) 3))
(constraint (= (next 99 10 110 100 2 true ) 3))
(constraint (= (next 100 10 110 100 2 true ) 3))
(constraint (= (next 101 10 110 100 2 true ) 3))
(constraint (= (next 102 10 110 100 2 true ) 1))

(check-synth)