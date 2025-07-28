FROM quay.io/pangeo/pangeo-notebook:2025.06.02

USER jovyan

# Install GDAL with JPEG2000 support using mamba to enviroment 'notebook'
#RUN mamba install -y -n notebook -c conda-forge xarray-eopf && \
#    mamba update -y -n notebook -c conda-forge  ipykernel=6.29.5 jupyter_client=8.6.0 jupyter_core=5.7.2 jupyter_server=2.14.1 notebook=7.3.2 && \
#libgdal-jp2openjpeg=3.10.3 xarray-eopf && \
#    mamba clean -afy

# Copy your requirements.txt

# Set SHELL to allow conda activation
SHELL ["bash", "-c"]

# Create and activate the new environment with mamba, then install with pip
RUN mamba create -y -n eopf python=3.11.4 && \
    echo "conda activate eopf" >> ~/.bashrc && \
    mamba run -n eopf pip install --no-cache-dir \
        aiohttp==3.11.16 \
        backports.tarfile==1.2.0 \
        bokeh==3.7.2 \
        bottleneck==1.4.2 \
        brotli==1.1.0 \
        cartopy==0.24.1 \
        cffi==1.17.1 \
        conflator==0.1.7 \
        crc32c==2.7.1 \
        dotenv==0.9.9 \
        eopf==2.5.9 \
        exceptiongroup==1.2.2 \
        flox==0.10.1 \
        folium==0.19.5 \
        geodatasets==2024.8.0 \
        geopandas==1.0.1 \
        gradio==5.23.3 \
        healpy==1.18.1 \
        healpix-geo==0.0.4 \
        hvplot==0.11.3 \
        h2==4.2.0 \
        h3==4.3.0 \
        h5netcdf==1.6.1 \
        ipykernel==6.29.5 \
        isort==6.0.1 \
        jaraco.collections==5.1.0 \
        lz4==4.4.4 \
        nbformat==5.10.4 \
        nc-time-axis==1.4.1 \
        netcdf4==1.7.2 \
        numbagg==0.9.0 \
        numpy==2.2.6 \
        opt-einsum==3.4.0 \
        pickleshare==0.7.5 \
        pyarrow==19.0.1 \
        pysocks==1.7.1 \
        pystac-client==0.8.6 \
        sparse==0.16.0 \
        tomli==2.0.1 \
        xarray==2024.11.0 \
        xdggs==0.2.0 \
        zarr==2.18.4 \
        zstandard==0.23.0
