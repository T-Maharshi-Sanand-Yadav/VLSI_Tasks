# VLSI Tasks Repository Usage Guide

This repository is the common submission repository for all VLSI assignments.

Students must submit every assignment in this same repository. Each assignment will have a separate assignment folder, and each student must upload files only inside their own name folder.

## Current Repository Structure

```text
VLSI_Tasks
|
|-- Assignment_01_Synchronizer
|   `-- Student_Submissions
|       |-- Priyadharshini_S
|       `-- Srikanth_V
|
|-- README.md
|-- STUDENT_INSTRUCTIONS.md
`-- USAGE.md
```

## Current Assignment

```text
Assignment_01_Synchronizer
```

Student folders:

```text
Assignment_01_Synchronizer/Student_Submissions/Priyadharshini_S
Assignment_01_Synchronizer/Student_Submissions/Srikanth_V
```

## Important Rules For Students

1. Submit only inside your own folder.
2. Do not edit, rename, move, or delete another student's folder.
3. Do not upload files directly into the repository root.
4. Keep file names clear and meaningful.
5. Add Verilog files inside `RTL`.
6. Add testbench files inside `TESTBENCH`.
7. Add EDA Playground links inside `EDA_PLAYGROUND/eda_links.txt`.
8. Add EDA Playground screenshots inside `EDA_PLAYGROUND/screenshots`.
9. Draw and save CircuitVerse circuits only in the shared project: https://circuitverse.org/users/217365/projects/synchronizer.
10. Add CircuitVerse screenshots inside `CIRCUITVERSE/screenshots`.
11. Add Cadence schematics inside `CADENCE/schematics`.
12. Add Cadence waveforms inside `CADENCE/waveforms`.
13. Add Liberty `.lib` files inside `CADENCE/lib_files`.
14. Add the Word report inside `DOC`.
15. Add the PowerPoint presentation inside `PPT`.

## Assignment 01 Required Folder Structure

Each student folder must follow this structure:

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

## CircuitVerse Work

Students must use only this shared CircuitVerse project:

https://circuitverse.org/users/217365/projects/synchronizer

The trainer has already added students as collaborators. Do not create a separate CircuitVerse project for this assignment. Create and save all six synchronizer circuits directly inside the shared project. Upload screenshots of your completed circuits in your GitHub folder under `CIRCUITVERSE/screenshots`.

## Method 1: Upload Using GitHub Website

This is the recommended method for beginners.

### Step 1: Open The Repository

Open the GitHub repository link shared by the trainer.

Example:

```text
https://github.com/<trainer_username>/VLSI_Tasks
```

### Step 2: Open Your Own Folder

Priyadharshini S should open:

```text
Assignment_01_Synchronizer/Student_Submissions/Priyadharshini_S
```

Srikanth V should open:

```text
Assignment_01_Synchronizer/Student_Submissions/Srikanth_V
```

### Step 3: Upload Files In The Correct Subfolder

Use this mapping:

```text
RTL files              -> RTL
Testbench files        -> TESTBENCH
EDA links              -> EDA_PLAYGROUND/eda_links.txt
EDA screenshots        -> EDA_PLAYGROUND/screenshots
CircuitVerse project   -> https://circuitverse.org/users/217365/projects/synchronizer
CircuitVerse images    -> CIRCUITVERSE/screenshots
Cadence schematics     -> CADENCE/schematics
Cadence waveforms      -> CADENCE/waveforms
Liberty files          -> CADENCE/lib_files
PowerPoint file        -> PPT
Word report            -> DOC
```

### Step 4: Upload Through GitHub

Inside the required folder:

1. Click `Add file`.
2. Click `Upload files`.
3. Drag and drop your files.
4. Scroll to `Commit changes`.
5. Enter a meaningful commit message.
6. Click `Commit changes`.

Good commit message examples:

```text
Upload RTL files for Assignment 01
Upload testbenches and EDA links
Upload Cadence waveforms and report
```

### Step 5: Add EDA Playground Links

Open this file in your folder:

```text
EDA_PLAYGROUND/eda_links.txt
```

Click the edit button and add links like this:

```text
1FF Data Synchronizer:
https://edaplayground.com/x/xxxx

