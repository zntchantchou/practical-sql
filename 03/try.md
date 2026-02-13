1 . Your company delivers fruit and vegetables to local grocery stores, and
you need to track the mileage driven by each driver each day to a tenth
of a mile . Assuming no driver would ever travel more than 999 miles in a
day, what would be an appropriate data type for the mileage column in
your table? Why?

fixed point, with max 3 digits and 1 digit right of the point?  
e.g: numeric(4,1)

2 . In the table listing each driver in your company, what are appropriate
data types for the drivers’ first and last names? Why is it a good idea to
separate first and last names into two columns rather than having one
larger name column?

- makes searching more precise
- name can change (marriage)
- lesser probability to reach max size for a column

3 . Assume you have a text column that includes strings formatted as dates .
One of the strings is written as ' 4 / / 2017 ' . What will happen when you try
to convert that string to the timestamp data type?

- string is untrimmed
- '03/03/2026' => this format should actually work in postgres, but not with a missing value, should produce an error

<!-- error: SQL Error [22008]: ERROR: date/time field value out of range: " 4 / / 2017 " -->
  <!-- Hint: Perhaps you need a different "datestyle" setting. -->
