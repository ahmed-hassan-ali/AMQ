# Use an appropriate base image
FROM openjdk:8-jdk-slim

# Set environment variables
ENV ACTIVEMQ_HOME /opt/amq
ENV PATH $ACTIVEMQ_HOME/bin:$PATH

# Create a user and group for running ActiveMQ
RUN groupadd -r activemq && useradd -r -g activemq activemq

# Copy the ActiveMQ distribution ZIP to the container
COPY amq-broker-7.09.1-bin.zip /opt/

# Install unzip tool
RUN apt-get update && \
    apt-get install -y unzip && \
    rm -rf /var/lib/apt/lists/*

# Unzip and install ActiveMQ
RUN unzip /opt/amq-broker-7.09.1-bin.zip -d /opt && \
    mv /opt/amq-broker-7.09.1 $ACTIVEMQ_HOME && \
    rm /opt/amq-broker-7.09.1-bin.zip && \
    chown -R activemq:activemq $ACTIVEMQ_HOME

# Switch to the activemq user
USER activemq

# Expose the necessary ports
EXPOSE 8161 5672 61613 61616 1883 61614 61617

# Set the entrypoint
ENTRYPOINT ["amq-broker", "run"]
