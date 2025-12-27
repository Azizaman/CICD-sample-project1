# 1️⃣ Base image (Node.js runtime)
FROM node:18-alpine

# 2️⃣ Set working directory inside container
WORKDIR /app

# 3️⃣ Copy only dependency files first
COPY package*.json ./

# 4️⃣ Install dependencies
RUN npm install
RUN npm install --save-dev jest
# RUN npm test

# 5️⃣ Copy rest of the application code
COPY . .

# 6️⃣ Expose application port
EXPOSE 3000

# 7️⃣ Start the application
CMD ["node", "index.js"]
