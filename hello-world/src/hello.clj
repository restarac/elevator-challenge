(ns hello
  (:require [hello-time :as ht]))

(defn -main []
  (println "Hello World, the time is" (ht/time-str (ht/now)) "now with local libs" ))

; runs `$ clj -m hello`
