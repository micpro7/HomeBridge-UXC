Here’s a polished README.md suitable for your GitHub repository.

:::writing{variant=“document” id=“84271”}

HomeBridge-UXC

A lightweight ARM64 Homebridge container built specifically for OpenWrt using Alpine Linux, designed to run under UXC/crun with persistent storage.

Features
	•	🚀 Lightweight Alpine Linux base
	•	📦 Homebridge pre-installed
	•	🎛 Homebridge Config UI X included
	•	🏠 Optimized for OpenWrt 24.x/25.x
	•	⚡ ARM64 (AArch64) image
	•	💾 Persistent configuration and plugin storage
	•	🔒 Runs as an unprivileged user
	•	🛠 Built automatically with GitHub Actions
	•	📦 Ready for UXC / crun containers

Requirements

Host
	•	OpenWrt 24.x or newer
	•	ARM64 (AArch64)
	•	UXC
	•	crun
	•	Overlay or external SSD storage

No Docker daemon is required on the router.

Included Software
	•	Alpine Linux
	•	Node.js LTS
	•	npm
	•	Homebridge
	•	Homebridge Config UI X
	•	tini

Persistent Storage

Mount a directory from the OpenWrt host to:

/homebridge

Recommended layout:

/mnt/SSD/Config/OpenWrt/HomeBridge

This stores:
	•	config.json
	•	accessories/
	•	persist/
	•	plugins
	•	logs

Your Homebridge configuration survives container updates.

Ports

Port	Purpose
8581	Homebridge Config UI
51826	HomeKit Accessory Protocol

GitHub Actions

Every push to the main branch automatically:
	1.	Builds an ARM64 Alpine image
	2.	Packages it for UXC
	3.	Creates a GitHub Release
	4.	Uploads the release artifact

Release names follow the format:

Homebridge YYYY-MM-DD

Example:

Homebridge 2026-06-26

Repository Structure

.
├── Dockerfile
├── .github/
│   └── workflows/
│       └── build-homebridge.yml
└── README.md

Goals

This project aims to provide the lightest practical Homebridge container for OpenWrt while maintaining compatibility and ease of deployment.

Design priorities:
	•	Small image size
	•	Fast startup
	•	Low RAM usage
	•	ARM64 optimized
	•	Persistent configuration
	•	UXC/crun compatible
	•	Automatic GitHub Releases

Future Plans
	•	Smaller runtime image
	•	Health checks
	•	Automatic plugin backup/restore
	•	Optional Avahi/mDNS integration
	•	Optional S6 overlay support
	•	Multi-architecture builds

License

MIT License.
:::

This README is intentionally concise and project-focused. As the repository matures, you can add sections for installation, UXC deployment commands, troubleshooting, and example configurations.