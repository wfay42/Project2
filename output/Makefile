# Makefile for creating RQN artifacts
VERSION = 0.2.0-Demo
GAME_DIR = rpgmaker

MAC_DIR = MacOS
MAC_ARTIFACT = RQN-MacOS-${VERSION}.tar.gz

WIN_DIR = Windows
WIN_ARTIFACT = RQN-Windows-${VERSION}.zip

## Overall targets
default: bundle
bundle: mac win
clean:
	rm -f ${MAC_ARTIFACT} ${WIN_ARTIFACT}
	rm -rf ${MAC_DIR} ${WIN_DIR}

target_names:
	@echo ${MAC_DIR} creates ${MAC_ARTIFACT}
	@echo ${WIN_DIR} creates ${WIN_ARTIFACT}

## Mac targets
mac: ${MAC_ARTIFACT}

${MAC_ARTIFACT}: ${MAC_DIR}
	(cd ${MAC_DIR} && tar czvf ../${MAC_ARTIFACT} rpgmaker)

## Windows Targets
win: ${WIN_ARTIFACT}

${WIN_ARTIFACT}: ${WIN_DIR}
	(cd ${WIN_DIR} && zip -r ../${WIN_ARTIFACT} rpgmaker)
