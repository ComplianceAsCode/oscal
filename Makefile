oscal: xml
all: oscal docx


xml: gocomply_fedramp
	gocomply_fedramp --debug opencontrol https://github.com/ComplianceAsCode/redhat xml/

docx: gocomply_fedramp $(shell ls -d xml/* | sed -e 's/xml/docx/g')

docx/%.docx: xml/%.xml
	gocomply_fedramp convert $< $@

gocomply_fedramp:
ifeq ("$(wildcard $(GOPATH)/bin/gocomply_fedramp)","")
	go get -u -v github.com/gocomply/fedramp/cli/gocomply_fedramp
endif

.PHONY: gocomply_fedramp oscal xml
