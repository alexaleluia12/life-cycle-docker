# life cycle com docker


## Objetivo desenvolver código muito simples em python + docker (apenas print)

```
Todos os exemplos do docker que eu vi ninguém faz o básico. Apenas usar monte de
ferramentas e software de terceiro para demostrar como o docker funciona.
Porém sempre tive duvida como efetivamente desenvolver algo com docker.
Temos duas tarefas:
```

- "Hello World"
- "Hello World" dez vezes com o index na frente começando de um

----
### O que precisa funcionar
```
Python aqui eu utilizei o 3.6 visto no Dockerfile.
É necessário construir uma imagem docker apartir do Dockerfile.
Depois rodar um container a partir desse imagem.

O que esse Dockerfile faz: 
    cria uma imagem como base no python3.6
    copia o código main.py para /home/app/ 
    por padrão roda o código main.py

Cada vezes que eu mudar o código e quiser rodar para ver a mudança preciso 
criar uma nova imagem e rodar um container: Sim

Porém o docker não vai fazer tudo do zero tem um esquema de cache envolvido.
É indicado por o que muda com frequência em baixo do Dockefile.
```

### Tarefa 1
```sh
docker build -t mypy-hello:1 .
docker run mypy-hello:1
```

output
```
Hello World
```

O Makefile faz isso direto. O código python é super simples apenas um print. Build e Run: make

### Tarefa 2

Removi o código anterior adicionei um for e um print. Depois construir a imagem e executar, Build e Run.

output
```
1 Hello World
2 Hello World
3 Hello World
4 Hello World
5 Hello World
6 Hello World
7 Hello World
8 Hello World
9 Hello World
10 Hello World
```

### Conclusão

Sempre que houver uma alteração no código e quiser ver o resultado é necessário
construir a imagem novamente e executar um container.

