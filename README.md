# Introduction to Quantum Computing with Qiskit

An interactive beginner-friendly notebook that takes you from basic quantum concepts to a simulated implementation of Shor's factoring algorithm.

Built with Qiskit, this project combines clear explanations, runnable circuits, visual measurement results, and hands-on exercises. It is designed for learners with basic Python experience and no previous background in quantum physics.

## What you'll learn

- Qubits, superposition, measurement, and probability
- Quantum gates including X, H, Z, S, T, CNOT, Toffoli, and SWAP
- Phase, interference, and entanglement
- The Quantum Fourier Transform
- Quantum period finding and the core ideas behind Shor's algorithm
- How classical post-processing recovers factors from quantum measurements
- How noise affects quantum-circuit results

## Highlights

- Learn by running real Qiskit circuits and reading measurement histograms.
- Build from single-qubit gates to multi-qubit reversible logic.
- Explore guided exercises before checking results in the simulator.
- Simulate period finding to factor `15` into `3 × 5`.
- Compare different bases, counting-register sizes, and noise levels.

## Getting started

Open the notebook in Google Colab or run it locally with Jupyter.

```bash
pip install qiskit qiskit-aer pylatexenc matplotlib
```

Run the setup cell, then follow the notebook in order.

## Tech stack

- Python Data Analysis
- Qiskit and Qiskit Aer

## Note

This is an educational simulator-based implementation of Shor's algorithm. It demonstrates the full quantum and classical workflow without claiming to be a general-purpose factoring system.
