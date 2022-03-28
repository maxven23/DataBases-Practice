import random
import math
import numpy as np
from faker import Faker
import datetime
from dateutil.relativedelta import relativedelta


fake = Faker()

N = 200
birthdays = [fake.date_between(start_date='-35y',end_date='-18y') for _ in range(N)]
# print(birthdays)
created = []
user_types = [random.choice([0, 1]) for _ in range(N)]
sexes = [random.choice([0, 1]) for _ in range(N)]
nationalities = [random.choice([0, 1]) for _ in range(N)]
last_onlines = []


for i in range(N):
    create_time = fake.date_time_between(start_date=birthdays[i] + relativedelta(years=16))
    created.append(create_time)
    last_online = fake.date_time_between(start_date=created[i] + relativedelta(years=1))
    last_onlines.append(last_online)

# for i in range(10):
#     print(birthdays[i])
#     print(created[i])
#     print(last_onlines[i])

with open("C:/Users/1/Desktop/VSCode/Python/Projects/MEPhI/Other/Different/src/update_dates.sql", 'w') as f:
    for i in range(21):
        f.write(f"UPDATE Users SET created_at='{created[i]}', birthday='{birthdays[i]}', last_online_at='{last_onlines[i]}' WHERE id={i+1}\n")