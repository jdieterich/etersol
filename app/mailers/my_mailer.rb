class MyMailer < ActionMailer::Base
	def cotizacion(name,email,message)
		@name=name
		@email=email
		@message=message
		mail(to: 'jaimedietericho.cr2@gmail.com',
			from: 'jaimedietericho.cr2@gmail.com',
			subject:'Cotizacion'
			)
	end
	def email_bienvenida(user)
		
		mail(to: @user.email,
			from: 'jaimedietericho.cr2@gmail.com',
			subject:'Bienvenido a Etersol'
		)	
	end

end