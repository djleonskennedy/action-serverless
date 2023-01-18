FROM node:16-slim

LABEL version="0.0.1"
LABEL repository="https://github.com/djleonskennedy/action-serverless"
LABEL homepage="https://github.com/djleonskennedy/action-serverless"
LABEL maintainer="yuri <yuriy.yakovenko@live.com>"
LABEL "com.github.actions.name"="GitHub Action for Serverless"
LABEL "com.github.actions.description"="Serverless CLI via Docker"

# Install serverless globally
RUN yarn global add serverless

ADD "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]