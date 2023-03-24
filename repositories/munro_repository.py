from db.run_sql import run_sql
from models.munro import Munro


# This file includes functions for the interactions with the database.

# List all munros
# Select from db table
# Map each row to Python objects

def select_all():
    munros = []
    sql = "SELECT * FROM munros"
    results = run_sql(sql)
    for row in results:
        munro = Munro(row['name'], row['height'], row['id'])
        munros.append(munro)
    return munros

# The run_sql function returns a list of dictionary-like objects, but we really want a list of munro objects back.
# To get this we need to loop through the list of results, getting the information for each munro from the dictionary like object, then creating a list of task objects.