# OSCAL content

At this point of time, this repository contains OSCAL formatted SSPs (System Security Plans) generated
automatically out of [opencontrol data](https://github.com/ComplianceAsCode/redhat).

This repository is on periodical refresh. ![Build](https://github.com/ComplianceAsCode/oscal/workflows/Build/badge.svg)

### Developer information.

`fedramp` tool was used to generate files available here.

Commands to install `fedramp` tool:

    $ git clone https://github.com/GoComply/fedramp
    $ pushd fedramp ; make build  ; popd

Command to re-generate OSCAL files:

    $ fedramp opencontrol https://github.com/ComplianceAsCode/redhat xml/
