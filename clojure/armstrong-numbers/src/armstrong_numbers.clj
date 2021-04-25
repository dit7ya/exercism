(ns armstrong-numbers)

(defn exp [n x]
  (apply * (repeat n x)))

(defn get-digits [num]
  (->> num
       (iterate (fn [x] (quot x 10)))
       (take-while pos?)
       (map (fn [x] (mod x 10)))))

(defn armstrong? [num]

  (let [digits (get-digits num)
        num-digits (count digits)]

    (->> digits
         (map (partial exp num-digits))
         (apply +)
         (= num))))
