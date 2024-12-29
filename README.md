# Conceptual Accessory Gearbox Design

**ME 314 Spring 2024 Student Design Project**  
Department of Mechanical Engineering  
Professor: Ricardo Ayala  

## Table of Contents

- [Overview](#overview)
- [Design Requirements](#design-requirements)
- [Key Design Features](#key-design-features)
- [Analysis and Calculations](#analysis-and-calculations)
- [Conclusion](#conclusion)
- [References](#references)

---

## Overview

This project focuses on the design of an accessory drive gearbox for a commercial aircraft, mounted below the jet engine compressor case. The gearbox drives essential components such as the engine fuel pump, oil pump, hydraulic pump, and electrical generator. It is powered by a drive shaft connected to the engine compressor spool through a compressor power transfer shaft.

<p align="center">
  <img src="https://github.com/user-attachments/assets/b26b0191-8ab4-47c9-9a70-0216172b74a7" alt="Gearbox Installation" width="700">
</p>

Key considerations for the design include:
- Packaging constraints and weight limitations (maximum weight: 260 lbf).
- Durability under moderate shock loading.
- Operational reliability at temperatures below 250°F.

The final design ensures a cost-efficient and functional solution for aircraft accessory drives, meeting all specified requirements and performance standards.

---

## Design Requirements

The accessory gearbox must satisfy the following criteria:
- **Material and Geometry**:
  - Gears: Spur or helical with a 20° pressure angle.
  - Shafts: AISI 4140 Q&T steel for high strength and fatigue resistance.
  - Components: Mounted with specific torque and speed tolerances.

- **Loading and Safety Factors**:
  - Minimum design factor of 1.15 for contact stresses.
  - Minimum design factor of 1.3 for gear bending stresses.
  - Service life equivalent to \(10^8\) cycles.

- **Operational Parameters**:
  - Uniform power distribution and moderate shock loading.
  - Precision manufacturing (No. 10 quality standard).
  - High reliability (98%).

---

## Key Design Features

1. **Gear Train Design**:
   - Consists of 19 spur gears with uncrowned teeth.
   - Designed to transmit torque and speed with minimal loss.
   - Manufactured from annealed 31CrMoV9 steel at 400°F for wear resistance.

2. **Shafts**:
   - Total of 11 shafts, including the accessory drive and four component shafts.
   - Optimized dimensions for strength and alignment.
   - Bearings and retaining rings ensure proper positioning and durability.

3. **Component Mounting**:
   - Oil pump, fuel pump, hydraulic pump, and electrical generator mounted to the gearbox housing.
   - Secure attachment with machined aluminum support fittings.

---

## Analysis and Calculations

The project involved comprehensive analysis using:
- **Gear Analysis**:
  - Calculated bending and contact stresses using AGMA standards.
  - Safety factors for gears: 1.15-1.10 (Yield Design Factor) | 1.3 (bending) | 1.15 (contact).
 
    <p align="center">
      <img src="https://github.com/user-attachments/assets/378909df-4d8d-4493-8de3-39c3f079a077" alt="Final Results" width="500">
    </p>

- **Shaft Analysis**:
  - Determined shaft diameters based on Von Mises stress and DE-Goodman fatigue criteria.
  - Constructed S-N curves to verify fatigue resistance.
 
    <p align="center">
      <img src="https://github.com/user-attachments/assets/6d12c79b-3872-47d8-a5af-894139b27ca0" alt="SN Curve" width="500">
    </p>
 
- **Software Tools**:
  - SolidWorks for component layout and design.
  - Excel and MATLAB for detailed calculations.
 
    <p align="center">
      <img src="https://github.com/user-attachments/assets/c1775a38-80fd-4e0b-b25d-04f034cc5841" alt="SolidWorks Layout" width="500">
    </p>

- **Tables and Calculations**:
  - All tables and hand calculations can be referred to in the report attached to this repository.
  - The Master spreadsheet was used to create iterations of different constraints implemented into the geartrain, which can be found in this repository. 

---

## Conclusion

The accessory gearbox design successfully meets all project requirements, providing a robust and efficient solution for powering critical aircraft components. It adheres to weight and packaging constraints, ensures operational reliability, and achieves the required safety factors for all gears and shafts.

---

## References

1. ME 314 Lecture Slides, Professor Ricardo Ayala.  
2. Budynas, R.G., & Nisbett, J.K. *Shigley's Mechanical Engineering Design*, 9th Edition, McGraw-Hill.  
3. American Gear Manufacturers Association (AGMA) Standards.
