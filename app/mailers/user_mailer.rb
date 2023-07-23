class UserMailer < ApplicationMailer

    default from: 'cozyhoshii@gmail.com'

    def welcome_email(user)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @user = user 
  
      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url  = 'https://fluffyshop.herokuapp.com' 
  
      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @user.email, subject: 'Bienvenue chez nous !')
    end

    def order_email(order)
      @order = order
      @user = @order.user
      @url  = 'https://fluffyshop.herokuapp.com' 
      mail(to: @order.user.email, subject: 'FluffyShop: Récapitulatif de votre commande') 
    end

   # def admin_order_email(order)
   #  @order = order
   #   if @user.is_admin? == true
  #  mail(to: "chaton@yopmail.com", subject: 'Une commande vient d\'passée !')
  # end
   #  end
end
