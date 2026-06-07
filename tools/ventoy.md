# Ventoy

# What is Ventoy?

Ventoy is a multi-boot USB solution that allows storing multiple ISO files on a single USB device.

Instead of flashing one ISO at a time, Ventoy installs a bootloader onto the USB drive. After installation, ISO files can simply be copied onto the USB like normal files.

Examples:
- Rocky Linux
- Ubuntu
- Debian
- Fedora
- Rescue ISOs
- Windows installers

---

# Important Warning

Installing Ventoy will erase the selected USB drive completely.

Double-check the target device before continuing.

Incorrect selection may destroy data on another disk.

---

# Step 1 — Download Ventoy

Official website:

https://www.ventoy.net/

Download the latest Linux package:
- ventoy-x.x.xx-linux.tar.gz

---

# Step 2 — Extract the Archive

Open terminal and move to Downloads:

```bash
cd ~/Downloads
```

Extract:

```bash
tar xzf ventoy-*-linux.tar.gz
```

Move into extracted directory:

```bash
cd ventoy-*-linux
```

---

# Step 3 — Identify USB Device

List storage devices:

```bash
lsblk -o NAME,SIZE,MODEL,TRAN
```

Example output:

```text
NAME      SIZE     MODEL                       TRAN
nvme0n1   476.9G   PC801 NVMe SK hynix 512GB   nvme
sda       57.8G    Buffalo USB Flash           usb
```

In this example:
- `sda` = USB drive
- `nvme0n1` = internal SSD

IMPORTANT:
Never install Ventoy onto the internal SSD.

---

# Step 4 — Optional: Unmount USB

If the USB auto-mounted:

```bash
udisksctl unmount -b /dev/sda1
```

Unmount any additional mounted partitions if necessary.

---

# Step 5 — Install Ventoy

Run:

```bash
sudo ./Ventoy2Disk.sh -i /dev/sda
```

Example:
- `/dev/sda` = entire USB device
- NOT `/dev/sda1`

---

# Step 6 — Confirm Installation

Ventoy will display warnings similar to:

```text
ALL DATA ON THE DISK WILL BE LOST
```

Type:

```text
y
```

Then confirm again.

Ventoy will:
- erase the USB
- create a new partition table
- create Ventoy boot partitions

---

# Step 7 — Verify Installation

After completion:

```bash
lsblk -f
```

You should see:
- a large exFAT partition
- a small Ventoy boot partition

Example:

```text
sda
├─sda1 exfat
└─sda2 vfat
```

---

# Step 8 — Copy ISO Files

Mount the Ventoy partition normally.

Then simply copy ISO files:

```text
Rocky-9.iso
ubuntu-24.04.iso
debian.iso
```

No flashing required.

---

# Step 9 — Boot From USB

1. Reboot system
2. Enter BIOS/UEFI boot menu
3. Select USB device
4. Ventoy menu appears
5. Choose desired ISO

---

# Safely remove USB

```bash
udisksctl power-off -b /dev/sda
```
---

# Result

The USB becomes a reusable multi-boot toolkit suitable for:
- Linux installation
- Homelab work
- Recovery tools
- Server deployment
- Testing multiple operating systems
