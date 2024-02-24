Task-3:
  
(1)
  
  > create_dataframe <- function(vec1, vec2, vec3, vec4) {
  +     my_dataframe <- data.frame(
  +         Column1 = vec1,
  +         Column2 = vec2,
  +         Column3 = vec3,
  +         Column4 = vec4
  +     )
  +     return(my_dataframe)
  + }
  > vector1 <- c(1, 2, 3)
  > vector2 <- c("A", "B", "C")
  > vector3 <- c(10.5, 20.5, 30.5)
  > vector4 <- c(TRUE, FALSE, TRUE)
  > 
  > result_dataframe <- create_dataframe(vector1, vector2, vector3, vector4)
  > 
  > cat("Resulting Data Frame:\n")
  Resulting Data Frame:
  > print(result_dataframe)
    Column1 Column2 Column3 Column4
  1       1       A    10.5    TRUE
  2       2       B    20.5   FALSE
  3       3       C    30.5    TRUE

(2)
  > my_dataframe <- data.frame(
    +     ID = c(1, 2, 3, 4, 5),
    +     Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
    +     Age = c(25, 30, 22, 35, 28),
    +     Salary = c(50000, 60000, 45000, 70000, 55000),
    +     Married = c(TRUE, FALSE, TRUE, TRUE, FALSE)
    + )
  > cat("Data Frame:\n")
  Data Frame:
    > print(my_dataframe)
  ID    Name Age Salary Married
  1  1   Alice  25  50000    TRUE
  2  2     Bob  30  60000   FALSE
  3  3 Charlie  22  45000    TRUE
  4  4   David  35  70000    TRUE
  5  5     Eve  28  55000   FALSE
  > 
    > cat("\nStatistical Summary:\n")
  
  Statistical Summary:
    > print(summary(my_dataframe))
  ID        Name                Age         Salary       Married       
  Min.   :1   Length:5           Min.   :22   Min.   :45000   Mode :logical  
  1st Qu.:2   Class :character   1st Qu.:25   1st Qu.:50000   FALSE:2        
  Median :3   Mode  :character   Median :28   Median :55000   TRUE :3        
  Mean   :3                      Mean   :28   Mean   :56000                  
  3rd Qu.:4                      3rd Qu.:30   3rd Qu.:60000                  
  Max.   :5                      Max.   :35   Max.   :70000                  
  > 
    > cat("\nNature of the Data:\n")
  
  Nature of the Data:
    > str(my_dataframe)
  'data.frame':	5 obs. of  5 variables:
    $ ID     : num  1 2 3 4 5
  $ Name   : chr  "Alice" "Bob" "Charlie" "David" ...
  $ Age    : num  25 30 22 35 28
  $ Salary : num  50000 60000 45000 70000 55000
  $ Married: logi  TRUE FALSE TRUE TRUE FALSE
  
(3)
  > my_dataframe <- data.frame(
    +     ID = c(1, 2, 3, 4, 5),
    +     Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
    +     Age = c(25, 30, 22, 35, 28),
    +     Salary = c(50000, 60000, 45000, 70000, 55000),
    +     Married = c(TRUE, FALSE, TRUE, TRUE, FALSE)
    + )
  > cat("Data Frame:\n")
  Data Frame:
    > print(my_dataframe)
  ID    Name Age Salary Married
  1  1   Alice  25  50000    TRUE
  2  2     Bob  30  60000   FALSE
  3  3 Charlie  22  45000    TRUE
  4  4   David  35  70000    TRUE
  5  5     Eve  28  55000   FALSE
  > 
    > selected_column <- my_dataframe$Age
  > 
    > cat("\nSelected Column 'Age':\n")
  
  Selected Column 'Age':
    > print(selected_column)
  [1] 25 30 22 35 28
  
(4)
  > my_dataframe <- data.frame(
    +     ID = c(1, 2, 3, 4, 5),
    +     Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
    +     Age = c(25, 30, 22, 35, 28),
    +     Salary = c(50000, 60000, 45000, 70000, 55000),
    +     Married = c(TRUE, FALSE, TRUE, TRUE, FALSE)
    + )
  > cat("Data Frame:\n")
  Data Frame:
    > print(my_dataframe)
  ID    Name Age Salary Married
  1  1   Alice  25  50000    TRUE
  2  2     Bob  30  60000   FALSE
  3  3 Charlie  22  45000    TRUE
  4  4   David  35  70000    TRUE
  5  5     Eve  28  55000   FALSE
  > selected_data <- my_dataframe[c(3, 5), c(1, 3)]
  > cat("\nSelected Data (3rd and 5th rows, 1st and 3rd columns):\n")
  
  Selected Data (3rd and 5th rows, 1st and 3rd columns):
    > print(selected_data)
  ID Age
  3  3  22
  5  5  28

(5)
  > existing_dataframe <- data.frame(
    +     ID = c(1, 2, 3, 4, 5),
    +     Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
    +     Age = c(25, 30, 22, 35, 28),
    +     Salary = c(50000, 60000, 45000, 70000, 55000),
    +     Married = c(TRUE, FALSE, TRUE, TRUE, FALSE)
    + )
  > 
    > cat("Existing Data Frame:\n")
  Existing Data Frame:
    > print(existing_dataframe)
  ID    Name Age Salary Married
  1  1   Alice  25  50000    TRUE
  2  2     Bob  30  60000   FALSE
  3  3 Charlie  22  45000    TRUE
  4  4   David  35  70000    TRUE
  5  5     Eve  28  55000   FALSE
  > 
    > new_row <- data.frame(ID = 6, Name = "Frank", Age = 40, Salary = 80000, Married = TRUE)
  > updated_dataframe <- rbind(existing_dataframe, new_row)
  > 
    > new_column <- c("Department A", "Department B", "Department C", "Department A", "Department B", "Department D")
  > updated_dataframe$Department <- new_column
  > 
    > cat("\nUpdated Data Frame (with new row and column):\n")
  
  Updated Data Frame (with new row and column):
    > print(updated_dataframe)
  ID    Name Age Salary Married   Department
  1  1   Alice  25  50000    TRUE Department A
  2  2     Bob  30  60000   FALSE Department B
  3  3 Charlie  22  45000    TRUE Department C
  4  4   David  35  70000    TRUE Department A
  5  5     Eve  28  55000   FALSE Department B
  6  6   Frank  40  80000    TRUE Department D
  
  
