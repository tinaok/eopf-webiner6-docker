FROM quay.io/pangeo/pangeo-notebook:2025.06.02

USER jovyan

# Install GDAL with JPEG2000 support using mamba to enviroment 'notebook'
RUN mamba install -y -n notebook -c conda-forge xarray-eopf && \
    mamba update -y -n notebook -c conda-forge  ipykernel=6.29.5 jupyter_client=8.6.0 jupyter_core=5.7.2 jupyter_server=2.14.1 notebook=7.3.2 && \
#libgdal-jp2openjpeg=3.10.3 xarray-eopf && \
    mamba clean -afy
