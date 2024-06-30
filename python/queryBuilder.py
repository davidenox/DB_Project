import mysql.connector
from mysql.connector import Error

def create_connection(host_name, user_name, user_password, db_name):
    connection = None
    try:
        connection = mysql.connector.connect(
            host=host_name,
            user=user_name,
            passwd=user_password,
            database=db_name
        )
        print("Connection to MySQL DB successful")
    except Error as e:
        print(f"The error '{e}' occurred")

    return connection

def execute_query(connection, query):
    cursor = connection.cursor()
    try:
        cursor.execute(query)
        connection.commit()
        print("Query executed successfully")
    except Error as e:
        print(f"The error '{e}' occurred")

def execute_many_queries(connection, query, data):
    cursor = connection.cursor()
    try:
        cursor.executemany(query, data)
        connection.commit()
        print("Data inserted successfully")
    except Error as e:
        print(f"The error '{e}' occurred")

# Replace the following details with your MySQL server connection details
host_name = "localhost:3306"
user_name = "ads"
user_password = "admin"
db_name = "EnoMarket"

# Create a connection to the database
connection = create_connection(host_name, user_name, user_password, db_name)

# Define the insert query
insert_query = """
INSERT INTO your_table_name (column1, column2, column3)
VALUES (%s, %s, %s)
"""

# Define the data to be inserted
data_to_insert = [
    ('value1_row1', 'value2_row1', 'value3_row1'),
    ('value1_row2', 'value2_row2', 'value3_row2'),
    ('value1_row3', 'value2_row3', 'value3_row3')
]

# Execute the query to insert data
execute_many_queries(connection, insert_query, data_to_insert)
