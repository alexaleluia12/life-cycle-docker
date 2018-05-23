# life cycle com docker


## Objetivo desenvolver código muito simples em python + docker (apenas print)

```
Todos os exemplos do docker que eu vi ninguem faz o básico. Apenas usar monte de
farramentas e software de terceiro para demostrar como o docker funciona.
Porém sempre tive duvida como efetivamente desenvolver algo com docker.
Temos duas tarefas:
```

- print "Hello World"
- print "Hello World" dez vezes com o index na frente comecando de um

----
### O que precisa funcionar
```
Apenas do python aqui eu utilizei o 3.6 visto no Dockerfile.
É necessario constuir uma imagem docker apartir do Dockerfile.
Depois rodar um container apartir desse imagem.

O que esse Dockerfile faz: 
    cria uma imagem como base no python3.6
    copia o codigo main.py para /home/app/ 
    por padrão roda o codigo main.py

Cada vezes que eu mudar o código e quizer rodar para ver a mudanca preciso 
criar uma nova imagem e rodar um container: Sim

Porém o docker não vai fazer tudo do zero tem um esquema de cache envolvido.
É indicado por o que muda com frequencia em baixo do Dockefile.
```

### Tarefa 1
```sh
docker build -t mypy-hello:1 .
docker run mypy-hello:1
```

O Makefile faz isso direto. O código python é super simples apenas um print. Build e Run: make
