class LoginPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element :input_email, '#email'
    element :input_senha, '#passwd'
    element :btn_sign_in, '#SubmitLogin'

    def fazer_login(email, senha)
        input_email.set email
        input_senha.set senha
        btn_sign_in.click
    end

end