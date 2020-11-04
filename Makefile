oscal: xml
all: oscal docx


xml: gocomply_fedramp
	gocomply_fedramp opencontrol https://github.com/ComplianceAsCode/redhat xml/

docx: gocomply_fedramp
	for file in `find ./xml/ -name *-fedramp-*.xml`; do \
		gocomply_fedramp convert $$file "$$(echo $$file|sed s/xml/docx/g)"; \
	done

gocomply_fedramp:
ifeq ("$(wildcard $(GOPATH)/bin/gocomply_fedramp)","")
	go get -u -v github.com/gocomply/fedramp/cli/gocomply_fedramp
endif

.PHONY: gocomply_fedramp oscal xml docx
