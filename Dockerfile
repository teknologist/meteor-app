FROM grigio/meteor:1.0
MAINTAINER Eric Taieb Walch <teknologist@gmail.com>

ENV METEOR_RELEASE 1.0.3.1

# Add the source of your Meteor app and build
ADD ./app /app 
RUN /meteor-build.sh

# Run the generated files
CMD /meteor-run.sh
