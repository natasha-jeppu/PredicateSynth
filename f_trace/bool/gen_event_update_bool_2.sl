(set-logic LIA)
(synth-fun next ((f Bool) (count_f Int) ) Bool
	((Start Bool) (Start_Int Int))
	((Start Bool (
				 true
				 false
			 	 f
				 (>= Start_Int Start_Int)						
				 (<= Start_Int Start_Int)						
				 (and Start Start)			
				 (or  Start Start)				
				 (not Start)))

	 (Start_Int Int (
					(+ Start_Int Start_Int)						
					(- Start_Int Start_Int)						
					(* Start_Int Start_Int)
					count_f
					4
					7
					(ite Start Start_Int Start_Int)))))

(declare-var f Bool)
(declare-var count_f Int)


(constraint (= (next false 1 ) false))
(constraint (= (next false 2 ) false))
(constraint (= (next false 3 ) false))

(check-synth)
