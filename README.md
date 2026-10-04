# Introduction to Quantum Computing with Qiskit

A hands-on introduction to quantum computing that builds from the first qubit to an end-to-end implementation of **Shor's factoring algorithm**.

This project is structured as an interactive Jupyter notebook for learners with basic Python experience and **no prior quantum-computing background**. Rather than treating quantum algorithms as black boxes, the notebook develops them step by step through explanations, mathematics, executable Qiskit circuits, visualizations, experiments, and exercises.

By the end, learners build and simulate the quantum period-finding core of Shor's algorithm, recover factors through classical post-processing, investigate noise and register size, and extend the implementation to a new factoring problem.

## What you'll learn

The notebook progresses from fundamental concepts to a complete quantum algorithm:

1. **Qubits and measurement**
   - Computational basis states, superposition, probabilities, and measurement histograms

2. **Quantum gates**
   - X, H, Z, S, T, CNOT, SWAP, and Toffoli gates
   - Controlled operations and reversible computation

3. **Multi-qubit systems**
   - Tensor-product states, Bell states, entanglement, and quantum correlations

4. **Phase and interference**
   - Relative phase and constructive and destructive interference

5. **Quantum Fourier Transform**
   - QFT and inverse-QFT circuits
   - Periodic quantum states and measurement peaks

6. **Shor's algorithm**
   - Modular exponentiation
   - Counting and work registers
   - Controlled modular multiplication
   - Quantum period finding
   - Continued-fraction interpretation
   - Classical factor recovery
   - Factoring $15$ into $3\times5$

7. **Further experiments**
   - Changing the modular base
   - Increasing the counting-register size
   - Simulating gate noise
   - Building an automated factoring pipeline
   - Extending the implementation from $N=15$ to $N=21$

## How the notebook is structured

The notebook is designed to be completed **in order**, with each section building toward the next:

```text
Qubits
  ↓
Quantum gates
  ↓
Multi-qubit systems
  ↓
Entanglement
  ↓
Phase and interference
  ↓
Quantum Fourier Transform
  ↓
Period finding
  ↓
Shor's algorithm
```

Concepts are introduced before they are used in larger algorithms. Throughout the notebook, learners predict results, complete code, interpret measurements, and modify circuits themselves.

## Shor's algorithm implementation

The main implementation factors

```text
N = 15
```

using

```text
a = 2
```

and constructs the period-finding workflow explicitly:

```text
Prepare counting register
        ↓
Create superposition
        ↓
Initialize work register
        ↓
Controlled modular exponentiation
        ↓
Encode periodic correlations
        ↓
Inverse Quantum Fourier Transform
        ↓
Measure counting register
        ↓
Recover period
        ↓
Classical GCD calculation
        ↓
3 × 5 = 15
```

The optional challenges then modify and extend this implementation, culminating in applying the same ideas to factor $N=21$.

## Getting started

There are two easy ways to run the notebook.

### Option 1: Download the notebook

Click `intro_to_quantum_computing_with_qiskit.ipynb` in this repository, download the raw `.ipynb` file, and open or upload it in any environment that supports Jupyter notebooks, such as:

- Google Colab
- Visual Studio Code
- JupyterLab
- Jupyter Notebook

Run the setup cells, then work through the notebook in order. Pause at exercise cells and complete the marked instructions before running them. Unfinished starters may raise errors or produce incomplete results. If you do not want to work through an exercise yourself, skip its starter cell and run the provided solution cell instead. The optional challenges require you to complete their TODOs before execution.

### Option 2: Clone and run with Docker
Prerequisite: Docker Desktop

This method requires Docker Desktop with the WSL 2 backend on Windows (or Docker Engine on Linux/macOS). If you're on Windows, install Docker Desktop and make sure WSL integration is enabled before continuing.

Don't want to install Docker? Use Option 1: Download the .ipynb and run it locally instead.

Clone the complete repository:

```bash
git clone <repository-url>
cd <repository-name>
```

Build the included Docker image:

```bash
docker build -t quantum-qiskit .
```

Start the JupyterLab environment:

```bash
docker run --rm -it -p 8888:8888 -v "${PWD}:/workspace" quantum-qiskit
```

Open the JupyterLab URL displayed in the terminal and select `intro_to_quantum_computing_with_qiskit.ipynb`.

The Docker image uses Python 3.11 and installs the required dependencies from `requirements.txt`, providing a reproducible environment without requiring the packages to be installed directly on your system.

## Recommended background

The notebook assumes basic Python syntax and familiarity with functions and loops.

No previous experience with Qiskit or quantum computing is required. Mathematical concepts are introduced as they become relevant to the circuits and algorithms being developed.

## Tech stack

- **Python** (NumPy, Matplotlib)
- **Qiskit** (Qiskit Aer)
- **Docker**

## Scope

This is an **educational, simulator-based implementation** of Shor's algorithm.

The small factoring examples use modular-arithmetic circuits designed for learning rather than the large-scale reversible arithmetic required to factor cryptographically relevant integers. The project demonstrates the algorithmic structure of Shor's algorithm and the interaction between its quantum and classical components, rather than serving as a general-purpose factoring system.
