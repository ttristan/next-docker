ENV_FILE=".env.dev"

if test -f ".env.dev.local"; then
  ENV_FILE=".env.dev.local"
else
  cp ".env.dev" ".env.dev.local"
fi

# load .env = https://gist.github.com/mihow/9c7f559807069a03e302605691f85572
export $(cat .env.dev.local | grep -v '#' | sed 's/\r$//' | awk '/=/ {print $1}' )
