# Forces Docker to build using your native host architecture speed profile
docker buildx build --platform linux/arm64 -t m4-dev-app:latest .

# Run the application container wrapper smoothly
docker run --rm m4-dev-app:latest

eval 'set +o history' 2>/dev/null || setopt HIST_IGNORE_SPACE 2>/dev/null
 touch ~/.gitcookies
 chmod 0600 ~/.gitcookies

 git config --global http.cookiefile ~/.gitcookies

 tr , \\t <<\__END__ >>~/.gitcookies
kernel.googlesource.com,FALSE,/,TRUE,2147483647,o,git-kubulee.KL.gmail.com=1//
__END__
eval 'set -o history' 2>/dev/null || unsetopt HIST_IGNORE_SPACE 2>/dev/null
# Generates the modern autoconf macro engine macros
autoreconf --install

# Executes your processed script to generate a native Makefile
./configure
