# kaggle

## Competition

https://www.kaggle.com/c/LANL-Earthquake-Prediction/overview

## Getting started

### Downloading the data

Download the kaggle cli tool:

`pip install kaggle`

Download the data for the competition

`kaggle competitions download -c LANL-Earthquake-Prediction`

After you clone this repo, create a folder `input` in that directory and put the downloaded data there.

Run:
```
unzip train.csv.zip
unzip test.zip -d test
```

The data takes up ~10GB in total. train.csv is about 8.9GB and test contains 2624 segments ranging from 300KB-400KB each, summing up to 830MB.

### Using the notebooks

[Installation instructions](docker/README.md)

#### Shaking earth

"Shaking earth" is an introductory jupyter notebook meant to give the user a high level overview of how the data is structured. Taken from here: https://www.kaggle.com/allunia/shaking-earth

View it here: https://nbviewer.jupyter.org/github/PavlosMelissinos/kaggle/blob/master/notebooks/shaking-earth.ipynb

#### Seismic data EDA and baseline

"Seismic data EDA and baseline" is a bit more extensive and does some training as well with various machine learning models (decision trees such as xgboost, support vector regression and others). Taken from here: https://www.kaggle.com/artgor/seismic-data-eda-and-baseline

View it here: https://nbviewer.jupyter.org/github/PavlosMelissinos/kaggle/blob/master/notebooks/seismic-data-eda-and-baseline.ipynb

Each notebook is organized in cells and each cell can be run on its own. You can modify its contents and rerun it.


### Kaggle discussions

https://www.kaggle.com/c/LANL-Earthquake-Prediction/discussion/77525

https://www.kaggle.com/c/LANL-Earthquake-Prediction/discussion/77526

https://www.kaggle.com/c/LANL-Earthquake-Prediction/discussion/77267

https://www.kaggle.com/c/LANL-Earthquake-Prediction/discussion/80250 (This is supposed to help with memory problems; the dataset is huge so it doesn't fit in memory)


## Notes

`train.csv` example rows

```
acoustic_data,time_to_failure
12,1.4690999832
6,1.4690999821
8,1.469099981
5,1.4690999799
8,1.4690999788
8,1.4690999777
9,1.4690999766
7,1.4690999755
-5,1.4690999744
```

629145481 rows in total


`head -n 5656577 train.csv | tail -n 4`

```
5,0.00079548092344
4,0.00079547982295
4,11.540799987
5,11.540799986
```
