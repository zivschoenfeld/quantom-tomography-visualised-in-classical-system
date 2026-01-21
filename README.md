# quantom tomography visualised in classical system

![Python](https://img.shields.io/badge/Python-3.x-blue)
![matlab - R2025b](https://img.shields.io/badge/matlab-R2020b%2B-orange)
![JUPYTER](https://img.shields.io/badge/-Jupyter%20Notebook-05122A?style=flat&logo=jupyter&logoColor=F37626)

## 📌 Overview
This repository hosts an **independent reanalysis pipeline** for gravitational microlensing events from the **OGLE-IV survey**.

Developed as part of a lab project for the **Physics Laboratory C** course at **Tel Aviv University**, this tool validates the physical parameters of microlensing events (e.g., OGLE-2024-BLG-0393) by implementing a custom statistical pipeline that performs:
1.  **Data Processing:** Processing raw photometric data from the Early Warning System.
2.  **Theoretical Modeling:** Fitting the Paczyński Single Lens Model (PSPL).
3.  **Statistical Inference:** robust parameter estimation and data fitting using statistical methods such as: Linear Least Squares, Bootstrap, Non-Linear Optimization, and Likelihood Grid Search.

## 🚀 Key Features & Methodology
The pipeline executes the following scientific workflow:

1.  **Data Ingestion:** User-configurable loading of photometric data.
2.  **Preprocessing:** Automated cleaning and conversion of astronomical Magnitude to linear Flux.
3.  **Initialization (Linear Fit):** Fits a Paczyński curve using **Linear Least Squares (LLS)** by approximating the peak as a parabola to derive initial parameter guesses ($t_0, u_{min}, \tau$).
4.  **Bootstrap Analysis:** Estimates confidence intervals for the linear fit using **Bootstrap Resampling**.
5.  **Optimization (Non-Linear Fit):** Performs a full **Non-Linear Least Squares** fit (Levenberg-Marquardt algorithm) to refine the physical model over the entire dataset.
6.  **Uncertainty Quantification:** Visualizes parameter probability distributions and correlations using a **4D Grid Search** and **Corner Plots**.



## 📂 Project Structure
```text
├── main.ipynb            # Main analysis notebook (Configuration, Fitting, Visualization)
├── model_utils.py        # Library of physical models (Paczyński) and analysis functions.
├── requirements.txt      # Python dependencies           
└── README.md             # Project documentation
