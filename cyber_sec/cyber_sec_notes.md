# Complete Cyber Security Course notes

## Overview

##### Security trip wires – Canary Tokens. 
- www.stationx.net/canarytokens/
- Create fake files that will return notification when opened, provides details how alert was triggered (where, when, etc.). Entice the hacker to trigger the alert.
- Various forms: email, pdf, word documents, etc.
- Can put tokens within tokens, i.e. fake link inside the fake email for added security

##### Goals & Objectives
- Building blocks, landscape, threat modeling/risk assessment, personal threats, test environments (Virtualbox/VMware), encryption, differences btwn platforms, mitigate social engineering (phishing, etc.), isolation and compartmentalization

##### Target audience
- technical, pros, students, journalists, whistle blowers, bloggers, celebrities, etc.

##### Dedicated forum
- https://forum.stationx.net

## Threat landscape

##### Assets
- privacy (content) vs anonymity (identity) vs pseudonymity (alias)
- http filter, patching, vpn, ssh, https, openpgp, firewall, ssl/tls, 2fa…
##### Threats and Adversaries
- mass surveillance, malware, viruses, rootkits, vishing, phishing
- hackers, spies, oppressive regimes, colleagues
##### Risk = vulnerabilities * threats * consequences
- Security is the combination of technology, process, and most importantly your actions

## Risk Assessment 
- Balance between risk and opportunity, fit your security to your needs

##### 100% Security
- impossible unless you stop the activity. Decide your personal risk tolerance
    - Concentrate on consequences to choose your course of action
    - Select > Implement > Assess > Monitor
- Security vs Privacy vs Anonymity; can battle each other. Can’t have it all.

##### Defense in depth – layered defense.
- Prevention (encryption) > Detect (canary, etc) > Recover (backup)
- What you cannot prevent you detect, what you can’t detect, you recover

##### Zero Trust model
- the less you trust, the lower you risk. Including yourself.
- Evaluate and distribute trust to mitigate risk.
- Ex: store files online – trust dropbox?
- Distribute trust by backing up your files elsewhere
    - Zero knowledge system – provider has no knowledge of your file contents (ex: swedish banking in American cinema)
        - Don’t trust them either, as part of the zero-trust model

##### APT (advanced persistent threat) 
- when you are personally being targeted
- $445,000,000,000 stolen annually via cyber crime
- Web hosting, email attacks, virtual goods, reputation hijacking, bot activity, blackmail, account/financial credentials sold, id theft, cyptocurrency

##### Security Bugs 
- ex: heartbleed bug to steal bank logins. Exist everywhere.
- Known vs unknown bugs
    - Known bugs have patches. Patched systems are safe against patch bugs.
    - Unknown bugs, aka “zero days.” No patches.
        - Compensating control used against them

## Current landscape

##### Hackers, Crackers & Cyber Criminals
- Ethical hackers (white hat)
- malicious hackers (black hat)
- mercenaries (red hat)
- hacking collectives
- lone wolfs
- script kitties
    - noobs that use code other hackers have written
        - 95% of hackers
