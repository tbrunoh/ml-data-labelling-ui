# Use the official Label Studio image
FROM heartexlabs/label-studio:latest

# Set working directory
WORKDIR /label-studio

# Copy custom configuration file into the container
COPY config.json /label-studio/config.json

# Expose the Label Studio port
EXPOSE 80

ENV DJANGO_DB=postgresql
ENV POSTGRE_NAME=ml_label_studio_dev
ENV POSTGRE_USER=mladmin
ENV POSTGRE_PASSWORD=4VVW1P6sriEK
ENV POSTGRE_PORT=5432
ENV POSTGRE_HOST=mldatalabeluidb.postgres.database.azure.com

ENV STORAGE_TYPE=azure
ENV STORAGE_AZURE_ACCOUNT_NAME=sdrimllabelui
ENV STORAGE_AZURE_ACCOUNT_KEY=1bM9Hod0u6yxyLVEepjk7P4N741nG+YH+/AJDn/XeDVMDNazNCqfbVcAIU1sXQ60bpuIjupef5HA+AStUow2ww==
ENV STORAGE_AZURE_CONTAINER_NAME=labeluiimages
ENV AZURE_LOCATION=centralus
ENV CSRF_TRUSTED_ORIGINS=https://label-studio.siliconmara.com,https://ml-labelui-gacyh6e5e7h4ave0.centralus-01.azurewebsites.net
ENV DJANGO_CSRF_TRUSTED_ORIGINS=https://label-studio.siliconmara.com,https://ml-labelui-gacyh6e5e7h4ave0.centralus-01.azurewebsites.net
ENV DISABLE_CSRF=False
ENV LABEL_STUDIO_HOST=https://label-studio.siliconmara.com
ENV HOST=label-studio.siliconmara.com
ENV LABEL_STUDIO_DISABLE_SIGNUP_WITHOUT_LINK=true
# Start Label Studio
# CMD ["label-studio", "start", "-db", "postgresql", "--port", "80", "--config", "/label-studio/config.json"]
CMD ["label-studio", "start", "-db", "postgresql", "--host", "https://label-studio.siliconmara.com", "--port", "80"]
