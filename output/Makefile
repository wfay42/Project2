# Makefile for creating RQN artifacts
VERSION = 0.1.0-Demo

MAC_DIR = MacOS
MAC_ARTIFACT = RQN-MacOS-${VERSION}.tar.gz

WIN_DIR = Windows
WIN_ARTIFACT = RQN-Windows-${VERSION}.zip

## Overall targets
default: bundle
bundle: mac win
clean:
	rm -f ${MAC_ARTIFACT} ${WIN_ARTIFACT}

## Mac targets
mac: ${MAC_ARTIFACT}

${MAC_ARTIFACT}: ${MAC_DIR}
	(cd ${MAC_DIR} && tar czvf ../${MAC_ARTIFACT} RQN)

## Windows Targets
win: ${WIN_ARTIFACT}

${WIN_ARTIFACT}: ${WIN_DIR}
	(cd ${WIN_DIR} && zip -r ../${WIN_ARTIFACT} RQN)
