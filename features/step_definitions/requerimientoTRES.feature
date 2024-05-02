Feature: Crear un captcha para evitar bots" con las siguientes reglas
	Requerimiento para crear un captcha y poder combatir los bots y cuentas falsas

	Example: En el que un usuario intenta registrarse en la plataforma y se le presenta un CAPTCHA para verificar que es un humano y no un bot
		Given el usuario está creando su cuenta
		When el usuario va a completar el registro le pide hacer un captcha para verificar que sea humano
		Then el sistema le mostrará un mensaje de aprobacion de que es un humano
    
    Example: En el que un usuario intenta iniciar sesión en su cuenta y se enfrenta a un CAPTCHA para garantizar la seguridad de su cuenta contra intentos de acceso automatizados
        Given el usuario tiene una cuenta registrada
        When el usuario intenta iniciar sesión en su cuenta
        Then se le presenta un CAPTCHA para verificar que es un humano y no un bot
    

    Example: En el que un usuario completa con éxito el CAPTCHA al seleccionar las imágenes que contienen semáforos antes de poder enviar un formulario de contacto
        Given el usuario está en la página de contacto
        When el usuario intenta enviar el formulario de contacto
        Then se le presenta un CAPTCHA con imágenes de semáforos
        And el usuario selecciona correctamente las imágenes que contienen semáforos
        And el formulario de contacto es enviado exitosamente

    Example: En el que un usuario demuestra su humanidad al resolver un CAPTCHA de texto distorsionado antes de poder publicar un comentario en un artículo
        Given el usuario está leyendo un artículo
        When el usuario intenta publicar un comentario en el artículo
        Then se le presenta un CAPTCHA de texto distorsionado
        And el usuario resuelve correctamente el CAPTCHA
        And el comentario es publicado exitosamente

    Example: En el que el sistema comprueba la respuesta del usuario al CAPTCHA de audio reproduciendo un archivo de audio distorsionado y comparándolo con la respuesta proporcionada
        Given el usuario está en la página de registro
        When el usuario intenta completar el CAPTCHA de audio
        Then se reproduce un archivo de audio distorsionado
        And el usuario proporciona la respuesta correcta al CAPTCHA de audio
        And el sistema verifica la respuesta del usuario

    Example: En el que el sistema analiza la respuesta ingresada por el usuario al CAPTCHA de imágenes y confirma su validez antes de permitir que el usuario acceda a la siguiente página
        Given el usuario está en la página de acceso
        When el usuario intenta acceder a la siguiente página
        Then se le presenta un CAPTCHA con imágenes
        And el usuario ingresa la respuesta al CAPTCHA de imágenes
        And el sistema verifica la respuesta del usuario antes de permitir el acceso a la siguiente página

    Example: En el que un usuario frustrado por no poder resolver el CAPTCHA solicita uno nuevo haciendo clic en el botón de "Actualizar CAPTCHA"
        Given el usuario está intentando completar el CAPTCHA
        When el usuario hace clic en el botón de "Actualizar CAPTCHA"
        Then se genera un nuevo CAPTCHA

    Example: En el que un usuario con dificultades de visión solicita un CAPTCHA alternativo de audio después de intentar sin éxito resolver el CAPTCHA de imágenes
        Given el usuario está intentando resolver el CAPTCHA de imágenes
        When el usuario no logra resolver el CAPTCHA de imágenes
        Then el usuario solicita un CAPTCHA alternativo de audio