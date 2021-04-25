(ns rna-transcription)

(def nuclemap
  {\G \C, \C \G, \T \A, \A \U})

(defn to-rna [dna]
  (let [trans
        (->> dna
             (map nuclemap)
             (apply str))]
    (assert (= (count dna) (count trans)) "Wrong input.")
    trans))