2FF Data Synchronizer:
https://edaplayground.com/x/yyyy

3FF Data Synchronizer:
https://edaplayground.com/x/zzzz

1FF Reset Synchronizer:
https://edaplayground.com/x/aaaa

2FF Reset Synchronizer:
https://edaplayground.com/x/bbbb

3FF Reset Synchronizer:
https://edaplayground.com/x/cccc
```

Then click `Commit changes`.

## Method 2: Upload Using Git Commands

Use this method only if you are comfortable with Git.

### Step 1: Clone Repository

```bash
git clone https://github.com/<trainer_username>/VLSI_Tasks.git
```

### Step 2: Enter Repository

```bash
cd VLSI_Tasks
```

### Step 3: Copy Your Files

Copy your files into your own folder only.

Example:

```text
Assignment_01_Synchronizer/Student_Submissions/Priyadharshini_S
```

### Step 4: Check Status

```bash
git status
```

### Step 5: Add Your Folder

For Priyadharshini S:

```bash
git add Assignment_01_Synchronizer/Student_Submissions/Priyadharshini_S
```

For Srikanth V:

```bash
git add Assignment_01_Synchronizer/Student_Submissions/Srikanth_V
```

### Step 6: Commit

```bash
git commit -m "Submit Assignment 01 files"
```

### Step 7: Push

```bash
git push
```

## Required Submission Checklist

Before final submission, confirm that you uploaded:

```text
[ ] sync_1ff.v
[ ] sync_2ff.v
[ ] sync_3ff.v
[ ] reset_sync_1ff.v
[ ] reset_sync_2ff.v
[ ] reset_sync_3ff.v
[ ] tb_sync_1ff.v
[ ] tb_sync_2ff.v
[ ] tb_sync_3ff.v
[ ] tb_reset_sync_1ff.v
[ ] tb_reset_sync_2ff.v
[ ] tb_reset_sync_3ff.v
[ ] EDA Playground links
[ ] EDA Playground screenshots
[ ] CircuitVerse screenshots
[ ] Cadence schematics
[ ] Cadence waveforms
[ ] Liberty .lib files
[ ] Word report .docx
[ ] PowerPoint presentation .pptx
```

## Final Submission Message Format

After uploading all files, send this message to the trainer:

```text
Name:
Assignment Name:
GitHub Folder Link:
EDA Playground Links:
CircuitVerse Circuit Details:
```

Example:

```text
Name: Priyadharshini S
Assignment Name: Assignment 01 - Synchronizer Design and Characterization

GitHub Folder Link:
https://github.com/<trainer_username>/VLSI_Tasks/tree/main/Assignment_01_Synchronizer/Student_Submissions/Priyadharshini_S

EDA Playground Links:
1FF Data Synchronizer: https://edaplayground.com/x/xxxx
2FF Data Synchronizer: https://edaplayground.com/x/yyyy
3FF Data Synchronizer: https://edaplayground.com/x/zzzz
1FF Reset Synchronizer: https://edaplayground.com/x/aaaa
2FF Reset Synchronizer: https://edaplayground.com/x/bbbb
3FF Reset Synchronizer: https://edaplayground.com/x/cccc

CircuitVerse Circuit Details:
Circuits created and saved only in the shared CircuitVerse project: https://circuitverse.org/users/217365/projects/synchronizer
```

## Common Mistakes To Avoid

1. Do not upload files into another student's folder.
2. Do not upload all files directly into the repository root.
3. Do not rename assignment folders.
4. Do not delete another student's files.
5. Do not forget to update `eda_links.txt`.
6. Do not submit only screenshots without RTL and testbench files.
7. Do not submit incomplete reports or presentations.

## Future Assignments

For every new assignment, the trainer will create a new folder:

```text
Assignment_02_<Assignment_Name>
Assignment_03_<Assignment_Name>
Assignment_04_<Assignment_Name>
```

Students must submit inside:

```text
Assignment_<Number>_<Assignment_Name>/Student_Submissions/<Your_Name>
```

The same repository will be used for all future assignments.


