FROM dlanguage/ldc

MAINTAINER Sebastiaan Koppe <mail@skoppe.eu>

RUN apt-get update && apt-get install -y curl libevent-dev libssl-dev \
 && rm -rf /var/cache/apt \
 && rm -rf /dlang/${COMPILER}-*/lib32 \
 && rm -rf /dlang/dub-1.0.0/dub.tar.gz

ENTRYPOINT ["/entrypoint.sh"]
CMD ["ldc2"]
