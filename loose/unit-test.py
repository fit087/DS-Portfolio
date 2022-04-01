import pytricks as pt
import pandas as pd

df = pd.read_csv("train.csv")

pt.find_nulls(df)