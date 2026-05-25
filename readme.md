# Template projet Python

Ce repository est un template de projet Python. Il sert de base pour démarrer un nouveau projet avec certains standards et des outils déjà configurés (semantic-release).
Il peut être adapté pour utiliser d'autres technologies (node, ...).

## Pré-requis

- Python 3.12
- Node v24+
- `make`

## Installation

```bash
make setup-dev-env
source env/bin/activate
```

Cette commande crée l'environnement virtuel, installe les dépendances et configure pre-commit.

## Variables d'environnement

Copier `.env.example` en `.env` et adapter les valeurs.
Si des variables d'environnement sont ajoutées, il faut modifier `src/utils/settings.py` pour qu'elles soient lues.

## Lancer le projet

```bash
python -m src.main
```

## Tests

Pour lancer les tests
```bash
make test
```

## Structure

```
.
├── .github/
│    ├── workflows: workflows github
│    └── skills: skills copilot
├── src/         # Code source
├── tests/       # Tests unitaires (pytest)
└── docs/        # Documentation complementaire
```

## Commandes disponibles

Quelques commandes utiles

| Commande              | Description                                      |
|-----------------------|--------------------------------------------------|
| `make setup-dev-env`  | Configure l'environnement de developpement       |
| `make test`           | Lance les tests pytest                           |
| `make clean`          | Supprime les fichiers temporaires                |
