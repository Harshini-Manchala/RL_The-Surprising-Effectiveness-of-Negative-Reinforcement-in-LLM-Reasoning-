# The Surprising Effectiveness of Negative Reinforcement in LLM Reasoning

## Team Members
- Harshini (U23AI100)
- Krupal Rohit (U23AI090)
- Lasya Sri (U23AI091)

## Project Overview
This project explores how reinforcement learning using negative samples can improve mathematical reasoning in Large Language Models (LLMs).

Traditional supervised fine-tuning learns only from correct answers, while this project investigates learning from incorrect reasoning steps using reinforcement learning approaches.

The project reproduces baseline methods from the research paper and proposes improved reinforcement learning strategies.

---

## Objectives
- Reproduce NSR and W-REINFORCE baselines
- Implement improved RL-based approaches
- Compare methods using Pass@k metrics and reward curves
- Train efficiently using LoRA and 4-bit quantization

---

## Dataset
We use a subset of the MATH dataset containing:
- Algebra
- Geometry
- Number Theory
- Probability
- Precalculus

---

## Model Used
### Base Model
- Qwen2.5-Math-1.5B-Instruct

### Optimization Techniques
- LoRA (Low-Rank Adaptation)
- 4-bit Quantization

These techniques reduce GPU memory usage and enable training on limited hardware.

---

## Reinforcement Learning Methods

### 1. NSR (Negative Sample Reinforcement)
- Learns only from incorrect samples
- Correct answers are ignored
- Focuses learning on mistakes

### 2. W-REINFORCE
- Combines positive and negative samples
- Uses weighted reinforcement learning

---

## Proposed Improvements

### Entropy-NSR
Adds entropy regularization to encourage exploration and output diversity.

### Confidence-Weighted NSR
Penalizes highly confident wrong answers more strongly.

### Adaptive-λ
Dynamically changes λ during training based on model performance.

---

## Evaluation Metrics
- Pass@1
- Pass@4
- Pass@8
- Pass@32
- Confidence Score

---

## Final Results

| Method | Pass@1 | Pass@4 | Pass@8 | Pass@32 |
|---|---|---|---|---|
| NSR | 0.010 | 0.040 | 0.080 | 0.140 |
| W-REINFORCE | 0.012 | 0.050 | 0.090 | 0.160 |
| Adaptive-λ | 0.022 | 0.060 | 0.110 | 0.180 |
| Entropy-NSR | 0.011 | 0.050 | 0.090 | 0.150 |
| Confidence-Weighted NSR | 0.020 | 0.060 | 0.120 | 0.190 |

---

## Key Findings
- Confidence-Weighted NSR achieved the best overall Pass@k performance
- Adaptive-λ showed the best reward trend during training
- W-REINFORCE outperformed pure NSR
- Entropy-NSR improved exploration but produced noisier training

---

## Technologies Used
- Python
- PyTorch
- Hugging Face Transformers
- PEFT (LoRA)
- BitsAndBytes
- Reinforcement Learning

---

## Repository Structure

```bash
project/
│
├── rl_nb_(3).ipynb
├── README.md
└── results/
```

---

## Future Work
- Train on larger datasets
- Use larger language models
- Increase training steps
- Explore advanced reinforcement learning methods

---

## Conclusion
This project demonstrates that negative reinforcement learning can improve mathematical reasoning in LLMs by learning from incorrect responses and reducing overconfident mistakes.
