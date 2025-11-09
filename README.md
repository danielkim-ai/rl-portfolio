# 🧩 Reinforcement Learning Portfolio

This repository contains experiments and analyses from my reinforcement learning studies, focusing on **policy gradient** and **actor–critic** methods in continuous control environments.

---

## 🧠 Overview
- **Objective:** Examine the effects of entropy regularization, gradient clipping, and reward scaling on training stability.
- **Environments:** HalfCheetah-v4, Hopper-v4 (Gymnasium / MuJoCo)
- **Algorithms:**
  - REINFORCE (Monte Carlo Policy Gradient)
  - Soft Actor–Critic (SAC)
  - Deep Q-Network (DQN; for CartPole-v1)
- **Framework:** PyTorch

---

## 🧪 Experiments
| Algorithm | Environment | Notable Results |
|------------|--------------|-----------------|
| REINFORCE  | HalfCheetah-v4 | Baseline learning curve shows strong sensitivity to variance; entropy bonus improves exploration. |
| SAC        | Hopper-v4 | Stable performance under clipped double-Q setting; tuned α for reward temperature. |
| DQN        | CartPole-v1 | Validated replay buffer and target network synchronization. |

---

## 📊 Visualization
Results include:
- **Eval_AverageReturn** curves
- **Q-value trajectories**
- **Entropy coefficient sensitivity plots**

<img src="results/cartpole_dqn_eval_return_comparison.png" width="450"/>
<img src="results/cartpole_dqn_qvalues_comparison.png" width="450"/>
<img src="results/cartpole_exploration_sensitivity" width="450"/>
<img src="results/halfcheetah_reinforce_reparametrize_eval.png" width="450"/>
<img src="results/hopper_singleq_doubleq_clippeddoubleq_eval.png" width="450"/>
<img src="results/hopper_singleq_doubleq_clippeddoubleq_qvalues.png" width="450"/>
<img src="results/humanoid_singleq_doubleq_clippeddoubleq_eval.png" width="450"/>

---

## 🧩 Next Steps
- Integrate **information-theoretic regularization** (entropy bounds, KL control)
- Implement **quantization-aware RL policy networks**
- Apply **variance-reduction baselines** for Monte Carlo policy gradients

---

## 📚 References
- Sutton & Barto, *Reinforcement Learning: An Introduction* (2018)
- Haarnoja et al., *Soft Actor–Critic Algorithms and Applications*, 2019
- Schulman et al., *High-Dimensional Continuous Control Using Generalized Advantage Estimation*, 2016
