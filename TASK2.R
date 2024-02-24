TAsk-2:
  
(1)
    > create_matrix <- function(list_of_vectors) {
      +     matrix_from_list <- matrix(unlist(list_of_vectors), ncol = length(list_of_vectors), byrow = TRUE)
      +     return(matrix_from_list)
      + }
    > vector1 <- c(1, 2, 3)
    > vector2 <- c(4, 5, 6)
    > vector3 <- c(7, 8, 9)
    > 
    > list_of_vectors <- list(vector1, vector2, vector3)
    > 
    > result_matrix <- create_matrix(list_of_vectors)
    > 
    > print("List of Vectors:")
    [1] "List of Vectors:"
    > print(list_of_vectors)
    [[1]]
    [1] 1 2 3
    
    [[2]]
    [1] 4 5 6
    
    [[3]]
    [1] 7 8 9
    
    > cat("Matrix from List of Vectors:\n")
    Matrix from List of Vectors:
      > print(result_matrix)
    [,1] [,2] [,3]
    [1,]    1    2    3
    [2,]    4    5    6
    [3,]    7    8    9

(2)
    > extract_submatrix <- function(input_matrix, threshold_value) {
      +     selected_rows <- input_matrix[, 1] > threshold_value
      +     submatrix <- input_matrix[selected_rows, ]
      +     return(submatrix)
      + }
    > my_matrix <- matrix(c(1, 8, 3, 4, 5, 6, 7, 2, 9), ncol = 3, byrow = TRUE)
    > threshold_value <- 7
    > 
      > result_submatrix <- extract_submatrix(my_matrix, threshold_value)
    > 
      > cat("Original Matrix:\n")
    Original Matrix:
      > print(my_matrix)
    [,1] [,2] [,3]
    [1,]    1    8    3
    [2,]    4    5    6
    [3,]    7    2    9
    > cat("\nSubmatrix (Rows with Column Value > 7):\n")
    
    Submatrix (Rows with Column Value > 7):
      > print(result_submatrix)
    [,1] [,2] [,3]

(3)
    > matrix_to_array <- function(input_matrix) {
      +     flattened_array <- c(input_matrix)
      +     return(flattened_array)
      + }
    > my_matrix <- matrix(1:9, ncol = 3, byrow = TRUE)
    > 
      > result_array <- matrix_to_array(my_matrix)
    > 
      > cat("Original Matrix:\n")
    Original Matrix:
      > print(my_matrix)
    [,1] [,2] [,3]
    [1,]    1    2    3
    [2,]    4    5    6
    [3,]    7    8    9
    > cat("\nFlattened Array:\n", result_array, "\n")
    
    Flattened Array:
      1 4 7 2 5 8 3 6 9 
(4)
    > find_indices_max_min <- function(input_matrix) {
      +     max_index <- which(input_matrix == max(input_matrix), arr.ind = TRUE)
      +     min_index <- which(input_matrix == min(input_matrix), arr.ind = TRUE)
      +     
        +     return(list(max_index = max_index, min_index = min_index))
      + }
    > my_matrix <- matrix(c(1, 5, 3, 8, 2, 7, 4, 6, 9), ncol = 3, byrow = TRUE)
    > 
      > indices_result <- find_indices_max_min(my_matrix)
    > 
      > cat("Original Matrix:\n")
    Original Matrix:
      > print(my_matrix)
    [,1] [,2] [,3]
    [1,]    1    5    3
    [2,]    8    2    7
    [3,]    4    6    9
    > 
      > cat("\nIndex of Maximum Value:\n")
    
    Index of Maximum Value:
      > print(indices_result$max_index)
    row col
    [1,]   3   3
    > 
      > cat("\nIndex of Minimum Value:\n")
    
    Index of Minimum Value:
      > print(indices_result$min_index)
    row col
    [1,]   1   1
