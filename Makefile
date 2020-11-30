oscal: xml json
all: oscal docx


xml: gocomply_fedramp
	gocomply_fedramp --debug opencontrol --format xml https://github.com/ComplianceAsCode/redhat xml/

json: gocomply_fedramp
	gocomply_fedramp --debug opencontrol --format json https://github.com/ComplianceAsCode/redhat json/

docx: gocomply_fedramp $(shell ls -d xml/* | sed -e 's/xml/docx/g')

docx/%.docx: xml/%.xml
	gocomply_fedramp convert $< $@

gocomply_fedramp:
ifeq ("$(wildcard $(GOPATH)/bin/gocomply_fedramp)","")
	go get -u -v github.com/gocomply/fedramp/cli/gocomply_fedramp
endif

.PHONY: gocomply_fedramp oscal xml json
