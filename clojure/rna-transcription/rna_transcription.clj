(ns rna-transcription)

(declare ensure-valid)

(def dna->rna
  {\C \G
   \G \C
   \A \U
   \T \A})

(defn to-rna [dna]
  {:pre [(ensure-valid dna)]}
  (apply str (map dna->rna (seq dna))))

(defn- ensure-valid [dna]
  (every? (set (keys dna->rna)) dna))
