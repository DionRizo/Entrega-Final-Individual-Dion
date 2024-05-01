Feature: Permitir a los alumnos seguir las cuentas de otros alumnos en la plataforma
    Requerimiento donde se creé la funcion para poder seguir otras cuentas de otros alumnos

    Example: En el que un estudiante utiliza la función de búsqueda para encontrar el perfil de un compañero de clase y ver su historial académico
        Given que el usuario quiere seguir a otra cuenta 
        When el usuario escribe el nombre de usuario de la cuenta que quiere seguir
        Then el sistema le mostrará la cuenta que buscaba

    Example: En el que un estudiante navega por la sección de perfiles para descubrir nuevos compañeros de estudio y revisar sus intereses
        Given el usuario quiere ver a quien quiere seguir de su carrera
        When el usuario busca nuevos perfiles
        Then el sistema le lanza recomendaciones de perfiles que le pueden interesar
    
    Example: En el que un estudiante encuentra el perfil de un amigo y hace clic en el botón "Seguir" para recibir sus actualizaciones
        Given el usuario ha encontrado el perfil de un amigo
        When el usuario hace clic en el botón "Seguir"
        Then el sistema registra al usuario como seguidor de la cuenta

    Example: En el que un estudiante decide seguir a un compañero de proyecto después de revisar su perfil y hacer clic en el botón correspondiente
        Given el usuario decide seguir a un compañero de proyecto
        When el usuario revisa su perfil y hace clic en el botón correspondiente
        Then el sistema registra al usuario como seguidor de la cuenta del compañero de proyecto

    Example: En el que un estudiante ve las publicaciones recientes de los compañeros a los que sigue en su feed de noticias personalizado
        Given el usuario ha iniciado sesión en la plataforma
        When el usuario accede a su feed de noticias
        Then el sistema muestra las publicaciones recientes de los compañeros a los que sigue
    
    Example: En el que el sistema notifica a un estudiante sobre las nuevas actualizaciones de los perfiles que sigue en la plataforma
        Given el usuario ha iniciado sesión en la plataforma
        When el sistema detecta nuevas actualizaciones en los perfiles seguidos por el usuario
        Then el sistema envía una notificación al usuario con las nuevas actualizaciones

    Example: En el que un estudiante accede a la configuración de seguimiento y opta por dejar de seguir a un compañero de clase
        Given el usuario ha accedido a la configuración de seguimiento
        When el usuario selecciona la opción de dejar de seguir a un compañero de clase
        Then el sistema elimina al usuario como seguidor de la cuenta del compañero de clase

    Example: En el que un estudiante cancela una solicitud de seguimiento enviada previamente a un compañero de proyecto
        Given el usuario ha enviado una solicitud de seguimiento a un compañero de proyecto
        When el usuario decide cancelar la solicitud de seguimiento
        Then el sistema elimina la solicitud de seguimiento y notifica al usuario y al compañero de proyecto

    Example: En el que un estudiante con perfil privado recibe una notificación sobre una solicitud de seguimiento y decide aprobarla
        Given el usuario tiene un perfil privado
        When el sistema detecta una solicitud de seguimiento de otro estudiante
        Then el sistema envía una notificación al usuario con la solicitud de seguimiento
        And el usuario decide aprobar la solicitud de seguimiento
        And el sistema registra al usuario como seguidor de la cuenta del estudiante solicitante

    Example: En el que un estudiante envía una solicitud de seguimiento a un compañero con perfil privado y debe esperar su aprobación antes de poder seguirlo
        Given el usuario quiere seguir a un compañero con perfil privado
        When el usuario envía una solicitud de seguimiento al compañero
        Then el sistema registra la solicitud de seguimiento y notifica al compañero
        And el compañero debe aprobar la solicitud antes de que el usuario pueda seguirlo