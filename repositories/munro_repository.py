from db.run_sql import run_sql
from models.munro import Munro

def save(munro):
    sql = "INSERT INTO munros ( name, height ) VALUES ( %s, %s ) RETURNING id"
    values = [munro.name, munro.height]
    results = run_sql( sql, values )
    munro.id = results[0]['id']
    return munro

# This file includes functions for the interactions with the database.

# List all munros
# Select from db table
# Map each row to Python objects

def select_all():
    munros = []
    sql = "SELECT * FROM munros"
    results = run_sql(sql)
    for row in results:
        munro = Munro(row['name'], row['image'], row['height'], row['id'])
        munros.append(munro)
    return munros

# The run_sql function returns a list of dictionary-like objects, but we really want a list of munro objects back.
# To get this we need to loop through the list of results, getting the information for each munro from the dictionary like object, then creating a list of task objects.

def select(id):
    munro = None
    sql = "SELECT * FROM munros WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        munro = Munro(result['name'], result['image'], result['height'], result['id'])
    return munro
