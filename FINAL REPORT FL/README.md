# Final Report - Fuzzy Logic-Based Irrigation Control System 🌱💧

## 📖 Overview
This report presents a **Mamdani-Type 1 Fuzzy Logic** model for **automated irrigation control** using real-time sensor data. The model analyzes **soil moisture, humidity, and temperature** to determine the optimal amount of water required for irrigation in a **square meter** of land. The study explores **fuzzy logic-based decision-making**, optimization techniques, and performance analysis to improve irrigation efficiency.

---

## 🏗 Project Structure

### 📂 `Archive`
- **APPENDIX.docx** - Contains additional reference materials.

### 📂 `FL FINAL REPORT`
- **FINAL REPORT BABU P2849288.docx / .pdf** - Main report document.
- **Implementation FIS Code.zip** - MATLAB code implementation.

### 📂 `SECTION 2 - Sensor Data & Initial Implementation`
- **CS-SoilMoisture-humidity.png** - Soil moisture sensor readings.
- **CS-SoilMoisture-Temperature.png** - Temperature sensor data.
- **FirstImplementation.fis** - Initial fuzzy inference system.
- **fuzzyHumidity.png / fuzzyTemperature.png / fuzzyIrrigation.png** - Visualizations of fuzzy logic parameters.

### 📂 `SECTION 3 - Membership Functions & Rules`
- **ICS Generalized Bell.fis / ICS Gaussian.fis / ICS Trapezoidal.fis / ICS Triangular.fis** - Various membership function configurations tested.
- **Multiple screenshots** - Membership function and rule inference results.

### 📂 `SECTION 4 - Optimization & Final Model`
- **Optimized FIS System (`ICS Optimized.fis`)**
- **FIS Plot.png** - Visualization of the fuzzy system.
- **MF Outputs (MF-H.png, MF-SM.png, MF-T.png, etc.)** - Optimized membership function graphs.
- **Rule Base.png / Rule Inference.png** - Fuzzy rule visualization.

---

## 📊 Key Features & Findings

### 🌍 **Motivation**
- Water conservation is crucial for sustainable agriculture.
- High irrigation costs demand **smart water management**.
- **Fuzzy logic** provides a robust solution for handling uncertainty in real-world conditions.

### ⚙ **Implementation**
- **Inputs**: Soil Moisture, Humidity, Temperature.
- **Output**: Recommended water quantity for irrigation.
- **Fuzzy Inference System (FIS)**: Mamdani-Type 1 model implemented in MATLAB.
- **Defuzzification**: Centroid, Bisector, SOM, LOM, and MOM techniques evaluated.

### 🏆 **Optimized Model Results**
- **Gaussian Membership Function** provided the smoothest control surface.
- **12-rule base** defined optimal irrigation recommendations.
- **Sum aggregation method** yielded the most refined rule inference.
- **"Smallest of Maximum" defuzzification (SOM)** provided the most accurate outputs.
- **90.6% accuracy** based on multiple test cases.

### 🔬 **Further Research Areas**
- **Integration with real-world sensor data** for continuous training.
- **Hybrid AI models** combining fuzzy logic with machine learning.
- **Adaptive fuzzy models** based on seasonal variations.

---

## 🖥 How to Run the MATLAB Code
1. **Unzip** the `Implementation FIS Code.zip` file.
2. Open MATLAB and navigate to the extracted folder.
3. Load the `.fis` files into the **Fuzzy Logic Designer**.
4. Run simulations and modify membership functions as needed.
5. Generate control surface plots and analyze irrigation outputs.

---
