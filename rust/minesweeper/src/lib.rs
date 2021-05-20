pub fn annotate(minefield: &[&str]) -> Vec<String> {
    if minefield.len() == 0 {
        return vec![];
    }
    let n = minefield.len() as isize;
    let m = minefield[0].len() as isize;

    let mut v: Vec<String> = vec![];

    for row in 0..n {
        let mut s = String::new();
        for col in 0..m {
            let count = get_count(row, col, minefield);
            let mut to_push = count.to_string();
            if to_push == "0" {
                to_push = " ".to_string();
            }
            s.push_str(&to_push);
        }
        v.push(s);
    }
    return v;
}

// Return the count of a (row, col) given the minefield
fn get_count(row: isize, col: isize, minefield: &[&str]) -> isize {
    let n = minefield.len() as isize;
    let m = minefield[0].len() as isize;

    let mut count = 0;
    for delta_row in -1..1 {
        if (0 <= row + delta_row) && (row + delta_row) < n {
            for delta_col in -1..1 {
                if (0 <= col + delta_col)
                    && (col + delta_col < m)
                    && ((delta_col, delta_row) != (0, 0))
                {
                    let neighbor = minefield[(row + delta_row) as usize]
                        .chars()
                        .nth((col + delta_col) as usize)
                        .unwrap();
                    if neighbor == '*' {
                        count += 1
                    }
                }
            }
        }
    }

    return count;
}
