FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
# Install Playwright browsers and dependencies
RUN npx playwright install chromium --with-deps
COPY . .
CMD ["node", "src/checker.js"]
