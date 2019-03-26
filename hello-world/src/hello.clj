(ns hello
  (:require [hello-time :as ht]))

(defn -main []
  (println "Hello World, the time is" (ht/time-str (ht/now)) "now with local libs" )
  (prn 'Results '(+ 3 1) (+ 3 1) )
  (prn "( 7 + 3 * 4 + 5 ) / 10 = " (/ (* (+ 3 1) (+ 4 5)) 10) ))

; runs `$ clj -m hello`
