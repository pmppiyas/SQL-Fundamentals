## 📊 SQL Query: Group by First Letter of Name

```sql
SELECT LEFT(first_name, 1) AS Letter, COUNT(*) AS total
FROM students
GROUP BY Letter
HAVING LEFT(first_name, 1) BETWEEN 'A' AND 'Z'
ORDER BY Letter ASC;
```
### ✨ Explanation

- **`LEFT(first_name, 1) AS Letter`**  
  The `LEFT()` function extracts the **first character** from the `first_name` column.  
  Example: `Alice` → `A`, `Bob` → `B`.  
  This first character is labeled as `Letter` for readability in the output.

- **`COUNT(*) AS total`**  
  Counts how many students share the same starting letter.

- **`FROM students`**  
  Reads data from the `students` table.

- **`GROUP BY Letter`**  
  Groups all names by the extracted first letter using `LEFT()`.  
  Example: *Alice*, *Andrew* → grouped under **A**.

- **`HAVING LEFT(first_name, 1) BETWEEN 'A' AND 'Z'`**  
  Filters grouped results to include only letters **A → Z**, ignoring numbers or special characters.  
  Example: *1brahim* ❌, *_mark* ❌.

- **`ORDER BY Letter ASC`**  
  Sorts the grouped letters alphabetically from **A → Z**.




## 🧠 SQL Query: Group by Full Name

```sql
-- Group by Full Name
SELECT CONCAT(first_name, ' ', last_name) AS name
FROM students
GROUP BY first_name, last_name
HAVING SUBSTRING(CONCAT(first_name, ' ', last_name), 1, 1) BETWEEN 'A' AND 'Z'
ORDER BY name ASC;
```
### ✨ Explanation

- **`SELECT CONCAT(first_name, ' ', last_name) AS name`**  
  Combines `first_name` and `last_name` into a single string called `name`.  
  Example: `John` + `Doe` → `John Doe`.

- **`FROM students`**  
  Reads data from the `students` table.

- **`GROUP BY first_name, last_name`**  
  Groups rows based on both `first_name` and `last_name`.  
  This ensures full names are unique in grouping.

- **`HAVING SUBSTRING(CONCAT(first_name, ' ', last_name), 1, 1) BETWEEN 'A' AND 'Z'`**  
  Filters grouped results to include only names where the first character of the full name is between **A** and **Z**.  

  Example: *Alice Smith* ✅  
  Example: *1brahim Khan* ❌ (because it starts with a number).

- **`ORDER BY name ASC`**  
  Sorts the final list of full names alphabetically (**A → Z**).

 

