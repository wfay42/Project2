## Root Makefile for RQN
OUTPUT_DIR = output
MODELS_DIR = models

## Basic targets
default: bundle
clean: bundle_clean

target_names:
	$(MAKE) -C ${OUTPUT_DIR} target_names

## Bundle targets
bundle:
	$(MAKE) -C $(OUTPUT_DIR) bundle

bundle_clean:
	$(MAKE) -C $(OUTPUT_DIR) clean

## Image targets
images:
	$(MAKE) -C $(MODELS_DIR) images
