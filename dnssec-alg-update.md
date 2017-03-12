%%%

    Title = "DNS Security (DNSSEC) DNSKEY Algorithm IANA Registry Updates"
    abbrev = "DNSSEC Algorithm Updates"
    category = "std"
    docName = "draft-arends-dnsop-dnssec-algorithm-update-00"
    ipr= "trust200902"
    area = "Internet"
    workgroup = "DNSOP"
 
    date = 2017-03-12T00:00:00Z
 
    [[author]]
    initials="R."
    surname="Arends"
    fullname="Roy Arends"
    organization="ICANN"
        [author.address]
        email="roy.arends@icann.org"
 
    [[author]]
    initials="J."
    surname="Schlyter"
    fullname="Jakob Schlyter"
    organization="Kirei AB"
        [author.address]
        email="jakob@kirei.se"

    [[author]]
    initials="M."
    surname="Larson"
    fullname="Matt Larson"
    organization="ICANN"
        [author.address]
        email="matt.larson@icann.org"
%%%

.# Abstract

The DNS Security Extensions (DNSSEC) require the use of cryptographic algorithm suites for generating digital signatures and cryptographic hashes over DNS data. The algorithms specified for use with DNSSEC are reflected in IANA registries. This document updates some entries in these registries. The main reason for these updates is to retire the use of SHA1.

{mainmatter}


# Introduction

The Domain Name System (DNS) Security Extensions (DNSSEC, defined by [@?RFC4033], [@?RFC4034], [@?RFC4035], [@?RFC4509], [@?RFC5155], and [@?RFC5702]) use digital signatures over DNS data to provide source authentication and integrity protection. DNSSEC uses IANA registries to list codes for digital signature algorithms and hash functions.

This document updates a set of entries in the IANA registries titled "DNS Security (DNSSEC) Algorithm Numbers" and "Delegation Signer (DS) Resource Record (RR) Type Digest Algorithms". This document updates the following: 

##  Reserved Words

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in [@!RFC2119].


# The DNS Security Algorithm Implementation Status Lists

## Status Definitions

Must Implement: The algorithm MUST be implemented to interoperate with other implementations of this specification.

Must Not Implement: The algorithm MUST NOT be implemented. An algorithm with this status has known weaknesses.

Recommended to Implement: The algorithm SHOULD be implemented. Utility and interoperability with other implementations will be improved when an algorithm with this status is implemented, though there might be occasions where it is reasonable not to implement the algorithm. An implementer must understand and weigh the full implications of choosing not to implement this particular algorithm.

Optional: The algorithm MAY be implemented, but all implementations MUST be prepared to interoperate with implementations that do or do not implement this algorithm.


## Algorithm Implementation Status Assignment Rationale

RSASHA1 had an implementation status of "Must Implement", consistent with [@RFC4034]. The status of RSASHA1 is set to "Recommended to Implement" consistent with RSASHA1-NSEC3-SHA1. The shift from "Must Implement" to "Recommended to Implement" is due to a perceived weakness in SHA1.

The status of RSASHA256 is set to "Must Implement" as major deployments (such as the root zone) use these algorithms [@RZDPS]. It is believed that RSA/SHA-256 or RSA/SHA-512 algorithms will replace older algorithms (e.g., RSA/SHA-1) that have a perceived weakness.

All other algorithms used in DNSSEC specified without an implementation status are currently set to "Optional".

## DNSSEC Implementation Status Table {#statustable}

The DNSSEC algorithm implementation status table is listed below. Only the algorithms already specified for use with DNSSEC at the time of writing are listed.

| Must Implement | Must Not Implement | Recommended        | Optional
|:---------------|:-------------------|:-------------------|:--------
| RSASHA256      | RSAMD5             | RSASHA1            | Any registered algorithm not listed in this table
|                |                    | RSASHA1-NSEC3-SHA1 |
|                |                    | RSASHA512          |
|                |                    | ECDSAP256SHA256    |
|                |                    | ECDSAP384SHA384    |

This table does not list the Reserved values in the IANA registry table or the values for INDIRECT (252), PRIVATE (253), and PRIVATEOID (254). These values may relate to more than one algorithm and are therefore up to the implementer's discretion. As noted, any algorithm not listed in the table is "Optional". 

## Specifying New Algorithms and Updating the Status of Existing Entries

[@?RFC6014] establishes a parallel procedure for adding a registry entry for a new algorithm other than a standards track document. Because any algorithm not listed in the foregoing table is "Optional", algorithms entered into the registry using the [@?RFC6014] procedure are automatically "Optional".

It has turned out to be useful for implementations to refer to a single document that specifies the implementation status of every algorithm. Accordingly, when a new algorithm is to be registered with a status other than "Optional", this document shall be made obsolete by a new document that adds the new algorithm to the table in (#statustable). Similarly, if the status of any algorithm in the table in (#statustable) changes, a new document shall make this document obsolete; that document shall include a replacement of the table in (#statustable). This way, the goal of having one authoritative document to specify all the status values is achieved.

This document cannot be updated, only made obsolete and replaced by a successor document.


# IANA Considerations

This document lists the implementation status of cryptographic algorithms used with DNSSEC. These algorithms are maintained in an IANA registry at <http://www.iana.org/assignments/dns-sec-alg-numbers>. Because this document establishes the implementation status of every algorithm, it has been listed as a reference for the registry itself.


# Security Considerations

This document lists, and in some cases assigns, the implementation status of cryptographic algorithms used with DNSSEC. It is not meant to be a discussion on algorithm superiority.

Since the status of two algorithms have changed, it is important to consider the long term effect of these changes in implementations.

An implementation may have provided a default algorithm to use when generating a DNSKEY. An implementation may select a default algorithm to sign DNSSEC records. It is recommended that implementations that provide a default algorithm use an algorithm with the status "Must Implement".


<reference anchor="RZDPS" target="https://www.iana.org/dnssec/icann-dps.txt">
  <front>
    <title abbrev="Root Zone KSK Operator DPS">DNSSEC Practice Statement for the Root Zone KSK Operator</title>
    <author fullname="Fredrik Ljunggren" initials="F." surname="Ljunggren">
      <organization>Kirei AB</organization>
    </author>
    <author fullname="Tomofumi Okubo" initials="T." surname="Okubo">
      <organization>ICANN</organization>
    </author>
    <author fullname="Richard Lamb" initials="R." surname="Lamb">
      <organization>ICANN</organization>
    </author>
    <author fullname="Jakob Schlyter" initials="J." surname="Schlyter">
      <organization>Kirei AB</organization>
    </author>
    <date month="October" year="2010" />
  </front>
</reference>

{backmatter}
