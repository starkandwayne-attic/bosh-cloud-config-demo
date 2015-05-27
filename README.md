# Getting started with bosh cloud-config
The goal of this repository is demonstrate the new `bosh cloud-config` functionality.
More information can be found in [this](https://blog.starkandwayne.com/2015/05/27/getting-started-with-bosh-cloud-config/) blog post.

## Demo Instructions
Since the current version of bosh-lite uses and old version of BOSH you will first need to follow the instruction from [this](https://blog.starkandwayne.com/2015/05/26/update-bosh-lite-to-latest-bosh/) blog post.

When you have update your bosh-lite, clone the following repo:
```
git clone https://github.com/starkandwayne/bosh-cloud-config-demo.git
```

Install gems:
```
cd bosh-cloud-config-demo
bundle
```

Set a deployment:
```
bosh deployment deployments/redis-warden.yml
```

Upload the release and stemcell:
```
bosh prepare deployment
```

Set your cloud-config:
```
bosh update cloud-config cloud-config/warden.yml
```

Deploy as you normally would:
```
bosh deploy
```
