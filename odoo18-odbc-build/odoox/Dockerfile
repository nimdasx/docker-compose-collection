# Use the official Odoo 18 image as a base
FROM odoo:18

# Switch to root user to install system dependencies
USER root

# Install prerequisites for Microsoft ODBC Driver and pyodbc
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        gnupg \
        unixodbc-dev \
        python3-pyodbc \
    && rm -rf /var/lib/apt/lists/*

# Add Microsoft's official GPG key using the recommended method
RUN curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor -o /usr/share/keyrings/microsoft-prod.gpg

# Add Microsoft's official repository for ODBC Driver
RUN echo "deb [arch=amd64,arm64,armhf signed-by=/usr/share/keyrings/microsoft-prod.gpg] https://packages.microsoft.com/debian/12/prod bookworm main" > /etc/apt/sources.list.d/mssql-release.list

# Install the Microsoft ODBC Driver for SQL Server
RUN apt-get update \
    && ACCEPT_EULA=Y apt-get install -y msodbcsql18

# Switch back to the odoo user
USER odoo

