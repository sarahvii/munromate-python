import pdb
from models.munro import Munro
from models.hiker import Hiker
import repositories.munro_repository as munro_repository
import repositories.hiker_repository as hiker_repository

result = munro_repository.select_all()
hiker_result = hiker_repository.select_all()

for munro in result:
    print(munro.__dict__)

for hiker in hiker_result:
    print(hiker.__dict__)

pdb.set_trace()