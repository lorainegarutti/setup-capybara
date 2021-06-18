Dado('que estou na tela de login') do                                        
     @login = LoginPage.new
     @login.load
end                                                                          
                                                                               
Quando('colocar credenciais {string}') do |credencias|                           
    @login = LoginPage.new

    case credencias
        when 'validas'
            @login.fazer_login 'ailana_001@teste.com', '123456789'
        when 'invalidas'
            @login.fazer_login 'ailana_001@teste.com', '99999999'
    end
    sleep(3)
end                                                                          
                                                                               
Então('vejo as informações da minha conta') do                               
    expect(page).to have_content('Welcome to your account. Here you can manage all of your personal information and orders.') 
end                                                                          
                                                                               
Então('vejo uma mensagem de erro') do                                        
    expect(page).to have_content('Authentication failed.')
end  
