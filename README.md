# AeroFraud 🛫💳

> Aerospace-grade anomaly detection for financial transactions

[![CI](https://github.com/yourusername/aerofraud/actions/workflows/ci.yml/badge.svg)](https://github.com/yourusername/aerofraud/actions)
[![Python 3.11+](https://img.shields.io/badge/python-3.11+-blue.svg)](https://www.python.org/downloads/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 🚀 Project Status

**Work in Progress** — Building a production-grade fraud detection system applying aerospace reliability engineering principles.

### Current Progress
- [x] Project setup and tooling
- [x] CI/CD pipeline
- [ ] Synthetic data generation
- [ ] Feature engineering
- [ ] Model training
- [ ] API development
- [ ] Deployment

## 💡 The Concept

After 5 years building predictive maintenance systems for aerospace, I'm applying those same reliability engineering principles to financial fraud detection.

| Aerospace | Fraud Detection |
|-----------|-----------------|
| Vibration anomaly detection | Unusual spending velocity |
| Predictive maintenance | Transaction pattern deviation |
| Redundant systems | Ensemble models |

## 🛠️ Tech Stack

- **Language:** Python 3.11+
- **ML:** scikit-learn, XGBoost, LightGBM, SHAP
- **API:** FastAPI, Uvicorn
- **Deployment:** Docker, Prometheus, Grafana
- **Dev Tools:** uv, ruff, mypy, pytest

## 📝 License
MIT License - see [LICENSE](!License) for details.

## 👤 Mychelle Hale
Aerospace Data Scientist → ML Engineer

[LinkedIn](https://linkedin.com/in/mychelle-hale)

## 🏗️ Development

```bash
# Setup
git clone https://github.com/yourusername/aerofraud.git
cd aerofraud
uv sync --all-extras

# Run checks
make test
make lint
make type-check

# Or all at once
make all
