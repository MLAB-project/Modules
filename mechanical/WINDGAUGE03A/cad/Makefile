STL_DIR = ../amf
IMG_DIR = ../doc/img
SRC_DIR = ./src
DEP_DIR = ./dep
PLATE_DIMMENSIONS=120
SIMARRANGE=/usr/local/bin/simarrange
STLSORT = stlsort
OPENSCAD_APP = openscad
VPATH = $(SRC_DIR):$(DEP_DIR):$(STL_DIR):$(IMG_DIR)

SOURCES = $(wildcard $(SRC_DIR)/*.scad)
TARGETS = $(patsubst $(SRC_DIR)/%.scad, $(STL_DIR)/%.stl, $(SOURCES))
IMAGES = $(patsubst $(SRC_DIR)/%.scad, $(IMG_DIR)/%.png, $(SOURCES))

all : default images

calibration:
	openscad -m make -o calibration.stl calibration.scad

default : $(TARGETS)

$(STL_DIR)/%.stl : $(SRC_DIR)/%.scad
	# Update dependencies and make no-draft version of model.
	$(OPENSCAD_APP) -D "draft = false" -m make -o $@ -d $(patsubst $(STL_DIR)/%.stl, $(DEP_DIR)/%.deps, $@) $<
	# Remove absolute paths in dependencies.
	sed -i "s|$(shell pwd)/||" $(patsubst $(STL_DIR)/%.stl, $(DEP_DIR)/%.deps, $@)
	# Sort stl and deps file to keep git changes to minimum.
	$(STLSORT) $@ || :
	sort -bf $(patsubst $(STL_DIR)/%.stl, $(DEP_DIR)/%.deps, $@) -o $(patsubst $(STL_DIR)/%.stl, $(DEP_DIR)/%.deps, $@)
	sed -i 's|[^\]$$|& \\|' $(patsubst $(STL_DIR)/%.stl, $(DEP_DIR)/%.deps, $@)

include $(wildcard $(DEP_DIR)/*.deps)

images : $(IMAGES)

$(IMG_DIR)/%.png : $(STL_DIR)/%.stl
	# Create temporary file for fast image rendering.
	-echo "import(\"$<\");" > tmp.scad
	# Render PNG image from temporary file.
	$(OPENSCAD_APP) -o $@ tmp.scad
	# Remove temporary file
	rm -f tmp.scad

arrange : default
	$(SIMARRANGE) -x $(PLATE_DIMMENSIONS) -y $(PLATE_DIMMENSIONS) $(ARRANGE_TARGETS)

clean:
	rm -f calibration.stl
	rm -f $(STL_DIR)/*.stl
	rm -f $(IMG_DIR)/*.png
