Task-1:
  
(1)
> reverse_vector <- function(input_vector) {
  +     reversed_vector <- rev(input_vector)
  +     return(reversed_vector)
  + }
> original_vector <- c(1, 2, 3, 4, 5)
> reversed_vector <- reverse_vector(original_vector)
> cat("Original Vector: ", original_vector, "\n")
Original Vector:  1 2 3 4 5 
> cat("Reversed Vector: ", reversed_vector, "\n")
Reversed Vector:  5 4 3 2 1 

(2)
> concatenate_vectors <- function(vector1, vector2) {
  +     concatenated_vector <- c(vector1, vector2)
  +     return(concatenated_vector)
  + }
> vector_a <- c(1, 2, 3)
> vector_b <- c(4, 5, 6)
> concatenated_vector <- concatenate_vectors(vector_a, vector_b)
> cat("Vector A: ", vector_a, "\n")
Vector A:  1 2 3 
> cat("Vector B: ", vector_b, "\n")
Vector B:  4 5 6 
> cat("Concatenated Vector: ", concatenated_vector, "\n")
Concatenated Vector:  1 2 3 4 5 6 

(3)
count_values_in_range <- function(input_vector, range_start, range_end) {
  +     count <- sum(input_vector >= range_start & input_vector <= range_end)
  +     return(count)
  + }
> my_vector <- c(1, 5, 10, 15, 20, 25, 30)
> range_start <- 10
> range_end <- 25
> count_in_range <- count_values_in_range(my_vector, range_start, range_end)
> cat("Vector: ", my_vector, "\n")
Vector:  1 5 10 15 20 25 30 
> cat("Count of values in range [", range_start, ", ", range_end, "]: ", count_in_range, "\n")
Count of values in range [ 10 ,  25 ]:  4 

(4)
> combine_by_row <- function(vector1, vector2) {
  +     combined_matrix <- rbind(vector1, vector2)
  +     return(combined_matrix)
  + }
> vector_a <- c(1, 2, 3)
> vector_b <- c(4, 5, 6)
> combined_column <- combine_by_column(vector_a, vector_b)
> combined_row <- combine_by_row(vector_a, vector_b)
> cat("Vector A: ", vector_a, "\n")
Vector A:  1 2 3 
> cat("Vector B: ", vector_b, "\n")
Vector B:  4 5 6 
> cat("Combined by Column:\n", combined_column, "\n")
Combined by Column:
  1 2 3 4 5 6 
> cat("Combined by Row:\n", combined_row, "\n")
Combined by Row:
  1 4 2 5 3 6 

(5)
> test_greater_than_10 <- function(input_vector) {
  +     result <- input_vector > 10
  +     return(result)
  + }
> my_vector <- c(5, 12, 8, 15, 3)
> test_result <- test_greater_than_10(my_vector)
> cat("Vector: ", my_vector, "\n")
Vector:  5 12 8 15 3 
> cat("Test Result (Greater than 10): ", test_result, "\n")
Test Result (Greater than 10):  FALSE TRUE FALSE TRUE FALSE 

(6)
> my_list <- list(
  +     string_element = "Hello, World!",
  +     numeric_element = 42,
  +     vector_element = c(1, 2, 3),
  +     logical_element = TRUE
  + )
> print(my_list)
$string_element
[1] "Hello, World!"

$numeric_element
[1] 42

$vector_element
[1] 1 2 3

$logical_element
[1] TRUE

(7)
> my_list <- list(
  +     vector_element = c(1, 2, 3),
  +     matrix_element = matrix(1:4, nrow = 2),
  +     nested_list_element = list(
    +         character_element = "Hello",
    +         numeric_element = 42
    +     )
  + )
> names(my_list) <- c("first", "second", "third")
> first_element <- my_list[["first"]]
> second_element <- my_list[["second"]]
> print(my_list)
$first
[1] 1 2 3

$second
[,1] [,2]
[1,]    1    3
[2,]    2    4

$third
$third$character_element
[1] "Hello"

$third$numeric_element
[1] 42

(8)
> my_list <- list(
  +     vector_element = c(1, 2, 3),
  +     matrix_element = matrix(1:4, nrow = 2),
  +     nested_list_element = list(
    +         character_element = "Hello",
    +         numeric_element = 42
    +     )
  + )
> new_element <- "New Element"
> my_list <- append(my_list, list(new_element), after = length(my_list))
> print(my_list)
$vector_element
[1] 1 2 3

$matrix_element
[,1] [,2]
[1,]    1    3
[2,]    2    4

$nested_list_element
$nested_list_element$character_element
[1] "Hello"

$nested_list_element$numeric_element
[1] 42


[[4]]
[1] "New Element"

(9)
> my_nested_list <- list(
  +     character_element = "Hello",
  +     numeric_element = 42,
  +     logical_element = TRUE
  + )
> second_element <- my_nested_list[[2]]
> print(my_nested_list)
$character_element
[1] "Hello"

$numeric_element
[1] 42

$logical_element
[1] TRUE

> cat("Second Element of the Nested List:\n", second_element, "\n")
Second Element of the Nested List:
  42 