# Migração do projeto `codex_gauss`

Os arquivos foram removidos deste repositório porque estavam no local errado.

Para subir o projeto no repositório correto (`https://github.com/marceloguterres/codex_gauss`):

```bash
git clone https://github.com/marceloguterres/codex_gauss.git
cd codex_gauss

cat > README.md <<'MD'
# codex_gauss

Projeto inicial para simulação de distribuição normal em Python.

## Como executar

```bash
python3 simulacao_normal.py
```
MD

cat > simulacao_normal.py <<'PY'
import random
import statistics


def simular_distribuicao_normal(mu: float = 0.0, sigma: float = 1.0, n: int = 10_000):
    amostras = [random.gauss(mu, sigma) for _ in range(n)]
    media = statistics.mean(amostras)
    desvio = statistics.pstdev(amostras)
    return amostras, media, desvio


if __name__ == "__main__":
    _, media, desvio = simular_distribuicao_normal()
    print(f"Média estimada: {media:.4f}")
    print(f"Desvio padrão estimado: {desvio:.4f}")
PY

git add README.md simulacao_normal.py
git commit -m "Add normal distribution simulator"
git push origin main
```
