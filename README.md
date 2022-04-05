### Usage
0. optional: copy `.env.dev` as `.env.dev.local` and specify your development domain as `SERVER_NAME`

1. `npm install`
2. `npm run start`

### Docker Helper
- stop container: `npm run docker:stop`
- (re)build container: `npm run docker:build`
- run container shell `npm run docker:shell:nextjs` or `npm run docker:shell:nginx`
- output container logs `npm run docker:log:nextjs` or `npm run docker:log:nginx`

### Info
- only OSX supported
- M1 support to be tested