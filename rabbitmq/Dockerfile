FROM rabbitmq:3-management

# Enable the RabbitMQ management plugin
RUN rabbitmq-plugins enable rabbitmq_management

# Copy the configuration file that sets up the vhost and permissions
COPY ./rabbitmq/rabbitmq.config /etc/rabbitmq/rabbitmq.config
