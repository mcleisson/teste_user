# README

- Este projeto foi feito nas versões:
  Ruby - 3.0.3p157
  Rails - 6.1.4.4

- Procedimento para rodar o projeto
  - Faça o download do projeto para seu computador local;
  - Acesse a pasta do projeto, e rode o comando bundle install para instalar as gems necessárias;
  - Altere o usuário e senha do banco de dados no arquivo database.yml que está na pasta config;
    Obs.: O banco de dados está configurado com o MySQL, desta forma é necessário já estar instalado e configurado na máquina local.
  - rode o comando: rake db:create db:migrate db:seed
    este comando irá criar o banco de dados, em seguida criar as tabelas no banco e alimentar a tabela Users com os usuários. Para altarer a quantidade de usuários inseridos, abra o arquivo seeds.rb que está na pasta db, e
  - Após isso, rode o comando rails s para subir o projeto;
  - Acesse o end. no seu navegador http://localhost:3000/users e irá aparecer a lista de usuários com paginação. A paginação está usando a gem kaminari.
