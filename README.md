# dianeandroyce.com

[![Site Deployment Status](https://api.netlify.com/api/v1/badges/01a6b806-21f6-44f1-b342-82d1ec6f5dd4/deploy-status)](https://app.netlify.com/sites/compassionate-ride-b5f43e/deploys)

A static website for [www.dianeandroyce.com].

## Building

The site is automatically built via [netlify.toml] on commit. To develop locally:
1. [Install hugo]
2. Run the following:
```sh
git submodule update --init
cd site
hugo --gc --minify --destination generated
```

You can then preview local changes with:
```sh
hugo server
```

[www.dianeandroyce.com]:https://www.dianeandroyce.com
[Install hugo]:https://gohugo.io/getting-started/installing/
[netlify.toml]:netlify.toml
