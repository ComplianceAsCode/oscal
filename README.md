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
