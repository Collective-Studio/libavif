git clone --branch v0.9.2 --depth 1 https://github.com/AOMediaCodec/libavif.git

# cmake and ninja must be in your PATH.
cd libavif/ext/
./aom.cmd
./libjpeg.cmd
./libyuv.cmd
./zlibpng.cmd
cd ..
mkdir build
cd build

cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF -DAVIF_CODEC_AOM=ON -DAVIF_LOCAL_AOM=ON -DAVIF_BUILD_APPS=ON -DAVIF_LOCAL_JPEG=1 -DAVIF_LOCAL_ZLIBPNG=1 -DAVIF_LOCAL_LIBYUV=1 ..
ninja
