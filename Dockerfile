# Utilizamos una imagen de WordPress como base
FROM wordpress:latest

# Mantenemos el usuario y el grupo de WordPress para evitar problemas de permisos
RUN usermod -u 1000 www-data && groupmod -g 1000 www-data

# Copiamos tu archivo personalizado de configuración (si lo tienes)
# COPY custom-config.php /var/www/html/wp-content/custom-config.php

# También puedes agregar cualquier otro ajuste o configuración personalizada aquí

# Exponemos el puerto 80 (puerto web de WordPress)
EXPOSE 80

# Comando de inicio, que inicia el servidor web de WordPress
CMD ["apache2-foreground"]
