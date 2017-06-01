cd ~/workspace
rails new cadastro
cd ~/workspace/cadastro
rails generate controller clientes edit new index show _criancas_fiels _form
rails generate controller criancas 
rails generate model clientes nome:string endereco:text
rails generate model criancas nome:string nasc:text cliente_id:integer
rake db:migrate

