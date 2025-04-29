# Use Red Hat UBI 9 minimal image
FROM registry.access.redhat.com/ubi9/ubi-minimal

# Install httpd (Apache Web Server) and clean cache
RUN microdnf install httpd -y && \
    microdnf clean all

# Copy your custom index.html (optional)
# Assuming you have an index.html ready to be copied
COPY index.html /var/www/html/index.html

# Expose HTTP port
EXPOSE 80

# Start httpd server in foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

