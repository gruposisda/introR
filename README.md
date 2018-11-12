
![logo](images/logo_sisda.png)
# Curso introdutório de R para alunos da Feagri

Monique Oliveira

Matheus Ferraciolli

O curso foi pensado para um primeiro contato com R. O objetivo é abrir portas para que as usarem a ferramenta como precisarem. Serão vistos conceitos básicos desde a interface do software RStudio e como usar a ajuda do R, até a manipulação de dados e a confecção de gráficos.

### R para Windows: [Link R](https://cran.r-project.org/bin/windows/base/R-3.5.1-win.exe)

### Rstudio para Windows: [Link RStudio](https://download1.rstudio.org/RStudio-1.1.456.exe)

**Se alguém quiser instalar no Linux e não conseguir, me mande um email: matheus.ferraciolli@gmail.com**

## Instalação e execução do `swirl`

Para instalar o pacote `swirl`, basta executar o comando abaixo. Este comando instala o pacote na sua máquina. As aspas são obrigatórias. Uma vez instalado, não precisa executar de novo.

```{r}
install.packages('swirl')
```

Para carregar o pacote, use `library(swirl)` ou `library('swirl')`. Este comando ativa o pacote na sessão aberta do R e deve ser executado sempre que se reinicia o programa. As aspas são opcionais.

Para começar o tutorial, após executar o comando acima, digite:

```{r}
swirl()
```

Em seguida, siga o tutorial que vai começar na tela. Coloque um nome que lembre para continuar de onde parou e manter o progresso de cada sessão. Recomendamos fazer as sessões de **1 a 4** para a aula do dia 30.

## Aula 05

### Referência
https://r4ds.had.co.nz/transform.html
### Documentação do pacote
https://cran.r-project.org/web/packages/nycflights13/nycflights13.pdf

## Aula 06

Dados: https://www.dropbox.com/s/dj30dopdqreqdfh/athlete_events.csv?dl=0


## Tópicos:

1. Introdução, help, variáveis e tipos

2. Subset (lógico e numérico), condicionais e loops

3. Arquivo (read, write, save, load), bibliotecas, funções, apply, e gráficos

4. Manipulação de dados (revisão), reshape, aggregate

5. Tidyverse, ggplot2

6. Tidyverse, ggplot2
