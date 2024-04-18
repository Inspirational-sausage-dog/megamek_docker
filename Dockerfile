# see required java kit on megamek.org
FROM openjdk:11

# build variables. MEGAMEK_VERSION is passed via --build-args flag
ARG MEGAMEK_VERSION
ARG MEGAMEK_USER=megamek
ARG MEGAMEK_DIR=/${MEGAMEK_USER}
ARG MEGAMEK_URL=https://github.com/MegaMek/megamek/releases/download/v${MEGAMEK_VERSION}/megamek-${MEGAMEK_VERSION}.tar.gz

# create a separate user to launch program with
RUN groupadd -g 1001 ${MEGAMEK_USER} \
	&& useradd -d "${MEGAMEK_DIR}" -u 1001 -g 1001 -m -s /bin/bash ${MEGAMEK_USER}

# download megamek from offical repository and extract files to MEGAMEK_DIR folder 
RUN wget -qO- ${MEGAMEK_URL} \
	| tar xzf - \
	--strip-components=1 -C ${MEGAMEK_DIR}

# set appropriate user ownership
RUN chown -R 1001:1001 ${MEGAMEK_DIR}

# set WORKDIR to MEGAMEK_DIR
WORKDIR ${MEGAMEK_DIR}

LABEL megamek_version="${MEGAMEK_VERSION}"
