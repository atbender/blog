# Hugo Blog with PaperMod Theme

A containerized Hugo blog using the PaperMod theme with full Docker workflow.

## Features

- Hugo static site generator with PaperMod theme
- Docker-based development and production environments
- Live reload during development
- Multi-stage Docker build for production
- Nginx serving for production
- Git submodule for theme management

## Prerequisites

- Docker
- Docker Compose
- Git

## Setup

1. Clone the repository:
   ```bash
   git clone <your-repo-url>
   cd <repo-name>
   ```

2. Add the PaperMod theme as a submodule:
   ```bash
   git submodule add https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
   ```

3. Start the development server:
   ```bash
   docker-compose up
   ```

The site will be available at http://localhost:1313

## Development

- The development server runs on port 1313
- Live reload is enabled
- Content changes are reflected immediately
- Theme changes require a server restart

## Production Build

To build the production image:

```bash
docker build -t my-hugo-blog .
```

To run the production container:

```bash
docker run -p 80:80 my-hugo-blog
```

## Project Structure

```
.
├── content/           # Blog content
├── themes/           # Hugo themes
│   └── PaperMod/     # PaperMod theme (git submodule)
├── Dockerfile        # Multi-stage build configuration
├── docker-compose.yml # Development environment
├── hugo.yaml         # Hugo configuration
└── README.md         # This file
```

## Customization

1. Edit `hugo.yaml` to configure:
   - Site metadata
   - Menu structure
   - Theme parameters
   - Social links
   - Analytics
   - Comments

2. Add content in the `content/` directory:
   - Blog posts in `content/posts/`
   - Pages in `content/`
   - Static files in `static/`

## License

[Your chosen license]