(5)
    > create_array_from_vectors <- function(vector1, vector2) {
      +     matrix1 <- matrix(vector1, ncol = 3, byrow = TRUE)
      +     matrix2 <- matrix(vector2, ncol = 3, byrow = TRUE)
      +     
        +     array_result <- array(c(matrix1, matrix2), dim = c(3, 3, 2))
        +     return(array_result)
        + }
    > vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
    > vector2 <- c(10, 11, 12, 13, 14, 15, 16, 17, 18)
    > 
      > result_array <- create_array_from_vectors(vector1, vector2)
    > 
      > cat("Array of Two Matrices:\n")
    Array of Two Matrices:
      > print(result_array)
    , , 1
    
    [,1] [,2] [,3]
    [1,]    1    2    3
    [2,]    4    5    6
    [3,]    7    8    9
    
    , , 2
    
    [,1] [,2] [,3]
    [1,]   10   11   12
    [2,]   13   14   15
    [3,]   16   17   18
(6)
    > my_array <- array(1:24, dim = c(4, 3, 2))
    > print(my_array)
    , , 1
    
    [,1] [,2] [,3]
    [1,]    1    5    9
    [2,]    2    6   10
    [3,]    3    7   11
    [4,]    4    8   12
    
    , , 2
    
    [,1] [,2] [,3]
    [1,]   13   17   21
    [2,]   14   18   22
    [3,]   15   19   23
    [4,]   16   20   24
(7)
    > create_array_from_vectors <- function(vector1, vector2) {
      +     matrix1 <- matrix(vector1, ncol = 3, byrow = TRUE)
      +     matrix2 <- matrix(vector2, ncol = 3, byrow = TRUE)
      +     
        +     array_result <- array(c(matrix1, matrix2), dim = c(3, 3, 2))
        +     return(array_result)
        + }
    > vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
    > vector2 <- c(10, 11, 12, 13, 14, 15, 16, 17, 18)
    > 
      > result_array <- create_array_from_vectors(vector1, vector2)
    > 
      > cat("Array of Two Matrices:\n")
    Array of Two Matrices:
      > print(result_array)
    , , 1
    
    [,1] [,2] [,3]
    [1,]    1    2    3
    [2,]    4    5    6
    [3,]    7    8    9
    
    , , 2
    
    [,1] [,2] [,3]
    [1,]   10   11   12
    [2,]   13   14   15
    [3,]   16   17   18
    
    > 
      > cat("\nSecond Row of the Second Matrix:\n")
    
    Second Row of the Second Matrix:
      > print(result_array[2, , 2])
    [1] 13 14 15
    > 
      > cat("\nElement in the 3rd Row and 3rd Column of the 1st Matrix:\n")
    
    Element in the 3rd Row and 3rd Column of the 1st Matrix:
      > print(result_array[3, 3, 1])
    [1] 9
(8)
    > array1 <- array(1:9, dim = c(3, 3))
    > array2 <- array(10:18, dim = c(3, 3))
    > array3 <- array(19:27, dim = c(3, 3))
    > combined_array <- rbind(array1, array2, array3)
    > 
      > cat("Array 1:\n")
    Array 1:
      > print(array1)
    [,1] [,2] [,3]
    [1,]    1    4    7
    [2,]    2    5    8
    [3,]    3    6    9
    > 
      > cat("\nArray 2:\n")
    
    Array 2:
      > print(array2)
    [,1] [,2] [,3]
    [1,]   10   13   16
    [2,]   11   14   17
    [3,]   12   15   18
    > 
      > cat("\nArray 3:\n")
    
    Array 3:
      > print(array3)
    [,1] [,2] [,3]
    [1,]   19   22   25
    [2,]   20   23   26
    [3,]   21   24   27
    > 
      > cat("\nCombined Array (Row-wise):\n")
    
    Combined Array (Row-wise):
      > print(combined_array)
    [,1] [,2] [,3]
    [1,]    1    4    7
    [2,]    2    5    8
    [3,]    3    6    9
    [4,]   10   13   16
    [5,]   11   14   17
    [6,]   12   15   18
    [7,]   19   22   25
    [8,]   20   23   26
    [9,]   21   24   27