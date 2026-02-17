FROM node:20-alpine

WORKDIR /app

# Copy dependency manifest first to leverage Docker layer caching
COPY package.json ./
RUN npm install

# Copy the rest of the project files
COPY . .

# this runss the test as the container start[ As per the instruction]
CMD ["npm", "test"]
