import seaborn as sns

#%% Colab
## Mount google drive or access a local directory
try:
  from google.colab import drive
  drive.mount('/content/drive')
  #%cd /content/drive/MyDrive/Colab Notebooks/DS/
  IN_COLAB = True
except:
  #%cd ./data/
  IN_COLAB = False

#%%

def find_nulls(df):

    print(df.isnull().sum())
    
    sns.heatmap(df.isnull(), yticklabels=False, cmap='Blues', cbar=False)

#%%