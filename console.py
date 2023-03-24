import pdb
from models.munro import Munro
import repositories.munro_repository as munro_repository

result = munro_repository.select_all()

for munro in result:
    print(munro.__dict__)

pdb.set_trace()