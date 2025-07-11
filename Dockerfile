FROM quay.io/pangeo/pangeo-notebook:2025.06.02

USER root

# Install system dependencies (OpenJPEG needed for JPEG2000 support)
RUN apt-get update && \
    apt-get install -y --no-install-recommends libopenjp2-7 libopenjp2-tools && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER jovyan

# Install GDAL with JPEG2000 support using conda
RUN mamba install -y -c conda-forge gdal openjpeg && \
    mamba clean -afy
