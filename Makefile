NAMESPACE=scottylogan
BASE_IMAGE=radiusd
IMAGE=${BASE_IMAGE}-su

all:
	$(MAKE) `arch`

x86_64: Dockerfile.x86_64
	docker build -t ${NAMESPACE}/${IMAGE}:latest -f Dockerfile.x86_64 .

armv7l: Dockerfile.rpi
	docker build -t ${NAMESPACE}/rpi-${IMAGE}:latest -f Dockerfile.rpi .

Dockerfile.x86_64: Dockerfile.common
	echo "FROM ${NAMESPACE}/${BASE_IMAGE}' >$@
	cat $< >>$@

Dockerfile.rpi: Dockerfile.common
	echo 'FROM ${NAMESPACE}/rpi-${BASE_IMAGE}' >$@
	cat $< >>$@

