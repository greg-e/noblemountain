/**
 * PM2 Ecosystem Config
 *
 * Usage:
 *   pm2 start ecosystem.config.js          # start all apps
 *   pm2 stop all                           # stop all
 *   pm2 restart all                        # restart all
 *   pm2 logs                               # tail all logs
 *   pm2 save                               # persist app list across reboots
 *   pm2 startup                            # generate OS boot hook (run the printed command as admin)
 *
 * Prerequisites:
 *   - Build backend:  cd realtimelandscape-web && npm run build
 *   - Build frontend: cd realtimelandscape-web-ui && npm run build
 *   - MongoDB service must be running (runs as a Windows service after install)
 *
 * The Express backend serves the compiled frontend static assets from
 * realtimelandscape-web-ui/dist via express.static + SPA fallback.
 * Both UI and API are served on the same port (default: 3001).
 */
module.exports = {
  apps: [
    {
      name: 'rtl-api',
      script: 'dist/server.js',
      cwd: './realtimelandscape-web',
      env_file: './realtimelandscape-web/.env',
      watch: false,
      autorestart: true,
      max_restarts: 10,
      restart_delay: 3000,
      log_date_format: 'YYYY-MM-DD HH:mm:ss',
      error_file: './logs/api-error.log',
      out_file: './logs/api-out.log',
    },
  ],
};
