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

## Malware
- Macro Virus 
    - macro language = platform independent
- Stealth Virus
    - hides modifications it’s made. 
    - Intercepts requests, provides false info
- Polymorphic Virus 
    - provides varied operational copies, unidentical between infections
- Self-garbling Virus 
    - modifies its code to avoid detection
- Bots & Zombies 
    - collection of devices under control of a hacker network
- Worms 
    - viruses that spread
- OS Rootkits (worst software) 
    - embedded into OS kernel
- Firmware Rootkit (worst of all)
    - in harddrive firmware chip
    - reinstalling OS/reformatting drive won’t address
    - NSA level malware
- Key loggers
    - log your keystrokes
- Trojan horses
    - programs that appear as one thing, actually malware
- RAT (remote access tools) 
    - allow remote administration control
        - Hayvix, alien spy, comrat, etc
- Ransomware 
    - malware that takes control of your pc, encrypts your personal files
        - Cryptowall, ctb-locker, torrent-locker prevalent. Pay to get your stuff back or lose files.
- Malvertisement 
    - infected ads. Hackers pay to place ads on normal sites like yahoo
- Drive-by Attack 
    - visiting a website that contains code to exploit your machine
- Spyware
    - gathers info to compromise you
- Adware
    - undesirable software that forces advertisement on you
        - Ex: Browser hijacking (coolwebsearch)
        - Be careful of optional installations during downloads – use optimal
        - Ex: Lenovo laptops pre-installed with superphish adware & encryption bypass
            - So never buy Lenovo
- Scareware 
    - tricks people into believing in a threat that doesn’t exist. 
        - Ex: fake antivirus
- PUPs
    - Potentially Unwanted Programs, often bundled in with install
    - bloatware
- Phishing 
    - most successful, cheapest. 
    - Don’t click on things you shouldn’t
        - Fake emails, IMs, Subdomains, misspelt domains, subdirectories, hidden URLs
        - Real domains are to the left of the HLD (high level domain (.com)) without “/” to the left. The “/” indicates it is actually a subdomain
    - Real urls that take you to compromised but trusted sites
    - Open redirect, (reflected) cross-site scripting, cross-site request forgery
- Vishing 
    - phone or “voice” phishing
- SMShing 
    - text phishing
- Spamming 
    - be suspicious of anything you didn’t request
- Doxing 
    - “document” abbreviation 
    - make private info public to coerce, embarrass, blackmail, threaten, etc

## Social engineering attacks
- check on ConsumerFraudReporting.org, actionfraud.police.uk
- Internet merchant scams, goods defective/not delivered
- Phishing
- Fake prizes, free gifts, lottery scams (asks for upfront fees “advanced fee fraud”)
- Fake check payments
- Recovery and refund companies
- Computer performance scams
- Scholarship, student loan, financial aid scams
- Online dating scams 
    - catfishing, etc
- Facebook fake friend scam
- Ebay scams 
    - posing as buyers, coerce sellers to ship goods before payment
    - Usually receive fake payment confirmation payment

## Darknet “Darkweb” 
###### only accessible with specific ports, software, protocols, authorization

- “surfaceweb” is the normal web everyone knows
- Used by gov’t, militaries, companies, anyone who needs privacy (including criminals)
- Tool to maintain anonymity, and in some sense security
- Retroshare 
    - pier to pier or friend-to-friend networks
- Tor, I2P anonymous, gnunet, freenet project, etc
    - Can be de-anonymized, be careful
- Exploit kits – growing prices/demand
    - Bought kits to hack computers, install Rats, etc. 
    - Mostly noobs hacking now.
        - Snakerat
    - Zero-Day Vulnerabilities (very deadly)
        - Vulnerabilities that have zero patches, very expensive
