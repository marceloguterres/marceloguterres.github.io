# Migração do projeto `codex_gauss`

Você não encontrou o programa em `https://github.com/marceloguterres/codex_gauss` porque este ambiente não conseguiu fazer push no GitHub (bloqueio de conexão).

## Arquivos prontos para migração

- `codex_gauss_files/README.md`
- `codex_gauss_files/simulacao_normal.py`

## Publicação (na sua máquina local)

Rode no clone deste repositório:

```bash
bash scripts/publish_codex_gauss.sh
```

Depois execute o push:

```bash
cd codex_gauss
git push origin main
```

Se o repositório usar branch `master`, troque para:

```bash
git push origin master
```
