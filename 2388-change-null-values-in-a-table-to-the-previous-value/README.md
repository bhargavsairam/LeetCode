<h2><a href="https://leetcode.com/problems/change-null-values-in-a-table-to-the-previous-value/">2388. Change Null Values in a Table to the Previous Value</a></h2><h3>Medium</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>Table: <code>CoffeeShop</code></p>

<pre>+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| drink       | varchar |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row in this table shows the order id and the name of the drink ordered. Some drink rows are nulls.
</pre>

<p>&nbsp;</p>

<p>Write a solution to replace the <code>null</code> values of the drink with the name of the drink of the previous row that is not <code>null</code>. It is guaranteed that the drink on the first row of the table is not <code>null</code>.</p>

<p>Return the result table <strong>in the same order as the input</strong>.</p>

<p>The result format is shown in the following example.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> 
CoffeeShop table:
+----+-------------------+
| id | drink             |
+----+-------------------+
| 9  | Rum and Coke      |
| 6  | null              |
| 7  | null              |
| 3  | St Germain Spritz |
| 1  | Orange Margarita  |
| 2  | null              |
+----+-------------------+
<strong>Output:</strong> 
+----+-------------------+
| id | drink             |
+----+-------------------+
| 9  | Rum and Coke      |
| 6  | Rum and Coke      |
| 7  | Rum and Coke      |
| 3  | St Germain Spritz |
| 1  | Orange Margarita  |
| 2  | Orange Margarita  |
+----+-------------------+
<strong>Explanation:</strong> 
For ID 6, the previous value that is not null is from ID 9. We replace the null with "Rum and Coke".
For ID 7, the previous value that is not null is from ID 9. We replace the null with "Rum and Coke;.
For ID 2, the previous value that is not null is from ID 1. We replace the null with "Orange Margarita".
Note that the rows in the output are the same as in the input.
</pre>
</div>