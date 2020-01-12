matrix = [[1,2,0],
        [1,1,2],
        [2,1,1],
        [1,1,1]]

def set_zero(matrix)
  row = []
  column = []

  matrix.length.times do |i|
    matrix[0].length.times do |j|
      if matrix[i][j] == 0
        row[i] = true
        column[j] = true
      end
    end
  end

  matrix.length.times do |i|
    matrix[0].length.times do |j|
      if row[i] || column[j]
        matrix[i][j] = 0
      end
    end
  end

  p matrix
end

set_zero(matrix)
