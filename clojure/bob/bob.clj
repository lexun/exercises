(ns bob
  (:require [clojure.string :only [blank?]]))

(defn response-for [message]
  (cond
    (re-matches #".*[^A-Z]\?" message) "Sure."
    (re-matches #".*(\d.*!$|[A-Z]{4}).*" message) "Whoa, chill out!"
    (string/blank? message) "Fine. Be that way!"
    :else "Whatever."))
