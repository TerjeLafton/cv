= Info

Terje Lafton \
#link("mailto:terje@lafton.io") \
+47 419 00 298 \
#link("https://github.com/terjelafton")[GitHub] \

= Experience
== Intility
=== Senior Platform Engineer
Aug 2022 - Present \
Returned to the Intility network team, working mostly on Azure. First
project was a PoC for Azure Virtual WAN to replace per-customer
on-prem VPN tunnels, built first in Terraform and then converted to
Crossplane after running into issues with CI/CD automation. The Virtual WAN was scrapped because of
cost, but we kept using Crossplane.

Built a custom Crossplane Provider using gNMI and YANG to drive a
new per-customer configuration across the core network from
Kubernetes resources, with a frontend on top. Few teams use
Kubernetes for network configuration, but the declarative model
fits the problem better than typical imperative automation.

The 2.0 rebuild moved IPAM into NetBox, with a NetBox plugin as a
low-level frontend, and replaced the Crossplane Provider with a
custom Go Kubernetes Operator built around a shared reconciler
pattern. The Operator uses OpenTelemetry from the start, with Logfire as
the backend. A gRPC proxy
in front of the routers caches gNMI operations, dropping router hits
from thousands per second to near zero.

Deployed across nine clusters on Intility's new Kubernetes platform,
with a management cluster running Argo and Kargo and
lab/staging/preprod/prod separation. Lab uses Cisco CML for device
simulation; preprod runs read-only against prod routers.

Named in the
#link("https://blog.crossplane.io/crossplane-v1-16/")[Crossplane v1.16 release blog post]
for community contributions, mainly
#link("https://github.com/crossplane/crossplane/pull/5453")[PR #5453],
a proposal to change how resource statuses are handled in the
Provider framework.

== Oda
=== Software Developer
Jan 2022 - Jun 2022 \
Worked on the network and sites team during Oda's European expansion.
The team handled both existing facilities and new locations. Replaced
the Meraki setup with Cisco SDWAN, learning the platform and testing
on routers in the facilities. Wrote Python to populate NetBox from
operational systems, since documentation was minimal and
scattered. The longer-term plan was to automate more of how new facilities get deployed.

== Intility
=== Senior Engineer
Sep 2020 - Dec 2021 \
As I got more senior, work shifted from operational cases to project
work and training newer engineers joining the network team. Owned
the software side of Intility's Cisco ACI setup, building Python
tooling and APIs to automate tenant operations (creating APs, EPGs,
and contracts) and fabric provisioning (new leaves and their port
configurations). Python became a daily tool, with some Ansible work
too.

=== Engineer
Mar 2016 - Aug 2020 \
Started in Intility's IT support function, where there was no
first-line and everyone worked as second-line. Took the CCNA and
moved into the Network Services NOC, working on Cisco core and
customer networks across multiple data centres serving thousands of
customers, including site-to-site VPNs between Intility's private
cloud and customer Azure environments.

== Norges Idrettsforbund
=== Apprentice/IT Support Technician
Aug 2013 - Feb 2016 \
Two-year apprenticeship: first-line phone support for in-house services
used by 1M+ members, then on-site desk supporting sports federations and
regional offices. Stayed on after the apprenticeship to lead the desk and
train new apprentices.

= Skills
== Kubernetes - Custom Operators, Crossplane, Argo, Kargo, Openshift
== Programming - Go, gRPC, Python, Scripting
== Networking - gNMI, YANG, NetBox, Cisco (XR, CML, Meraki), Palo Alto, SDWAN
== Cloud - Azure, Terraform
== Observability - OpenTelemetry, Logfire

= Certifications
== CCNA
Aug 2017 - Jun 2020

= Talks
== Intility Developer Day
Crossplane vs Terraform

= Education
== Hønefoss Videregående
=== IKT Servicefag Aug 2010 - Jun 2013
#lorem(20)
