import pandas as pd

chunk_size = 350000
batch_no = 1

for chunk in pd.read_csv('NavHistory.csv', chunksize=chunk_size):
    chunk.to_csv('NavHistory' + str(batch_no) + '.csv', index=False)
    batch_no +=1
