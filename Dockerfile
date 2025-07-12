FROM quay.io/pangeo/pangeo-notebook:2025.06.02

USER jovyan

# Install GDAL with JPEG2000 support using mamba to enviroment 'notebook'
RUN mamba install -y -n notebook -c conda-forge libgdal-jp2openjpeg=3.10.3 && \
    mamba clean -afy
