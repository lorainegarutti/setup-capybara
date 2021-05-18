


## Como configurar os programas para começar a escrever os testes?

### 1. Fazer download do seu editor de código preferido. Para utilizar Ruby + Cucumber, preferimos o VSCode ❤️

  - Entrar no [site do VSCode](https://code.visualstudio.com/) e baixar a versão que corresponde ao seu sistema operacional (Windows, Mac ou Linux);

  - Após o download, abrir o arquivo executável e escolher a pasta onde ele ficará.

  - Na etapa seguinte, uma sugestão boa é marcar as configurações adicionais de acordo com a imagem abaixo:

  ![vscode_configs_install](https://user-images.githubusercontent.com/60954622/118541634-4e969b80-b728-11eb-9f2f-54c1a2108123.jpg)

  - É só finalizar a instalação e estaremos prontos para seguir!


### 2. Obter a distribuição do Ruby na versão mais estável. Para a instalação, siga os passos de acordo com seu sistema operacional 💾 

  * <b> Windows </b>: 

    - [Clicar neste link](https://rubyinstaller.org/downloads/) para baixar a versão mais estável do Ruby com devkit (atualmente é a 2.7.3), escolhendo 64 bits (versão x64) ou 32 bits (versão x86) de acordo com seu sistema operacional;

    - Abrir o arquivo executável, aceitar os termos, instalar de acordo com as configurações da imagem abaixo:

    ![rubyinstaller_configs_install](https://user-images.githubusercontent.com/60954622/118544545-ea75d680-b72b-11eb-9703-d0935d8732b4.jpg)

    - Após concluir a instalação, será aberta uma janela do prompt de comando pedindo para que você digite um número. Digite 1 (para instalar a MSYS2) e clique em "Enter";

    - O próximo passo é verificar se a instalação foi concluída. Para isso, abra o prompt de comando. Se não souber onde fica, abra o menu inicial do Windows e digite as palavras "prompt de comando". O Windows vai te sugerir e poderá abrir. Com ele aberto, digite a palavra a seguir e clique em "Enter":

    ```
    ruby -v
    ```

    - Se o Ruby tiver sido instalado corretamente, o resultado esperado será algo parecido com a mensagem abaixo:

    ```
    ruby 2.7.3p183 (2021-04-05 revision 6847ee089d) [x64-mingw32]
    ```

  * <b> MacOS e Linux </b>: 

    - É aconselhável baixar a versão estável do Ruby através de um sistema de gerenciamento de pacotes, utilizaremos o RVM. [Clique aqui](http://rvm.io/rvm/install) para ver o passo a passo na documentação oficial. 

    - Vamos instalar o Homebrew, que é um gerenciador de pacotes para esses sistemas operacionais. [A documentação oficial em português está aqui](https://brew.sh/index_pt-br). Abra o terminal e digite o comando abaixo e clique em "Enter" para instalar o Homebrew:

    ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

    - Agora precisamos instalar o gpupg2, um software de criptografia, utilizado para instalar o RVM. No terminal, digite o comando abaixo e clique em "Enter":

    ```
    brew install gnupg
    ```

    - Ainda no terminal, digite o comando abaixo e clique em "Enter" para instalar as chaves de verificação:

    ```
    gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    ```
    
    - Digite o comando abaixo no terminal e clique em "Enter" para baixar o RVM já com a versão estável do Ruby:

    ```
    \curl -sSL https://get.rvm.io | bash -s stable --ruby
    ```

    - O próximo passo é verificar se a instalação do RVM + Ruby foi concluída. Para isso, no terminal, digite o comando abaixo no terminal e clique em "Enter":

    ```
    rvm list
    ```
    
    - Se RVM + Ruby tiverem sido instalados corretamente, o resultado esperado será algo parecido com a mensagem abaixo:

    ```
    =* ruby 2.7.3 [ x86_64 ]
    ```

    - Para fixar a versão do Ruby que acabou de ser instalada, digite o comando abaixo no terminal e clique em "Enter":

    ```
    rvm use default 2.7
    ```

### 3. Instalar a gem do bundler para instalar todas as gems necessárias do projeto (para todos os sistemas operacionais) 💎

  - No terminal (MacOS e Linux) ou no prompt de comando (Windows), digite o comando abaixo e clique em "Enter":

  ```
  gem install bundler
  ```

  - A resposta deve ser parecida com a seguinte:

  ```
  Successfully installed bundler-2.2.17
  Parsing documentation for bundler-2.2.17
  Installing ri documentation for bundler-2.2.17
  Done installing documentation for bundler after 2 seconds
  1 gem installed
  ```

### 4. Fazer o download do chromedriver e como configurá-lo para conseguirmos manipular o Chrome através do Selenium 🚢
<br/>

  - Ver qual versão do Chrome está instalada no seu computador. Para isso, dentro do navegador aberto, clique nos três pontinhos no canto superior direito e escolha "Configurações". Para ir direto, é só digitar o seguinte endereço no navegador:
  
  - A partir das configurações, clicar no canto inferior esquerdo "Sobre o Chrome". Para ir direto, é só digitar o seguinte endereço no navegador:
    
  ```
  chrome://settings/help
  ```

  ![versao_chrome_navegador](https://user-images.githubusercontent.com/60954622/118559816-e901d980-b73e-11eb-9c87-f113d712b614.jpg)

  - Na imagem acima podemos ver que a versão instalada é a 90.0.4430.212;

  - Então precisamos [entrar na página do Chromedriver](https://chromedriver.chromium.org/downloads) e fazer o download da mesma versão que o Chrome já instalado no computador.

  - Depois de clicar em cima da versão que precisamos, podemos escolher o sistema operacional que estamos trabalhando para baixar: 

  ![versao_chromedriver_so](https://user-images.githubusercontent.com/60954622/118561257-22d3df80-b741-11eb-9698-efa91861b053.jpg)

  - Abrir a pasta que acabamos de baixar e:

    * No <b>Windows </b>: fazer a extração do arquivo executável dentro da pasta <b>C:\Windows</b>, porque ela já está exposta no PATH do Windows. 
    Para verificar se está visível corretamente, abra o prompt de comando e digite:

    ```
    where chromedriver
    ```

    A resposta deveria vir algo parecido com:

    ```
    C:\Windows\chromedriver.exe
    ```

    * No <b>MacOS ou Linux </b>: fazer a extração do arquivo executável dentro da pasta <b>/usr/local/bin/</b>, porque ela já está exposta no PATH do sistema operacional. Para verificar se está visível corretamente, abra o terminal e digite:

    ```
    where chromedriver
    ```

    A resposta deveria vir algo parecido com:

    ```
    /usr/local/bin/chromedriver
    ```
  
### 5. Vamos começar o setup do projeto! 🎬

