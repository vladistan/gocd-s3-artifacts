FROM williamyeh/sbt

RUN chmod go+rwx /usr/local/bin/sbt-launch.jar

RUN useradd --no-log-init --home-dir /app --uid 200 user < /dev/null
RUN useradd --no-log-init --home-dir /app --uid 498 go < /dev/null
RUN useradd --no-log-init --home-dir /app --uid 502 go2 < /dev/null
RUN useradd --no-log-init --home-dir /app --uid 1001 go3 < /dev/null
RUN useradd --no-log-init --home-dir /app --uid 1000 ec2-user < /dev/null
RUN useradd --no-log-init --home-dir /app --uid 500345588 me-user < /dev/null

