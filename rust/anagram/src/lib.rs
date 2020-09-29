use std::collections::HashSet;

fn check_same_chars(word1: &str, word2: &str) -> bool {
    let mut c1: Vec<char> = word1.to_lowercase().chars().collect();
    let mut c2: Vec<char> = word2.to_lowercase().chars().collect();
    c1.sort();
    c2.sort();
    return c1 == c2;
}

pub fn anagrams_for<'a>(word: &str, possible_anagrams: &[&'a str]) -> HashSet<&'a str> {
    let mut ans: Vec<&str> = Vec::new();

    for candidate in possible_anagrams {
        if word.to_lowercase() != candidate.to_lowercase() && check_same_chars(word, candidate) {
            ans.push(candidate);
        }
    }
    let final_ans: HashSet<&str> = ans.into_iter().collect();

    return final_ans;
}
