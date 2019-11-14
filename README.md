## Especificações:
1) Serviço para Registro de Assinaturas: Na Pitzi, temos diversos planos de assinaturas de
proteção para celulares. Você deverá desenvolver uma funcionalidade simplificada para o
registro de assinaturas. Para isso, você deverá criar um serviço(endpoint JSON) que receba
os dados do cliente, da assinatura e os persista no banco de dados. Os dados do cliente
serão: nome, CPF e e-mail. Os dados da assinatura serão: modelo do aparelho do cliente,
IMEI do aparelho, preço anual e número de parcelas do pagamento.
2) Interface para cadastro de Assinaturas: Eventualmente, precisamos registrar algumas
assinaturas para nossos clientes usando nosso painel administrativo que é interno. Para isso,
você precisará criar apenas uma tela(não requer autenticação) com um formulário para
coletar todos os dados necessários. E ao invés de gravar os dados no banco de dados, você
deverá fazer um POST para o serviço desenvolvido anteriormente.


## Detalhes/Validações:
1) Use a linguagem Ruby on Rails com Banco de Dados Postgresql ou SQLite.
2) Você precisará ter no mínimo os seguintes objetos de domínio: Order(assinaturas) e
User(cliente)
3) O serviço desenvolvido deverá ter no mínimo as seguintes validações: não aceitar mais de 1
User com o mesmo CPF; validar a presença para os seguintes dados: valor anual da
assinatura, IMEI, modelo do aparelho e CPF. Caso os dados não sejam válidos, a assinatura
não deverá ser criada e você deverá tratar esse fluxo quando for consumir o serviço(postar a
assinatura) e consequentemente quando tentar salvar a assinatura pelo formulário.
4) O código que você escrever para consumir o serviço de registro de assinaturas deverá ser
desacoplado o suficiente para que no futuro seja possível utilizá-lo em outra parte da
aplicação, ex: poderíamos precisar reutilizar esse código para registrar uma assinatura de
dentro de uma rake task ou um worker(job)



## How to run
See it in production here or:

* Clone repo locally
```
 git clone https://github.com/DivinoSilva/pitzi.git
```

* Navigate to the local repo folder (You might be there already if you're reading this)

* In the command line, run bundle to install any gems you might be missing
```
 bundle
```

* Create database and run migrate
```
 bundle exec rake db:{create,migrate,seed}
```

* Run rails s
```
 bundle exec rails s -p 3000
```
* Open up a browser to localhost:3000
