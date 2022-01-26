[nomad-api]
title="HTTP API"
desc="Nomad HTTP API"
port_forward="yes"
dst.ports="4646/tcp"

[nomad-rpc]
title="RPC"
desc="Nomad Internal RPC"
port_forward="yes"
dst.ports="4647/tcp"

[nomad-serf]
title="Serf WAN"
desc="Nomad Server Gossip"
port_forward="yes"
dst.ports="4648/tcp,4648/udp"
