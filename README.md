# Quantom Tomography Visualised Using a Classical System

![Python](https://img.shields.io/badge/Python-3.x-blue)
![matlab - R2020b](https://img.shields.io/badge/matlab-R2020b%2B-orange)
![JUPYTER](https://img.shields.io/badge/-Jupyter%20Notebook-05122A?style=flat&logo=jupyter&logoColor=F37626)

## Overview
Developed for a lab project in the Physics Laboratory C course at Tel Aviv University, this repository uses computer vision to analyze video input of a pulsed laser experiment. The setup emulates quantum entanglement, emulating the workflow of Quantum State Tomography (QST) and Bell inequality tests using classical optical components.

#### This project is based on the experiment and analysis described in the paper  [**"Optical emulation of quantum state tomography and Bell test—A novel undergraduate experiment"** (Results in Optics, 2025)](https://doi.org/10.1016/j.rio.2025.100847), by Arbel et al. 

## Project Context

The experiment utilizes a pulsed laser source with randomized polarization to emulate single-photon emitors that are in use in quantum mechanics experiments. The laser pulse propagates through a beam splitter and sent to two detector stations ("Alice" and "Bob"),  each capable of measuring specific polarization bases (Horizontal/Vertical).

This Python script performs the data acquisition and verification step of the experiment:
1.  **Video Analysis**: It processes video footage of the optical detectors (webcams).
2.  **Pulse Detection**: It identifies light pulses corresponding to quantum bits (0s and 1s) by tracking intensity in the red color spectrum of each frame.
3.  **Verification**: It compares the detected optical signals against a pre-generated "Ground Truth" random bit sequence to validate the experimental setup's accuracy.

## Features

* **Interactive ROI Selection**: Users manually identify the four signal regions (Alice V, Alice H, Bob V, Bob H) on the first frame of the video using a GUI.
* **Signal Processing**: Automated frame-by-frame extraction of light intensity from the selected regions and red light filtering.
* **Peak Detection**: Utilizes `scipy.signal.find_peaks` to distinguish signal pulses from noise and background light.
* **Bit Sequence Validation**: Automatically imports expected random bit sequences (10, 25, or 50 bits) from an Excel file (`part one bit.xlsx`) to calculate transmission error rates.
* **Data Visualization**: Generates and saves plots showing the normalized signal intensity, threshold levels, and detected peaks.

## Prerequisites

To run the analysis, you need Python installed with the following libraries:

* **OpenCV** (`cv2`): For reading video files and drawing Region of Interest (ROI) boxes.
* **NumPy** & **Pandas**: For data handling and signal array manipulation.
* **Matplotlib**: For generating signal graphs.
* **SciPy**: For the peak detection algorithm.
* **OpenPyXL**: For reading the Excel ground truth file.

### Installation

You can install the required dependencies using pip:

```bash
pip install opencv-python numpy pandas matplotlib scipy openpyxl

```

## Setup and Usage

1. **Prepare the Data**:
* Place your experimental video file (e.g., `50 bit measurments.mp4`) in the project folder.
* Ensure the ground truth file `part one bit.xlsx` is present. It must contain sheets named `10 bit random list`, `25 bit random list`, and `50 bit random list`.


2. **Configure the Script**:
* Open `code.ipynb`.
* In the **SETTINGS** cell, update the `video_path` variable to point to your video file:
```python
video_path = r"path\to\your\video_file.mp4"

```

3. **Run the Analysis**:
* Execute the cells in the notebook.
* **Selection Step**: A window will open showing the first frame of the video. You will be prompted to select 4 regions in the following order:
1. **Alice V** (Vertical polarization path)
2. **Alice H** (Horizontal polarization path)
3. **Bob V**
4. **Bob H**

* **Controls**: Click and drag to draw a box around the light spot, then press **SPACE** or **ENTER** to confirm each selection.

4. **Output**:
* The script prints the count of detected Vertical vs. Horizontal bits.
* It saves plots (e.g., `measurments and peaks...png`) showing the raw signal and detected pulses for analysis.

## Code Logic

1. **Initialization**: The script parses the video filename to determine if the expected bit count is 10, 25, or 50.
2. **Processing**: It iterates through every frame, filtering for red color only and summing the intensity within the user-defined ROIs.
3. **Analysis**:
* Signals are normalized.
* Peaks are detected using `find_peaks` based on specific height thresholds to ignore noise.
* Detected peaks are compared against the ground truth Excel data.


## Authors
- [Ziv Schoenfeld](https://github.com/zivschoenfeld)
- [Tomer Lahav](https://github.com/TomerLahav)
