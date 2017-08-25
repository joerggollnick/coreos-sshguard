# coreos-sshguard
running sshguard on coreos

## usage

```
fleetctl start sshguard.service
```

## alternate usage

```
ExecStart=/bin/sh -c 'journalctl --no-pager -q -f -t sshd | sed -u "s/\\[[0-9]*\\]//" | docker run -i --name sshguard1 --rm --net=host --privileged  myreg:5000/myregistry/sshguard:latest -a 10 -w 10.0.0.0/8 -p 600 -s 3600'
```
