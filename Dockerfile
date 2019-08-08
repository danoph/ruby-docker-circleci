FROM circleci/ruby:2.6.3

ENV GEM_HOME /home/circleci/.bundle
ENV BUNDLE_PATH="$GEM_HOME"
ENV BUNDLE_APP_CONFIG="$GEM_HOME"
ENV PATH $GEM_HOME/bin:$BUNDLE_PATH/gems/bin:$PATH
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"

RUN gem install bundler

RUN bundle -v

CMD [ "irb" ]
