Feature: El rating ira de 0 a 10, usando un punto decimal para mayor precisión e info.
    Requerimiento donde el rating ira de uno a diez para mayor precisión en los rating

    Example: En el que un estudiante accede a la página de calificación de un profesor y utiliza un deslizador para seleccionar una calificación de 8.5 antes de enviarla
            Given el usuario quiere poner una calificacion en especifico
            When El usuario va a poner una calificacion de ocho punto cinco
            Then el sistema deja poner la calificaion que quiere el usuario

    Example: En el que un estudiante ingresa manualmente una calificación de 6.2 en el campo de entrada de texto para evaluar a un profesor específico
        Given el usuario quiere ingresar manualmente una calificación
        When el usuario ingresa la calificación de 6.2 en el campo de entrada de texto
        Then el sistema registra la calificación ingresada por el usuario para evaluar al profesor específico

    Example: En el que el sistema muestra un mensaje de error cuando un estudiante intenta enviar una calificación de 11.3, indicando que está fuera del rango permitido
        Given el usuario quiere poner una calificación en especifico
        When el usuario intenta poner una calificación de once punto tres
        Then el sistema muestra un mensaje de error indicando que la calificación está fuera del rango permitido

    Example: En el que el sistema rechaza una calificación de "excelente" y solicita al estudiante que ingrese un valor numérico válido dentro del rango de 0 a 10 con un decimal
        Given el usuario quiere ingresar una calificación
        When el usuario intenta ingresar la calificación "excelente"
        Then el sistema muestra un mensaje de error solicitando al estudiante que ingrese un valor numérico válido dentro del rango de 0 a 10 con un decimal

    Example: En el que el sistema actualiza automáticamente el promedio de calificaciones de un profesor después de que un estudiante envía una calificación válida de 9.1
        Given el usuario quiere evaluar a un profesor
        When el usuario envía una calificación válida de 9.1
        Then el sistema actualiza automáticamente el promedio de calificaciones del profesor

    Example: En el que el sistema registra la calificación de un estudiante de 7.8 para un profesor y la muestra en el perfil del profesor para futuras referencias
        Given el usuario quiere registrar una calificación para un profesor
        When el usuario ingresa una calificación de 7.8 para el profesor
        Then el sistema registra la calificación del estudiante para el profesor y la muestra en el perfil del profesor para futuras referencias

    Example: En el que después de enviar una calificación de 8.4, el sistema muestra un mensaje emergente confirmando que la calificación ha sido registrada con éxito
        Given el usuario quiere evaluar a un profesor
        When el usuario envía una calificación de 8.4
        Then el sistema muestra un mensaje emergente confirmando que la calificación ha sido registrada con éxito

    Example: En el que un estudiante recibe una notificación en la interfaz de usuario confirmando que su calificación de 6.9 ha sido correctamente almacenada en el sistema y se refleja en el promedio del profesor
        Given el usuario quiere evaluar a un profesor
        When el usuario envía una calificación de 6.9
        Then el sistema muestra una notificación confirmando que la calificación ha sido almacenada correctamente en el sistema y se refleja en el promedio del profesor
    


