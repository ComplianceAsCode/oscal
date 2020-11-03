oscal: xml
all: oscal


xml: gocomply_fedramp
	gocomply_fedramp opencontrol https://github.com/ComplianceAsCode/redhat xml/

gocomply_fedramp:
ifeq ("$(wildcard $(GOPATH)/bin/gocomply_fedramp)","")
	go get -u -v github.com/gocomply/fedramp/cli/gocomply_fedramp
endif

.PHONY: gocomply_fedramp oscal xml
