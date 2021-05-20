(ns run-length-encoding)

(defn run-length-encode
  "encodes a string with run-length-encoding"
  [plain-text]

  (->> plain-text
       (partition-by identity)
       (map (fn [x] (str (if (= 1 (count x))
                           ""
                           (count x))
                         (first x))))
       (apply str)))

(defn run-length-decode
  "decodes a run-length-encoded string"
  [cipher-text]
  (->> cipher-text
       (re-seq #"\d*[\w\s]")
       (mapcat (fn [x]
                 (if (= 1 (count x))
                   x
                   (repeat
                    (read-string (apply str (butlast x)))
                    (last x)))))
       (apply str)))
