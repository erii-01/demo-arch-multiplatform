FROM alpine:latest

# Script que muestra la arquitectura
RUN echo '#!/bin/sh' > /show-arch.sh && \
    echo 'echo "La arquitectura donde corre este contenedor es $(uname -m)"' >> /show-arch.sh && \
    chmod +x /show-arch.sh

# Ejecutar el script por defecto
CMD ["/show-arch.sh"]
