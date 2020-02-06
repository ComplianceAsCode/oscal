# OSCAL content

At this point of time, this repository contains OSCAL formatted SSPs (System Security Plans) generated
automatically out of [opencontrol data](https://github.com/ComplianceAsCode/redhat).

This repository is on periodical refresh.

### Developer information.

`oscalkit` tool was used to generate files available here.

Commands to install `oscalkit` tool:

    $ git clone https://github.com/docker/oscalkit
    $ pushd oscalkit ; go build -o oscalkit ./cli ; popd

Commands to re-generate OSCAL files:

    $ oscalkit convert opencontrol https://github.com/ComplianceAsCode/redhat xml/
    $ oscalkit validate xml/*
