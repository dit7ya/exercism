#[derive(Debug, PartialEq)]
pub enum Comparison {
    Equal,
    Sublist,
    Superlist,
    Unequal,
}

pub fn sublist<T: PartialEq>(_first_list: &[T], _second_list: &[T]) -> Comparison {
    if _first_list == _second_list {
        Comparison::Equal
    } else if _first_list.len() < _second_list.len() {
        if is_sublist(_first_list, _second_list) {
            return Comparison::Sublist;
        }
        Comparison::Unequal
    } else {
        if is_sublist(_second_list, _first_list) {
            return Comparison::Superlist;
        }
        Comparison::Unequal
    }
}

fn is_sublist<T: PartialEq>(smaller: &[T], bigger: &[T]) -> bool {
    // return whether the first list (of length definitely smaller than the second) is contained in the second

    for i in 0..(bigger.len() + 1 - smaller.len()) {
        if smaller == &bigger[i..(i + smaller.len())] {
            return true;
        }
    }
    false
}
