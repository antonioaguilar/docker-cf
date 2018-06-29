# docker-cf
Docker container with Cloud Foundry CLI

### Install

```
docker pull aaguilar/cf
```

### Usage

```
# run in interactive mode
docker run -it --rm aaguilar/cf

# run in command mode
docker run -it --rm aaguilar/cf cf --help
```

### Installed CF CLI plugins

* report-users
* copyenv
* top
* autopilot
* blue-green-deploy
* network-policy
* Targets
* deploy
* copy
* whoami-plugin
* sync
* do-all
* get-events
* docker-usage
* antifreeze
* wildcard_pl

More information [here](https://plugins.cloudfoundry.org/)
