FROM quay.io/pangeo/pangeo-notebook:2025.06.02

USER root

# Update package lists and install libgdal-jp2openjpeg
RUN apt-get update && \
    apt-get install -y --no-install-recommends libgdal-jp2openjpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER jovyan
