# Colab
## Mount google drive or access a local directory
try:
  from google.colab import drive
  drive.mount('/content/drive')
  %cd /content/drive/MyDrive/Colab Notebooks/DS/
  IN_COLAB = True
except:
  %cd ./data/
  IN_COLAB = False