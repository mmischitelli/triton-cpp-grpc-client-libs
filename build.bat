docker pull strongdegens/triton-win10-py3-min:latest
docker run --mount type=bind,src=.\client,dst=C:\client -it --rm win10-py3-min powershell

cmake -DVCPKG_TARGET_TRIPLET=x64-windows -DCMAKE_TOOLCHAIN_FILE='c:/vcpkg/scripts/buildsystems/vcpkg
.cmake' -DCMAKE_INSTALL_PREFIX=install -DTRITON_ENABLE_CC_GRPC=ON -DTRITON_COMMON_REPO_TAG='r25.04' -DTRITON_THIRD_PARTY
_REPO_TAG='r25.04' -DTRITON_CORE_REPO_TAG='r25.04' -DTRITON_SERVER='2.55.0' ../

git config --global --add safe.directory '*'

msbuild.exe cc-clients.vcxproj -p:Configuration=Release /m