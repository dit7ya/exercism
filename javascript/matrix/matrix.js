export class Matrix {
    constructor(matrixString) {

        this.row = matrixString.split('\n').map(x => x.split(' ').map(x => Number(x)));
    }

    get rows() {
        return this.row;
    }

    get columns() {

        let cols = [];
        for (let i = 0; i < this.row[0].length; i++) {
            cols.push(this.row.map(x => x[i]));
        }
        return cols;

    }
}
