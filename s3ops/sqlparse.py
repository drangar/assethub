import sqlparse

def parse_ddl(ddl_statement):
    parsed = sqlparse.parse_ddl(ddl_statement)
    for statement in parsed:
        print(f"Statement Type: {statement.get_type()}")
        print(f"Statement: {statement}\n")

# Example DDL statement
ddl_statement = """
CREATE TABLE example_table (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    age INT
);
"""

# Parse the DDL statement
parse_ddl(ddl_statement)
