# KGEmbeddings-4-ConflictGames

<img width="1516" height="1074" alt="image" src="https://github.com/user-attachments/assets/5ddab2a8-dfb6-4a7f-b7b4-6d6fa387df9a" />


This repository contains a **semantic representation** of experimental conflict game datasets, including:

- an  **OWL ontology** modeling the structure of the game
- a **SKOS vocabulary** for categorical variables
- the **datasets and codebook**
- will contain what we need to perform kg embeddings (such as, the knowledge graphs)

The goal is to bridge experimental behavioral data and graph-based machine learning.

---

## 📁 Repository contents

├── conflict-dataset-ontology.ttl # Core OWL ontology (structure)\
├── conflict-vocabulary.ttl # SKOS controlled vocabularies\
├── conflict_dataset_codebook.R # Original dataset codebook\
├── conflict_dataset_final.rda # Dataset (R format)\
├── LICENSE # Apache 2.0 license\
├── README.md # Project documentation


---

## 🎮 What the ontology models

The ontology mirrors the structure described in the datasets and their codebook.

### Core modeling idea

> A **Participant** takes part in a **Game**.  
> Each game consists of multiple **Rounds**.  
> In each round, the participant is involved in an **Interaction** and makes **one Decision**.

The hierarchy **game → rounds → decisions** is central to the model.

---

## Main entities

### Participant
A human subject in the experiment.

Participants have:
- demographic attributes (e.g. age, gender)
- psychological scale attributes (e.g. generosity, national identity)
- exactly one home country

---

### Game
A conflict game in which participants take part and make decisions across multiple rounds.

---

### Round
A single round within a game.

Each round contains:
- one interaction
- one decision by the focal participant

---

### Interaction
The interaction context between a focal participant and an opponent within a round.

⚠️ **Important data constraint**  
The dataset does not include persistent identifiers for opponents.  
As a result:
- the opponent is not modeled as a persistent participant
- only the **opponent’s country** is observable and represented

This constraint is respected throughout the ontology.

---

### Decision
A decision event corresponding to a participant’s investment choice in a round.

Each decision:
- is made by exactly one participant
- has exactly one role
- has a numeric investment value (absolute and percentage)

---

### Country
A country associated with participants and opponents, identified by ISO3 codes and described by country-level attributes (e.g. GDP, GINI).

---

### Dataset
A dataset release or version, included for provenance and traceability.

---

## 🏷️ Controlled vocabulary (SKOS)

Categorical variables in the dataset are represented using **SKOS vocabularies**, defined in `conflict-vocabulary.owl`.

This keeps the ontology clean and avoids hard-coding category values into the structural model.

### Included vocabularies

#### Decision roles
Used to annotate decisions:
- **Attacker** – the participant invests resources to take resources from an opponent
- **Defender** – the participant invests resources to protect their own resources

#### Group relations
Used to annotate interactions:
- **Ingroup** – opponent belongs to the same group as the participant
- **Outgroup** – opponent belongs to a different group
- **Stranger** – opponent’s group membership is unknown

Vocabulary concepts are **referenced**, not instantiated as agents or events.

---

## 🔗 How ontology and vocabulary work together

- The **ontology** defines the structural entities and relations.
- The **vocabulary** defines standardized labels for categorical values.
- Decisions and interactions link to SKOS concepts via object properties.

This representation aims to improves clarity, reuse, and interoperability.

---

## 📈 Why this repository exists

This representation makes it possible to:

- populate a knowledge graph directly from row-based experimental data
- run structured queries over participants, games, rounds, and decisions
- analyze relational patterns across roles, group relations, and countries
- apply **knowledge graph embedding techniques** 

---

## Design principles

- ✔ grounded in datasets, codebook and previous work
- ✔ no inferred beliefs, strategies, or mental states  
- ✔ no theoretical constructs added beyond observed variables  
- ✔ a core game → round → decision structure  

The ontology is intentionally **minimal and extensible**.

---

## 📜 License

This project is released under the **Apache 2.0 License**.


