FROM icinga/icingaweb2:latest

# Add grafana module for icingaweb2
WORKDIR /usr/share/icingaweb2/modules
COPY grafana /usr/share/icingaweb2/modules/grafana/