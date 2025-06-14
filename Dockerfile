# Build stage
FROM klakegg/hugo:latest-ext AS builder

# Install Git
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

WORKDIR /src
COPY . .

# Build the site
RUN hugo --minify

# Production stage
FROM nginx:alpine

# Copy the built site from builder
COPY --from=builder /src/public /usr/share/nginx/html

# Copy custom nginx config if needed
# COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"] 