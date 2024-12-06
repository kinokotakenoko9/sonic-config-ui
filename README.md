## Build

Build sonic-sdk:

```
git clone --recurse-submodules https://github.com/sonic-net/sonic-buildimage.git
cd sonic-buildimage
make init
make configure PLATFORM=generic
make target/sonic-sdk.gz target/sonic-sdk-buildenv.gz
docker load < target/sonic-sdk.gz
docker load < target/sonic-sdk-buildenv.gz
```

Build docker image:

```
git clone git@github.com:kinokotakenoko9/sonic-config-ui.git
make
```

Publish to DockerHub:

```
docker tag sonic-config-ui:1.0.0 ${DOCKERHUB_USER}/sonic-config-ui:1.0.0
docker push ${DOCKERHUB_USER}/sonic-config-ui:1.0.0
```

## Install

```
sudo sonic-package-manager repository add cpu-report ${DOCKERHUB_USER}/sonic-config-ui --description="SONiC config ui" --default-reference=1.0.0
sudo sonic-package-manager install sonic-config-ui
```
