# GCC image
FROM gcc:latest

# Set the working directory
WORKDIR /app

# Install make
RUN apt-get update && apt-get install -y make

# Copy all the files
COPY . .

RUN make

CMD ["make", "run"]