# 🐝 InsightSwarm: Autonomous Enterprise Data Analytics Agent

![Python](https://img.shields.io/badge/Python-3.11-blue)
![Gemini](https://img.shields.io/badge/AI-Gemini%202.5-orange)
![Google ADK](https://img.shields.io/badge/Framework-Google%20ADK-green)
![License](https://img.shields.io/badge/License-CC--BY--SA%204.0-lightgrey)

**InsightSwarm** is a production-grade multi-agent system designed for the **Enterprise Track** of the Google AI Agents Intensive Capstone. It solves "Corporate Amnesia" by using a persistent Memory Bank and eliminates data silos by autonomously querying SQL databases, formulating strategies, and generating self-corrected visualizations.

---

## 🎯 The Problem
In modern enterprises, data analysis faces three critical bottlenecks:
1.  **Data Silos:** Engineers, Analysts, and Managers work in disconnected loops.
2.  **Corporate Amnesia:** Standard chatbots reset context after every session. If an analyst finds a trend in Q1, the AI forgets it by Q2.
3.  **Fragility:** AI-generated code often breaks due to syntax errors or library mismatches.

## 💡 The Solution
InsightSwarm implements a **"Memory-Augmented Hive Architecture"**:
* **Observe:** Scans live SQL databases.
* **Think:** Plans analysis strategies aligned with historical context.
* **Act:** Autonomously writes SQL and Python code.
* **Remember:** Consolidates new insights into a persistent Knowledge Graph (SQLite), making the agent smarter with every run.

![Architecture Diagram](https://placeholder-link-to-your-architecture-diagram)
*The architecture demonstrates a centralized data warehouse system where data flows from sources to processing systems.*

---

## 🌟 Key Features (Implementation)

This project demonstrates advanced agentic patterns using the Google Agent Development Kit (ADK):

### 1. 🧠 Active Memory Bank (Long-Term Memory)
Unlike standard RAG, InsightSwarm performs **Extraction & Consolidation**. It identifies key facts from user interactions (e.g., "West region prefers Blue charts") and commits them to a persistent `memory_bank` SQL table.

### 2. 🔄 Self-Healing Visualization Loop
We implemented a **Loop Agent** pattern for quality control.
* **VizExpert Agent:** Drafts Python code (Matplotlib/Seaborn) to generate charts.
* **DesignCritic Agent:** Reviews the chart for errors and brand compliance.
* **Loop:** If the Critic rejects the chart, the Expert fixes the code automatically.

### 3. 🛡️ Enterprise Guardrails
A pre-flight `SecurityGuard` layer acts as an interceptor that:
* Scrubs PII (Personally Identifiable Information).
* Blocks Prompt Injection attacks using Regex/Logic before the LLM ever processes the request.

### 4. 📊 Observability & FinOps
* **Enterprise Logger:** Structured SQL logging for all traces (Inputs, Outputs, Tool Calls).
* **FinOps Dashboard:** Calculates estimated token usage and cost per session ($0.00001 precision).
* **LLM-as-a-Judge:** An automated evaluator that scores the quality of every run.

---

## 🏗️ System Architecture

The system uses a **Hierarchical Hybrid Architecture**:

* **Orchestrator (SequentialAgent):** Manages the hand-off between specialized sub-agents.
* **Sub-Agents:**
    * `SeniorDataEngineer`: Writes and executes SQL.
    * `StrategicAnalyst`: Performs reasoning and RAG.
    * `VisualizationLoop`: A nested LoopAgent containing `VizExpert` and `DesignCritic`.
* **Tools:**
    * `run_sql_analytics`: Secure read-only database access.
    * `render_plot`: Python code execution sandbox for images.
    * `@cache_result`: A decorator to cache expensive queries.

---

## 🚀 Installation & Usage

### Prerequisites
* Python 3.10+
* Google Gemini API Key

### 1. Clone the Repository
```bash
git clone [https://github.com/agatapurwa/insightswarm-enterprise-agent.git](https://github.com/agatapurwa/insightswarm-enterprise-agent.git)
cd insightswarm-enterprise-agent
