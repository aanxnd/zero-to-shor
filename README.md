# Introduction to Quantum Computing with Qiskit

> These notebooks were introduced and presented as part of an **Introduction to Quantum Computing and Qiskit** workshop with the **Quantum Club at the University of Waterloo**. **62 students attended the workshop**, using the notebooks to build quantum circuits in Qiskit, implement the QFT, and explore Shor’s algorithm hands-on.

<p align="center">
  <img src="Picture%201.jpeg" alt="University of Waterloo Quantum Club workshop ? picture 1" width="49%" />
  <img src="Picture%202.jpeg" alt="University of Waterloo Quantum Club workshop ? picture 2" width="49%" />
</p>

A hands-on introduction to quantum computing that builds from the first qubit to an end-to-end implementation of **Shor's factoring algorithm**.

This project is structured as two interactive Jupyter notebooks for learners with basic Python experience and **no prior quantum-computing background**. Rather than treating quantum algorithms as black boxes, the notebooks develop them step by step through explanations, mathematics, executable Qiskit circuits, visualizations, experiments, and exercises.

By the end, learners build and simulate the quantum period-finding core of Shor's algorithm, recover factors through classical post-processing, investigate noise and register size, and extend the implementation to a new factoring problem.

## What you'll learn

The two notebooks progress from fundamental concepts to a complete quantum algorithm:

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

## How the notebooks are structured

The material is split into two parts to make each notebook more manageable:

1. **Part 1: Quantum computing fundamentals**: [intro_to_quantum_computing_with_qiskit.ipynb](intro_to_quantum_computing_with_qiskit.ipynb) covers qubits, gates, entanglement, phase and interference, and the QFT, including its exercises. It ends with a link to Part 2.
2. **Part 2: Shor's algorithm**: [shors_algorithm_with_qiskit.ipynb](shors_algorithm_with_qiskit.ipynb) starts with its own dependency installation, imports, and QFT helpers copied from Part 1, followed by Section 6 and all optional challenges.

Work through **Part 1, then Part 2** to follow the learning progression. Each notebook runs independently: Part 2 includes all the setup and helper code it needs, so it does not require Part 1 to have been run or share a notebook session.

Each section builds toward the next:

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

Concepts are introduced before they are used in larger algorithms. Throughout the notebooks, learners predict results, complete code, interpret measurements, and modify circuits themselves.

## Shor's algorithm implementation

The main implementation in Part 2 factors

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

There are two easy ways to run the notebooks. Start with Part 1 and continue to Part 2 when you finish the QFT exercises.

### Option 1: Download the notebooks

Download the raw `.ipynb` files from this repository:

- [Part 1: Quantum computing fundamentals](intro_to_quantum_computing_with_qiskit.ipynb)
- [Part 2: Shor's algorithm](shors_algorithm_with_qiskit.ipynb)

Open or upload Part 1 in any environment that supports Jupyter notebooks, such as:

- Google Colab
- Visual Studio Code
- JupyterLab
- Jupyter Notebook

Run the setup cells at the top of each notebook, then work through its sections in order. When you finish Part 1, open Part 2 and run its setup cells, even if you already ran the setup in Part 1. Pause at exercise cells and complete the marked instructions before running them. Unfinished starters may raise errors or produce incomplete results. If you do not want to work through an exercise yourself, skip its starter cell and run the provided solution cell instead. The optional challenges require you to complete their TODOs before execution.

### Option 2: Clone and run with Docker
Prerequisite: Docker Desktop

This method requires Docker Desktop with the WSL 2 backend on Windows (or Docker Engine on Linux/macOS). If you're on Windows, install Docker Desktop and make sure WSL integration is enabled before continuing.

Don't want to install Docker? Use Option 1 to open the notebooks locally or in Google Colab.

Clone the complete repository:

```bash
git clone https://github.com/aanxnd/zero-to-shor/
cd zero-to-shor
```

Build the included Docker image:

```bash
docker build -t quantum-qiskit .
```

Start the JupyterLab environment:

```bash
docker run --rm -it -p 8888:8888 -v "${PWD}:/workspace" quantum-qiskit
```

Open the JupyterLab URL displayed in the terminal and select `intro_to_quantum_computing_with_qiskit.ipynb` for Part 1. After finishing it, open `shors_algorithm_with_qiskit.ipynb` for Part 2 and run its setup cells. Both notebooks are included in the repository and available in the same JupyterLab workspace.

The Docker image uses Python 3.11 and installs the required dependencies from `requirements.txt`, providing a reproducible environment without requiring the packages to be installed directly on your system.

## Recommended background

The notebooks assume basic Python syntax and familiarity with functions and loops.

No previous experience with Qiskit or quantum computing is required. Mathematical concepts are introduced as they become relevant to the circuits and algorithms being developed.

## Tech stack

- **Python** (NumPy, Matplotlib)
- **Qiskit** (Qiskit Aer)
- **Docker**

## Scope

This is an **educational, simulator-based implementation** of Shor's algorithm.

The small factoring examples use modular-arithmetic circuits designed for learning rather than the large-scale reversible arithmetic required to factor cryptographically relevant integers. The project demonstrates the algorithmic structure of Shor's algorithm and the interaction between its quantum and classical components, rather than serving as a general-purpose factoring system.
