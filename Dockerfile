FROM haskell:8.6.2

# install latex packages
RUN apt-get update -y \
  && apt-get install -y -o Acquire::Retries=10 --no-install-recommends \
    texlive-xetex \
    pandoc \
    make \
    ruby-dev

# install jekyll
RUN gem install bundle --no-ri --no-rdoc
