(ns bob
  (:require [clojure.string :as str]))

(defn upper-case? [s]
  (and (= s (str/upper-case s)) (not (= s (str/lower-case s)))))

(defn response-for [s]
  (let [phrase (str/trim s)]
    (cond
      (str/blank? phrase) "Fine. Be that way!"
      (and (str/ends-with? phrase "?") (upper-case? phrase)) "Calm down, I know what I'm doing!"
      (str/ends-with? phrase "?") "Sure."
      (upper-case? phrase) "Whoa, chill out!"
      :else "Whatever.")))
