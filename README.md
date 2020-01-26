# OSCAL content

At this point of time, this repository contains OSCAL formatted SSPs (System Security Plans) generated
automatically out of [opencontrol data](https://github.com/ComplianceAsCode/redhat).

Last time data was regenerated was 2020-01-26. We are working on automated periodic re-builds.

### Developer information.

[Custom build](https://github.com/docker/oscalkit/pull/88) of oscalkit was used to generate this data.

Commands used:

    $ oscalkit convert opencontrol https://github.com/ComplianceAsCode/redhat xml/
    $ oscalkit validate xml/*
