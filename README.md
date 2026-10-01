# Linux Masterclass

A hands-on, two-day Linux course — from Linux fundamentals and the file system to Bash shell scripting, networking configuration and Linux security. All 17 labs run in the free browser-based KillerCoda Ubuntu playground, so nothing needs to be installed.

| Course detail | Information |
|---|---|
| Course code | `C579` |
| Programme | Non-WSQ |
| Duration | 2 days · 15 instructional hours (9:30am – 5:30pm daily) |
| Registration | [View course details and register](https://www.tertiarycourses.com.sg/linux-masterclass.html) |

## About the course

Ready to level up your Linux skills? This masterclass takes you from essential Linux commands and system configuration to writing effective shell scripts. Whether you are an aspiring system admin or a developer looking to automate tasks, you will practise every concept hands-on: navigating the file system, managing users and permissions, processing text with pipes and regular expressions, building Bash scripts with variables, conditionals, loops and functions, managing processes and cron jobs, deploying a web server, testing and diagnosing the network, and hardening and auditing a Linux system.

## Learning outcomes

On completion of this course, learners will be able to:

- **LO1:** Analyze Linux components and coordinate on the Linux release.
- **LO2:** Configure Linux and select shell scripting for integrating software products.
- **LO3:** Execute tests on Linux networking and diagnose networking issues.
- **LO4:** Identify, modify and improve Linux security configuration.

## Topics covered

1. **Linux Fundamental** — Linux components, distributions, ways to run Linux, the file system hierarchy, users and permissions
2. **Linux Shell Script** — shell environment, redirection and pipes, grep and regular expressions, Bash scripting: variables, input, conditionals, loops, functions, debugging and automation
3. **Linux Networking Configuration** — processes and cron, package management, NGINX deployment, network configuration tests and diagnosis
4. **Linux Security** — security principles, least privilege, firewall, hardening and audit scripts

## Labs

| Lab | Title | Topic |
|---|---|---|
| 01 | [Getting Started with the KillerCoda Ubuntu Playground](labs/lab-01-getting-started/) | Linux Fundamental |
| 02 | [Exploring the Linux File System](labs/lab-02-filesystem/) | Linux Fundamental |
| 03 | [Working with Files, Directories and Links](labs/lab-03-files-directories/) | Linux Fundamental |
| 04 | [Users, Ownership and Permissions](labs/lab-04-permissions/) | Linux Fundamental |
| 05 | [Customising the Shell Environment](labs/lab-05-shell-environment/) | Linux Shell Script |
| 06 | [Redirection, Pipes and Text Processing](labs/lab-06-text-processing/) | Linux Shell Script |
| 07 | [Your First Shell Script](labs/lab-07-first-script/) | Linux Shell Script |
| 08 | [User Input, Arguments and Arithmetic](labs/lab-08-input-arguments/) | Linux Shell Script |
| 09 | [Conditionals — if, test and case](labs/lab-09-conditionals/) | Linux Shell Script |
| 10 | [Loops — for, while and until](labs/lab-10-loops/) | Linux Shell Script |
| 11 | [Functions, Exit Status and Debugging](labs/lab-11-functions/) | Linux Shell Script |
| 12 | [Automation Script — Backup with tar](labs/lab-12-backup-script/) | Linux Shell Script |
| 13 | [Managing Processes and Scheduling with Cron](labs/lab-13-processes-cron/) | Linux Networking Configuration |
| 14 | [Package Management and Web Server Deployment](labs/lab-14-package-webserver/) | Linux Networking Configuration |
| 15 | [Network Configuration and Troubleshooting](labs/lab-15-network-troubleshooting/) | Linux Networking Configuration |
| 16 | [Hardening Linux Security](labs/lab-16-hardening/) | Linux Security |
| 17 | [Building a Security Audit Script](labs/lab-17-security-audit/) | Linux Security |

Start the [KillerCoda Ubuntu playground](https://killercoda.com/playgrounds/scenario/ubuntu), then fetch the lab files:

```bash
git clone https://github.com/tertiarycourses/C579-Linux-Masterclass.git course
ls course/labs
```

The full lab index is in [labs/README.md](labs/README.md).

## Courseware package

| Item | Files |
|---|---|
| Course slides | [PowerPoint](courseware/Linux%20Masterclass-v1.0.pptx) · [PDF](courseware/Linux%20Masterclass-v1.0.pdf) |
| Lesson Plan | [Word](courseware/LP-Linux%20Masterclass.docx) · [PDF](courseware/LP-Linux%20Masterclass.pdf) |
| Learner Guide | [Word](courseware/LG-Linux%20Masterclass.docx) · [PDF](courseware/LG-Linux%20Masterclass.pdf) · [Markdown](LG-Linux%20Masterclass%20(C579).md) |
| Labs | [labs/](labs/) — one folder per lab with its guide (.md), scripts (.sh) and data files |

This repository carries the public learner and trainer courseware only. Course materials are also available to enrolled learners on the [Tertiary Infotech LMS](https://lms-tms.tertiaryinfotech.com).

## Provider

Conducted by **Tertiary Infotech Academy Pte Ltd** (UEN 201200696W) · [www.tertiarycourses.com.sg](https://www.tertiarycourses.com.sg)

© 2026 Tertiary Infotech Academy Pte Ltd. All rights reserved.
