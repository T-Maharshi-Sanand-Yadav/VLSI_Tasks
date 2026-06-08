# TMSY VLSI Assignments

This repository is the common public submission repository for VLSI assignments.

Students must submit every future assignment in this same repository. Each assignment will have a separate folder, and each student must submit only inside their own folder for that assignment.

## Repository Structure

```text
TMSY_VLSI_Assignments
|
|-- Assignment_01_Synchronizer
|   `-- Student_Submissions
|       |-- Student_01
|       `-- Student_02
|
|-- Assignment_02_<Future_Assignment_Name>
|   `-- Student_Submissions
|       |-- Student_01
|       `-- Student_02
|
`-- README.md
```


## Student Usage Guide

Students should read [USAGE.md](USAGE.md) before uploading assignment files.

## Current Assignment

### Assignment 01: Synchronizer Design and Characterization

Students must complete the following synchronizers:

1. 1-Flop Data Synchronizer
2. 2-Flop Data Synchronizer
3. 3-Flop Data Synchronizer
4. 1-Flop Reset Synchronizer
5. 2-Flop Reset Synchronizer
6. 3-Flop Reset Synchronizer

## Students

- Student 01: `Assignment_01_Synchronizer/Student_Submissions/Student_01`
- Student 02: `Assignment_01_Synchronizer/Student_Submissions/Student_02`

## Assignment 01 Requirements

For each synchronizer, students must:

- Create the schematic in Cadence Virtuoso.
- Perform functional simulation and verify waveforms.
- Generate the Liberty `.lib` file.
- Write Verilog RTL code.
- Write a Verilog testbench.
- Simulate using EDA Playground.
- Save the EDA Playground link.
- Draw the circuit only in the shared CircuitVerse project.
- Include screenshots, observations, and timing analysis in the report.

## Shared CircuitVerse Project

https://circuitverse.org/users/217365/projects/synchronizer

Students have been added as collaborators. All CircuitVerse circuits for this assignment must be created and saved only in this shared project. Students should not create separate CircuitVerse projects.

## Assignment 01 Student Folder Structure

```text
Assignment_01_Synchronizer/Student_Submissions/<Student_Name>
|
|-- RTL
|   |-- sync_1ff.v
|   |-- sync_2ff.v
|   |-- sync_3ff.v
|   |-- reset_sync_1ff.v
|   |-- reset_sync_2ff.v
|   `-- reset_sync_3ff.v
|
|-- TESTBENCH
|   |-- tb_sync_1ff.v
|   |-- tb_sync_2ff.v
|   |-- tb_sync_3ff.v
|   |-- tb_reset_sync_1ff.v
|   |-- tb_reset_sync_2ff.v
|   `-- tb_reset_sync_3ff.v
|
|-- EDA_PLAYGROUND
|   |-- eda_links.txt
|   `-- screenshots
|
|-- CIRCUITVERSE
|   `-- screenshots
|
|-- CADENCE
|   |-- schematics
|   |-- waveforms
|   `-- lib_files
|
|-- PPT
|   `-- presentation.pptx
|
|-- DOC
|   `-- report.docx
|
`-- README.md
```

## Common Rules For All Assignments

1. Submit only inside your own folder.
2. Do not edit or delete another student's folder.
3. Keep file names clear and meaningful.
4. Follow the folder structure given for each assignment.
5. Add a short `README.md` inside your student folder.
6. Final submission must include your GitHub folder link.

## Final Submission Format

```text
Name:
Assignment Name:
GitHub Folder Link:
EDA Playground Links, if applicable:
CircuitVerse Details, if applicable:
```

Best Regards,  
Maharshi Sanand Yadav  
VLSI Trainer  
TMSY Tutorials



