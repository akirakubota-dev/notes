# LUKS Encrypted External Drive Setup

## What is LUKS?

LUKS (Linux Unified Key Setup) is the standard disk encryption system used on Linux.

It provides full-volume encryption, protecting data on a storage device with a passphrase.

Common uses include:

* Encrypted backups
* Portable external drives
* Secure storage of personal files
* Protection against data loss if a device is lost or stolen

## Warning

This procedure will erase all data on the target drive.

Verify the target device carefully before proceeding.

## Prerequisites

Install cryptsetup:

### Debian / Ubuntu

```bash id="h4qt6q"
sudo apt install cryptsetup
```

### Red Hat / Rocky Linux

```bash id="f0qepv"
sudo dnf install cryptsetup
```

Verify:

```bash id="d6p4lb"
cryptsetup --version
```

## Identify the Target Device

List storage devices:

```bash id="0az4ml"
lsblk -o NAME,SIZE,FSTYPE,TYPE,MOUNTPOINT,MODEL
```

Example:

```text id="dx0u8d"
sda      931.5G          disk  USB SSD
└─sda1   931.5G exfat    part  /media/user/Drive
```

In this example:

* `/dev/sda` = external SSD
* `/dev/nvme0n1` = internal system drive

Verify the device before continuing.

## Unmount Existing Partitions

```bash id="xshlkk"
sudo umount /dev/sda1
```

## Create a New GPT Partition Table

```bash id="hif6hs"
sudo parted /dev/sda --script mklabel gpt
```

Create a single partition:

```bash id="yslpng"
sudo parted /dev/sda --script mkpart primary 0% 100%
```

Verify:

```bash id="kvzn9z"
lsblk
```

## Create a LUKS Container

Encrypt the partition:

```bash id="h6pnna"
sudo cryptsetup luksFormat /dev/sda1
```

Confirm:

```text id="wzhv2l"
YES
```

Enter and verify a passphrase.

## Open the Encrypted Volume

Create a mapping:

```bash id="a0gm5v"
sudo cryptsetup open /dev/sda1 backup
```

Verify:

```bash id="5o1q9z"
lsblk
```

Example:

```text id="3qzhh7"
sda
└─sda1
  └─backup
```

## Create an ext4 Filesystem

Format the mapped device:

```bash id="g6t6xj"
sudo mkfs.ext4 -L backup /dev/mapper/backup
```

Verify:

```bash id="mjlwmm"
lsblk -f
```

## Create a Mount Point

```bash id="mfl3gi"
sudo mkdir -p /mnt/backup
```

Mount:

```bash id="8lxzql"
sudo mount /dev/mapper/backup /mnt/backup
```

Verify:

```bash id="d0f2ks"
df -h /mnt/backup
```

## Set Ownership

Allow the current user to write files:

```bash id="gc5fdo"
sudo chown -R "$USER:$USER" /mnt/backup
```

## Verify Write Access

```bash id="ik7mg4"
touch /mnt/backup/test.txt
ls -l /mnt/backup
rm /mnt/backup/test.txt
```

## Create Backup Directories

Example:

```bash id="n5n40v"
mkdir -p \
    /mnt/backup/archive \
    /mnt/backup/home \
    /mnt/backup/learning
```

## Daily Workflow

### Open the Drive

Connect the drive.

Open the LUKS container:

```bash id="ec7zq4"
sudo cryptsetup open /dev/sda1 backup
```

Mount:

```bash id="0m8vrw"
sudo mount /dev/mapper/backup /mnt/backup
```

Verify:

```bash id="lb16dz"
df -h /mnt/backup
```

### Use the Drive

Read or write files normally.

### Close the Drive

Unmount:

```bash id="ph8f2q"
sudo umount /mnt/backup
```

Close the encrypted mapping:

```bash id="wzyjpo"
sudo cryptsetup close backup
```

Verify:

```bash id="jn2wtj"
lsblk
```

Disconnect the drive.

## Result

The external drive is protected by LUKS encryption and can be safely used for backups and long-term storage.

