%%%

    Title = "DNS Security (DNSSEC) DNSKEY Algorithm IANA Registry Updates"
    abbrev = "DNSSEC Algorithm Updates"
    category = "Standards Track"
    docName = "draft-arends-dnsop-dnssec-algorithm-update-00"
    ipr= "trust200902"
    area = "Internet"
    workgroup = "DNSOP"
 
    date = 2017-03-03T00:00:00Z
 
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

The DNS Security Extensions (DNSSEC) require the use of cryptographic algorithm suites for generating digital signatures and cryptographic hashes over DNS data. The algorithms specified for use with DNSSEC are reflected in IANA-maintained registries.  This document updates some entries in these registries. The main reason for these updates is to retire the use of SHA1. 
...

{mainmatter}


# Introduction

The Domain Name System (DNS) Security Extensions (DNSSEC, defined by [RFC4033], [RFC4034], [RFC4035], [RFC4509], [RFC5155], and [RFC5702]) use digital signatures over DNS data to provide source authentication and integrity protection.  DNSSEC uses IANA registries to list codes for digital signature algorithms and hash functions.

This document updates a set of entries in the IANA registries titled "DNS Security (DNSSEC) Algorithm Numbers" and "Delegation Signer (DS) Resource Record (RR) Type Digest Algorithms". The updated entries are given below.


