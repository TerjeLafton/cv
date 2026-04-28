= Info

Terje Lafton \
#link("mailto:terje@lafton.io") \
+47 419 00 298 \
#link("https://github.com/terjelafton")[GitHub] \

= Experience
== Intility
=== Senior Platform Engineer
Aug 2022 - Present \
Returned to the Intility network team on Azure-focused work. First
major piece was a PoC to replace per-customer VPN tunnels to on-prem
with an Azure Virtual WAN solution, using regional hubs with Palo
Alto firewalls and peering to customer environments. Built in
Terraform initially, then converted to Crossplane after running into
CI/CD challenges with Terraform automation. The Virtual WAN solution
was scrapped on cost, but the Crossplane experience carried forward.

Built a custom Crossplane Provider using gNMI and YANG to drive a
new per-customer configuration across the core network from
Kubernetes resources, with a frontend layered on top for users to
post resources and see configured state. Driving network
configuration through Kubernetes is uncommon in the industry, but
the declarative model fits the problem and gives a robust, scalable
baseline.

The 2.0 rebuild moved IPAM into NetBox, with a NetBox plugin as a
low-level frontend. On the Kubernetes side, I replaced the
Crossplane Provider with a custom Go Kubernetes Operator built
around a shared reconciler pattern. By that point we'd only ever
used Provider CRDs from Crossplane, and a custom Operator gave us a
tighter fit and full control over the design. Logging was replaced
with OpenTelemetry instrumentation throughout, using Logfire as the
backend. A gRPC proxy in front of the routers caches gNMI
operations, taking router hits from thousands per second to near
zero.

Deployed across nine clusters on Intility's new Kubernetes platform,
with a management cluster running Argo and Kargo for cross-cluster
deployment and full lab/staging/preprod/prod separation. Lab uses
Cisco CML for device simulation; preprod runs read-only against prod
routers to validate changes before they roll out.

Named personally in the
#link("https://blog.crossplane.io/crossplane-v1-16/")[Crossplane v1.16 release blog post]
for contributing
#link("https://github.com/crossplane/crossplane/pull/5453")[PR #5453]
to the Provider framework.

Tech: Go, Kubernetes, custom Operators, Crossplane, gRPC, gNMI,
YANG, OpenTelemetry, Logfire, Argo, Kargo, NetBox, Terraform, Azure,
Cisco XR, Cisco CML, Palo Alto.

== Oda
=== Software Developer
Jan 2022 - Jun 2022 \
Worked on the network and sites team during Oda's European expansion.
The team handled both existing facilities and new locations. Replaced
the Meraki setup with Cisco SDWAN, learning the platform and testing
on routers in the facilities. Wrote Python to populate NetBox from
operational systems, since documentation had been minimal and
scattered. The longer-term plan was broader automation to assist with
facility deployment.

== Intility
=== Senior Engineer
Sep 2020 - Dec 2021 \
With more seniority, work shifted from operational cases to project
work and training newer engineers joining the network team. Owned
the software side of Intility's Cisco ACI setup, building Python
tooling and APIs to automate tenant operations (creating APs, EPGs,
and contracts) and fabric provisioning (new leaves and their port
configurations). Python became a daily tool, with some Ansible work
alongside.

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
regional offices. Stayed on after qualification to lead the desk and
train new apprentices.

= Skills
== Kubernetes - Custom Operators, Openshift, Crossplane
== Programming - Go, gRPC, Scripting
== Networking - gNMI, NetBox, Cisco

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
