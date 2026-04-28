#import "@preview/fontawesome:0.6.0": *
#set text(font: "Helvetica Neue")

#let entry(title, date) = block(above: 0.8em, below: 0.8em)[
  #grid(
    columns: (1fr, auto),
    align: (left + horizon, right + horizon),
    text(weight: "bold", size: 11pt)[#title], text(fill: rgb("#666"))[#date],
  )
]

#grid(
  columns: (1fr, auto),
  stack(
    spacing: 1.5em,
    text(size: 40pt, weight: "bold")[Terje Lafton],
    text(size: 12pt, fill: rgb("#666"))[Senior Platform Engineer],
    [
      #fa-github() #link("https://github.com/terjelafton")[GitHub]
      #h(1em)|#h(1em)
      #fa-envelope() #link("mailto:terje@lafton.io")
      #h(1em)|#h(1em)
      #fa-phone() +47 419 00 298
    ],
  ),
  box(
    width: 3cm,
    height: 3cm,
    radius: 50%,
    clip: true,
  )[
    #image("assets/photo.jpeg", width: 100%, height: 100%, fit: "cover")
  ],
)

= Experience
== Intility
#entry[Senior Platform Engineer][Aug 2022 - Present]
Returned to the Intility network team, working mostly on Azure. First
project was a PoC for Azure Virtual WAN to replace per-customer
on-prem VPN tunnels, built first in Terraform then rebuilt with Crossplane.

Built a custom Crossplane Provider using gNMI and YANG to drive
per-customer configuration across the core network from Kubernetes
resources, with a frontend on top.

Built a 2.0 version: a custom Kubernetes Operator in Go (replacing
Crossplane), a NetBox plugin as low-level frontend, a gRPC caching
proxy that dropped router hits from thousands per second to near
zero, and OpenTelemetry with Logfire.

Deployed across nine clusters on Intility's Kubernetes platform: a
management cluster with Argo and Kargo, plus redundant pairs for
lab, staging, preprod, and prod.

Named in the
#link(
  "https://blog.crossplane.io/crossplane-v1-16/",
)[Crossplane v1.16 release blog post]
for a community proposal to change how resource statuses are handled
in the Provider framework
(#link("https://github.com/crossplane/crossplane/pull/5453")[PR #5453]).

== Oda
#entry[Software Developer][Jan 2022 - Jun 2022]
Worked on the network and sites team during Oda's European expansion.
The team handled both existing facilities and new locations. Replaced
the Meraki setup with Cisco SDWAN, learning the platform and testing
on routers in the facilities. Wrote Python to populate NetBox from
operational systems, since documentation was minimal and
scattered. The longer-term plan was to automate more of how new facilities get deployed.

== Intility
#entry[Senior Engineer][Sep 2020 - Dec 2021]
With more seniority, work shifted from operational cases to project
work and training newer engineers joining the network team.
Responsible for the software side of Intility's Cisco ACI setup,
building Python
tooling and APIs to automate tenant operations (creating APs, EPGs,
and contracts) and fabric provisioning (new leaves and their port
configurations). Python became a daily tool, with some Ansible work
too.

#entry[Engineer][Mar 2016 - Aug 2020]
Started in Intility's IT support function, as second-line support since there was
no first-line support in Intility.
Took the CCNA and moved into the Network Services NOC, working on Cisco core and
customer networks across multiple data centres serving thousands of
customers, including site-to-site VPNs between Intility's private
cloud and customer Azure environments.

== Norges Idrettsforbund
#entry[Apprentice/IT Support Technician][Aug 2013 - Feb 2016]
Two-year apprenticeship: first-line phone support for in-house services
used by 1M+ members, then on-site desk supporting sports federations and
regional offices. Stayed on after the apprenticeship to lead the desk and
train new apprentices.

= Skills
*Kubernetes:* Custom Operators, Crossplane, Argo, Kargo, Openshift \
*Programming:* Go, gRPC, Python \
*Networking:* gNMI, YANG, NetBox, Cisco (XR, CML, Meraki, SDWAN), Palo Alto \
*Cloud:* Azure, Terraform \
*Observability:* OpenTelemetry, Logfire \
*Languages:* Fluent Norwegian, Fluent English

= Certifications
#entry[Cisco Certified Network Associate (CCNA)][Aug 2017 - Jun 2020]

= Talks
#entry[From Terraform to Crossplane][Intility Developer Day, 2024]
Reliability issues we ran into automating Terraform through CI/CD
pipelines, with the broader point that automating a CLI tool isn't
always a good idea. Then on to Crossplane: what we built with it,
the value of a Kubernetes-style control plane, and the reconciler
pattern you get for free.

= Education
== Hønefoss Videregående
#entry[IKT Servicefag][Aug 2010 - Jun 2013]
