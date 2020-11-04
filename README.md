# OSCAL content

At this point of time, this repository contains OSCAL formatted SSPs (System Security Plans) generated
automatically out of [opencontrol data](https://github.com/ComplianceAsCode/redhat).

This repository is on periodical refresh. ![Build](https://github.com/ComplianceAsCode/oscal/workflows/Build/badge.svg)

### Developer information.

[gocomply_fedramp](https://github.com/gocomply/fedramp) tool was used to generate files available here.

Commands to install `gocomply_fedramp` tool:

    $ get -u -v github.com/gocomply/fedramp/cli/gocomply_fedramp

Command to re-generate OSCAL files:

    $ gocomply_fedramp opencontrol https://github.com/ComplianceAsCode/redhat xml/

### How to use these files?

It is possible to generate latest FedRAMP SSP document in `.docx` form using `gocomply_fedramp` tool.

    $ gocomply_fedramp convert ./xml/coreos-4-fedramp-Low.xml  FedRAMP-Low-openshift.docx

To generate all FedRAMP docx guides, one for each oscal file available run:

    $ make docx
