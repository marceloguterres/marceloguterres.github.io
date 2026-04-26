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
