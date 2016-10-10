role :app, %w{deploy@46.101.127.188}
role :web, %w{deploy@46.101.127.188}

server '46.101.127.188', user: 'deploy', roles: %w{web app}
