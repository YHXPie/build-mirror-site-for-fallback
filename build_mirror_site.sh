#!/bin/bash

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

dirUbuntu2604="ubuntu/cloud/resolute"
dirUbuntu2404="ubuntu/cloud/noble"
dirUbuntu2204="ubuntu/cloud/jammy"
dirDebian13="debian/cloud/trixie"
dirDebian12="debian/cloud/bookworm"
dirDebian11="debian/cloud/bullseye"
dirAlpine="alpine/releases/x86_64"
dirAlpineCloud="alpine/cloud/x86_64"
dirRocky10="rockylinux/10/images/x86_64"
dirRocky9="rockylinux/9/images/x86_64"
dirRocky8="rockylinux/8/images/x86_64"

urlUbuntu2604="https://cloud-images.ubuntu.com/resolute/current"
urlUbuntu2404="https://cloud-images.ubuntu.com/noble/current"
urlUbuntu2204="https://cloud-images.ubuntu.com/jammy/current"
urlDebian13="https://cloud.debian.org/images/cloud/trixie/latest"
urlDebian12="https://cloud.debian.org/images/cloud/bookworm/latest"
urlDebian11="https://cloud.debian.org/images/cloud/bullseye/latest"
urlAlpine="https://dl-cdn.alpinelinux.org/alpine/latest-stable/releases/x86_64"
urlAlpineCloud="https://dl-cdn.alpinelinux.org/alpine/latest-stable/releases/cloud"
urlRocky10="https://dl.rockylinux.org/pub/rocky/10/images/x86_64"
urlRocky9="https://dl.rockylinux.org/pub/rocky/9/images/x86_64"
urlRocky8="https://dl.rockylinux.org/pub/rocky/8/images/x86_64"

echo -e "${GREEN} >>> 开始在当前目录构建站点结构...${NC}"

mkdir -p "$dirUbuntu2604"
mkdir -p "$dirUbuntu2404"
mkdir -p "$dirUbuntu2204"
mkdir -p "$dirDebian13"
mkdir -p "$dirDebian12"
mkdir -p "$dirDebian11"
mkdir -p "$dirAlpine"
mkdir -p "$dirAlpineCloud"
mkdir -p "$dirRocky10"
mkdir -p "$dirRocky9"
mkdir -p "$dirRocky8"

# 拉取 Ubuntu 26.04 (Resolute) Cloud Image
echo -e "${YELLOW} >>> 正在拉取 Ubuntu 26.04 Cloud Image 镜像文件...${NC}"
wget -c -q --show-progress "${urlUbuntu2604}/resolute-server-cloudimg-amd64.img" -O "${dirUbuntu2604}/resolute-server-cloudimg-amd64.img"
wget -c -q --show-progress "${urlUbuntu2604}/resolute-server-cloudimg-amd64.ova" -O "${dirUbuntu2604}/resolute-server-cloudimg-amd64.ova"
wget -c -q --show-progress "${urlUbuntu2604}/resolute-server-cloudimg-amd64.vmdk" -O "${dirUbuntu2604}/resolute-server-cloudimg-amd64.vmdk"
wget -c -q --show-progress "${urlUbuntu2604}/resolute-server-cloudimg-amd64.tar.xz" -O "${dirUbuntu2604}/resolute-server-cloudimg-amd64.tar.xz"
wget -c -q --show-progress "${urlUbuntu2604}/resolute-server-cloudimg-amd64-root.tar.xz" -O "${dirUbuntu2604}/resolute-server-cloudimg-amd64-root.tar.xz"
wget -c -q --show-progress "${urlUbuntu2604}/resolute-server-cloudimg-amd64-lxd.tar.xz" -O "${dirUbuntu2604}/resolute-server-cloudimg-amd64-lxd.tar.xz"
echo -e "${YELLOW} >>> 正在拉取 Ubuntu 26.04 Image 校验文件及其它元数据...${NC}"
wget -c -q --show-progress "${urlUbuntu2604}/SHA256SUMS" -O "${dirUbuntu2604}/SHA256SUMS"
wget -c -q --show-progress "${urlUbuntu2604}/SHA256SUMS.gpg" -O "${dirUbuntu2604}/SHA256SUMS.gpg"
wget -c -q --show-progress "${urlUbuntu2604}/MD5SUMS" -O "${dirUbuntu2604}/MD5SUMS"
wget -c -q --show-progress "${urlUbuntu2604}/MD5SUMS.gpg" -O "${dirUbuntu2604}/MD5SUMS.gpg"
wget -c -q --show-progress "${urlUbuntu2604}/resolute-server-cloudimg-amd64.manifest" -O "${dirUbuntu2604}/resolute-server-cloudimg-amd64.manifest"
wget -c -q --show-progress "${urlUbuntu2604}/resolute-server-cloudimg-root.manifest" -O "${dirUbuntu2604}/resolute-server-cloudimg-root.manifest"
wget -c -q --show-progress "${urlUbuntu2604}/resolute-server-cloudimg-amd64.release.*.image_changelog.json" -O "${dirUbuntu2604}/resolute-server-cloudimg-amd64.image_changelog.json"

# 拉取 Ubuntu 24.04 (Noble) Cloud Image
echo -e "${YELLOW} >>> 正在拉取 Ubuntu 24.04 Cloud Image 镜像文件...${NC}"
wget -c -q --show-progress "${urlUbuntu2404}/noble-server-cloudimg-amd64.img" -O "${dirUbuntu2404}/noble-server-cloudimg-amd64.img"
wget -c -q --show-progress "${urlUbuntu2404}/noble-server-cloudimg-amd64.ova" -O "${dirUbuntu2404}/noble-server-cloudimg-amd64.ova"
wget -c -q --show-progress "${urlUbuntu2404}/noble-server-cloudimg-amd64.vmdk" -O "${dirUbuntu2404}/noble-server-cloudimg-amd64.vmdk"
wget -c -q --show-progress "${urlUbuntu2404}/noble-server-cloudimg-amd64.tar.xz" -O "${dirUbuntu2404}/noble-server-cloudimg-amd64.tar.xz"
wget -c -q --show-progress "${urlUbuntu2404}/noble-server-cloudimg-amd64-root.tar.xz" -O "${dirUbuntu2404}/noble-server-cloudimg-amd64-root.tar.xz"
wget -c -q --show-progress "${urlUbuntu2404}/noble-server-cloudimg-amd64-lxd.tar.xz" -O "${dirUbuntu2404}/noble-server-cloudimg-amd64-lxd.tar.xz"
echo -e "${YELLOW} >>> 正在拉取 Ubuntu 24.04 Image 校验文件及其它元数据...${NC}"
wget -c -q --show-progress "${urlUbuntu2404}/SHA256SUMS" -O "${dirUbuntu2404}/SHA256SUMS"
wget -c -q --show-progress "${urlUbuntu2404}/SHA256SUMS.gpg" -O "${dirUbuntu2404}/SHA256SUMS.gpg"
wget -c -q --show-progress "${urlUbuntu2404}/MD5SUMS" -O "${dirUbuntu2404}/MD5SUMS"
wget -c -q --show-progress "${urlUbuntu2404}/MD5SUMS.gpg" -O "${dirUbuntu2404}/MD5SUMS.gpg"
wget -c -q --show-progress "${urlUbuntu2404}/noble-server-cloudimg-amd64.manifest" -O "${dirUbuntu2404}/noble-server-cloudimg-amd64.manifest"
wget -c -q --show-progress "${urlUbuntu2404}/noble-server-cloudimg-root.manifest" -O "${dirUbuntu2404}/noble-server-cloudimg-root.manifest"
wget -c -q --show-progress "${urlUbuntu2404}/noble-server-cloudimg-amd64.release.*.image_changelog.json" -O "${dirUbuntu2404}/noble-server-cloudimg-amd64.image_changelog.json"

# 拉取 Ubuntu 22.04 (Jammy) Cloud Image
echo -e "${YELLOW} >>> 正在拉取 Ubuntu 22.04 Cloud Image 镜像文件...${NC}"
wget -c -q --show-progress "${urlUbuntu2204}/jammy-server-cloudimg-amd64.img" -O "${dirUbuntu2204}/jammy-server-cloudimg-amd64.img"
wget -c -q --show-progress "${urlUbuntu2204}/jammy-server-cloudimg-amd64.ova" -O "${dirUbuntu2204}/jammy-server-cloudimg-amd64.ova"
wget -c -q --show-progress "${urlUbuntu2204}/jammy-server-cloudimg-amd64.vmdk" -O "${dirUbuntu2204}/jammy-server-cloudimg-amd64.vmdk"
wget -c -q --show-progress "${urlUbuntu2204}/jammy-server-cloudimg-amd64.tar.xz" -O "${dirUbuntu2204}/jammy-server-cloudimg-amd64.tar.xz"
wget -c -q --show-progress "${urlUbuntu2204}/jammy-server-cloudimg-amd64-root.tar.xz" -O "${dirUbuntu2204}/jammy-server-cloudimg-amd64-root.tar.xz"
wget -c -q --show-progress "${urlUbuntu2204}/jammy-server-cloudimg-amd64-lxd.tar.xz" -O "${dirUbuntu2204}/jammy-server-cloudimg-amd64-lxd.tar.xz"
echo -e "${YELLOW} >>> 正在拉取 Ubuntu 22.04 Image 校验文件及其它元数据...${NC}"
wget -c -q --show-progress "${urlUbuntu2204}/SHA256SUMS" -O "${dirUbuntu2204}/SHA256SUMS"
wget -c -q --show-progress "${urlUbuntu2204}/SHA256SUMS.gpg" -O "${dirUbuntu2204}/SHA256SUMS.gpg"
wget -c -q --show-progress "${urlUbuntu2204}/MD5SUMS" -O "${dirUbuntu2204}/MD5SUMS"
wget -c -q --show-progress "${urlUbuntu2204}/MD5SUMS.gpg" -O "${dirUbuntu2204}/MD5SUMS.gpg"
wget -c -q --show-progress "${urlUbuntu2204}/jammy-server-cloudimg-amd64.manifest" -O "${dirUbuntu2204}/jammy-server-cloudimg-amd64.manifest"
wget -c -q --show-progress "${urlUbuntu2204}/jammy-server-cloudimg-root.manifest" -O "${dirUbuntu2204}/jammy-server-cloudimg-root.manifest"
wget -c -q --show-progress "${urlUbuntu2204}/jammy-server-cloudimg-amd64.release.*.image_changelog.json" -O "${dirUbuntu2204}/jammy-server-cloudimg-amd64.image_changelog.json"

# 拉取 Debian 13 (Trixie) Cloud Image
echo -e "${YELLOW} >>> 正在拉取 Debian 13 Cloud Image 镜像文件...${NC}"
wget -c -q --show-progress "${urlDebian13}/debian-13-generic-amd64.qcow2" -O "${dirDebian13}/debian-13-generic-amd64.qcow2"
#wget -c -q --show-progress "${urlDebian13}/debian-13-generic-amd64.raw" -O "${dirDebian13}/debian-13-generic-amd64.raw"
wget -c -q --show-progress "${urlDebian13}/debian-13-generic-amd64.tar.xz" -O "${dirDebian13}/debian-13-generic-amd64.tar.xz"
wget -c -q --show-progress "${urlDebian13}/debian-13-genericcloud-amd64.qcow2" -O "${dirDebian13}/debian-13-genericcloud-amd64.qcow2"
#wget -c -q --show-progress "${urlDebian13}/debian-13-genericcloud-amd64.raw" -O "${dirDebian13}/debian-13-genericcloud-amd64.raw"
wget -c -q --show-progress "h${urlDebian13}/debian-13-genericcloud-amd64.tar.xz" -O "${dirDebian13}/debian-13-genericcloud-amd64.tar.xz"
echo -e "${YELLOW} >>> 正在拉取 Debian 13 Cloud Image 校验文件及其它元数据...${NC}"
wget -c -q --show-progress "${urlDebian13}/SHA512SUMS" -O "${dirDebian13}/SHA512SUMS"
wget -c -q --show-progress "${urlDebian13}/debian-13-generic-amd64.json" -O "${dirDebian13}/debian-13-generic-amd64.json"
wget -c -q --show-progress "${urlDebian13}/debian-13-genericcloud-amd64.json" -O "${dirDebian13}/debian-13-genericcloud-amd64.json"

# 拉取 Debian 12 (Bookworm) Cloud Image
echo -e "${YELLOW} >>> 正在拉取 Debian 12 Cloud Image 镜像文件...${NC}"
wget -c -q --show-progress "${urlDebian12}/debian-12-generic-amd64.qcow2" -O "${dirDebian12}/debian-12-generic-amd64.qcow2"
#wget -c -q --show-progress "${urlDebian12}/debian-12-generic-amd64.raw" -O "${dirDebian12}/debian-12-generic-amd64.raw"
wget -c -q --show-progress "${urlDebian12}/debian-12-generic-amd64.tar.xz" -O "${dirDebian12}/debian-12-generic-amd64.tar.xz"
wget -c -q --show-progress "${urlDebian12}/debian-12-genericcloud-amd64.qcow2" -O "${dirDebian12}/debian-12-genericcloud-amd64.qcow2"
#wget -c -q --show-progress "${urlDebian12}/debian-12-genericcloud-amd64.raw" -O "${dirDebian12}/debian-12-genericcloud-amd64.raw"
wget -c -q --show-progress "h${urlDebian12}/debian-12-genericcloud-amd64.tar.xz" -O "${dirDebian12}/debian-12-genericcloud-amd64.tar.xz"
echo -e "${YELLOW} >>> 正在拉取 Debian 12 Cloud Image 校验文件及其它元数据...${NC}"
wget -c -q --show-progress "${urlDebian12}/SHA512SUMS" -O "${dirDebian12}/SHA512SUMS"
wget -c -q --show-progress "${urlDebian12}/debian-12-generic-amd64.json" -O "${dirDebian12}/debian-12-generic-amd64.json"
wget -c -q --show-progress "${urlDebian12}/debian-12-genericcloud-amd64.json" -O "${dirDebian12}/debian-12-genericcloud-amd64.json"

# 拉取 Debian 11 (Bullseye) Cloud Image
echo -e "${YELLOW} >>> 正在拉取 Debian 11 Cloud Image 镜像文件...${NC}"
wget -c -q --show-progress "${urlDebian11}/debian-11-generic-amd64.qcow2" -O "${dirDebian11}/debian-11-generic-amd64.qcow2"
#wget -c -q --show-progress "${urlDebian11}/debian-11-generic-amd64.raw" -O "${dirDebian11}/debian-11-generic-amd64.raw"
wget -c -q --show-progress "${urlDebian11}/debian-11-generic-amd64.tar.xz" -O "${dirDebian11}/debian-11-generic-amd64.tar.xz"
wget -c -q --show-progress "${urlDebian11}/debian-11-genericcloud-amd64.qcow2" -O "${dirDebian11}/debian-11-genericcloud-amd64.qcow2"
#wget -c -q --show-progress "${urlDebian11}/debian-11-genericcloud-amd64.raw" -O "${dirDebian11}/debian-11-genericcloud-amd64.raw"
wget -c -q --show-progress "h${urlDebian11}/debian-11-genericcloud-amd64.tar.xz" -O "${dirDebian11}/debian-11-genericcloud-amd64.tar.xz"
echo -e "${YELLOW} >>> 正在拉取 Debian 11 Cloud Image 校验文件及其它元数据...${NC}"
wget -c -q --show-progress "${urlDebian11}/SHA512SUMS" -O "${dirDebian11}/SHA512SUMS"
wget -c -q --show-progress "${urlDebian11}/debian-11-generic-amd64.json" -O "${dirDebian11}/debian-11-generic-amd64.json"
wget -c -q --show-progress "${urlDebian11}/debian-11-genericcloud-amd64.json" -O "${dirDebian11}/debian-11-genericcloud-amd64.json"

# 拉取 Alpine Linux Cloud Image
LatestAlpineCloud_BiosCloudinit=$(curl -sL "${urlAlpine}Cloud" | grep -oE 'generic_alpine-[0-9.]+-x86_64-bios-cloudinit-r[0-9]+\.qcow2' | sort -V | tail -n 1)
LatestAlpineCloud_UefiCloudinit=$(curl -sL "${urlAlpine}Cloud" | grep -oE 'generic_alpine-[0-9.]+-x86_64-uefi-cloudinit-r[0-9]+\.qcow2' | sort -V | tail -n 1)
LatestAlpineCloud_BiosTiny=$(curl -sL "${urlAlpine}Cloud" | grep -oE 'generic_alpine-[0-9.]+-x86_64-uefi-tiny-r[0-9]+\.qcow2' | sort -V | tail -n 1)
LatestAlpineCloud_UefiTiny=$(curl -sL "${urlAlpine}Cloud" | grep -oE 'generic_alpine-[0-9.]+-x86_64-uefi-tiny-r[0-9]+\.qcow2' | sort -V | tail -n 1)
echo -e "${YELLOW} >>> 正在拉取 Alpine Cloud Image 镜像文件...${NC}"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_BiosCloudinit}" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-bios-cloudinit.qcow2"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_UefiCloudinit}" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-uefi-cloudinit.qcow2"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_BiosTiny}" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-uefi-tiny.qcow2"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_UefiTiny}" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-uefi-tiny.qcow2"
echo -e "${YELLOW} >>> 正在拉取 Alpine Cloud Image 校验文件及其它元数据...${NC}"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_BiosCloudinit}.qcow2.asc" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-bios-cloudinit.qcow2.asc"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_BiosCloudinit}.qcow2.sha512" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-bios-cloudinit.qcow2.sha512"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_BiosCloudinit}.qcow2.yaml" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-bios-cloudinit.qcow2.yaml"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_BiosCloudinit}.qcow2.yaml.sha512" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-bios-cloudinit.qcow2.yaml.sha512"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_UefiCloudinit}.qcow2.asc" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-uefi-cloudinit.qcow2.asc"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_UefiCloudinit}.qcow2.sha512" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-uefi-cloudinit.qcow2.sha512"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_UefiCloudinit}0.qcow2.yaml" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-uefi-cloudinit.qcow2.yaml"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_UefiCloudinit}.qcow2.yaml.sha512" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-uefi-cloudinit.qcow2.yaml.sha512"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_BiosTiny}.qcow2.asc" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-bios-tiny.qcow2.asc"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_BiosTiny}.qcow2.sha512" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-bios-tiny.qcow2.sha512"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_BiosTiny}.qcow2.yaml" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-bios-tiny.qcow2.yaml"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_BiosTiny}.qcow2.yaml.sha512" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-bios-tiny.qcow2.yaml.sha512"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_UefiTiny}.qcow2.asc" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-uefi-tiny.qcow2.asc"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_UefiTiny}.sha512" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-uefi-tiny.qcow2.sha512"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_UefiTiny}.yaml" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-uefi-tiny.qcow2.yaml"
wget -c -q --show-progress "${urlAlpineCloud}/${LatestAlpineCloud_UefiTiny}.qcow2.yaml.sha512" -O "${dirAlpineCloud}/generic_alpine-latest_stable-x86_64-uefi-tiny.qcow2.yaml.sha512"

# 拉取 Alpine Linux Image
LatestAlpine_Standard=$(curl -sL "$urlAlpine" | grep -oE 'alpine-standard-[0-9.]+-x86_64\.iso' | sort -V | tail -n 1)
LatestAlpine_Virt=$(curl -sL "$urlAlpine" | grep -oE 'alpine-virt-[0-9.]+-x86_64\.iso' | sort -V | tail -n 1)
echo -e "${YELLOW} >>> 正在拉取 Alpine Linux Image 镜像文件...${NC}"
wget -c -q --show-progress "${urlAlpine}/${LatestAlpine_Standard}" -O "${dirAlpine}/alpine-standard-latest_stable-x86_64.iso"
wget -c -q --show-progress "${urlAlpine}/${LatestAlpine_Virt}" -O "${dirAlpine}/alpine-virt-latest_stable-x86_64.iso"
echo -e "${YELLOW} >>> 正在拉取 Alpine Linux Image 校验文件及其它元数据...${NC}"
wget -c -q --show-progress "${urlAlpine}/{$LatestAlpine_Standard}.asc" -O "${dirAlpine}/alpine-standard-latest_stable-x86_64.iso.asc"
wget -c -q --show-progress "${urlAlpine}/{$LatestAlpine_Standard}.sha256" -O "${dirAlpine}/alpine-standard-latest_stable-x86_64.iso.sha256"
wget -c -q --show-progress "${urlAlpine}/{$LatestAlpine_Standard}.sha512" -O "${dirAlpine}/alpine-standard-latest_stable-x86_64.iso.sha512"
wget -c -q --show-progress "${urlAlpine}/{$LatestAlpine_Virt}.asc" -O "${dirAlpine}/alpine-virt-latest_stable-x86_64.iso.asc"
wget -c -q --show-progress "${urlAlpine}/{$LatestAlpine_Virt}.sha256" -O "${dirAlpine}/alpine-virt-latest_stable-x86_64.iso.sha256"
wget -c -q --show-progress "${urlAlpine}/{$LatestAlpine_Virt}.sha512" -O "${dirAlpine}/alpine-virt-latest_stable-x86_64.iso.sha512"

# 拉取 Rocky Linux 10
echo -e "${YELLOW} >>> 正在拉取 Rocky Linux 10 Cloud Image 镜像文件...${NC}"
wget -c -q --show-progress "${urlRocky10}/Rocky-10-GenericCloud-Base.latest.x86_64.qcow2" -O "${dirRocky10}/Rocky-10-GenericCloud-Base.latest.x86_64.qcow2"
wget -c -q --show-progress "${urlRocky10}/Rocky-10-GenericCloud-LVM.latest.x86_64.qcow2" -O "${dirRocky10}/Rocky-10-GenericCloud-Base.LVM.x86_64.qcow2"
echo -e "${YELLOW} >>> 正在拉取 Rocky Linux 10 Cloud Image 校验文件及其它元数据...${NC}"
wget -c -q --show-progress "${urlRocky10}/Rocky-10-GenericCloud-Base.latest.x86_64.qcow2.CHECKSUM" -O "${dirRocky10}/Rocky-10-GenericCloud-Base.latest.x86_64.qcow2.CHECKSUM"
wget -c -q --show-progress "${urlRocky10}/Rocky-10-GenericCloud-LVM.latest.x86_64.qcow2.CHECKSUM" -O "${dirRocky10}/Rocky-10-GenericCloud-Base.LVM.x86_64.qcow2.CHECKSUM"
wget -c -q --show-progress "${urlRocky10}/CHECKSUM" -O "${dirRocky10}/CHECKSUM"
wget -c -q --show-progress "${urlRocky10}/CHECKSUM.asc" -O "${dirRocky10}/CHECKSUM.asc"

# 拉取 Rocky Linux 9
echo -e "${YELLOW} >>> 正在拉取 Rocky Linux 9 Cloud Image 镜像文件...${NC}"
wget -c -q --show-progress "${urlRocky9}/Rocky-9-GenericCloud-Base.latest.x86_64.qcow2" -O "${dirRocky9}/Rocky-9-GenericCloud-Base.latest.x86_64.qcow2"
wget -c -q --show-progress "${urlRocky9}/Rocky-9-GenericCloud-LVM.latest.x86_64.qcow2" -O "${dirRocky9}/Rocky-9-GenericCloud-Base.LVM.x86_64.qcow2"
echo -e "${YELLOW} >>> 正在拉取 Rocky Linux 9 Cloud Image 校验文件及其它元数据...${NC}"
wget -c -q --show-progress "${urlRocky9}/Rocky-9-GenericCloud-Base.latest.x86_64.qcow2.CHECKSUM" -O "${dirRocky9}/Rocky-9-GenericCloud-Base.latest.x86_64.qcow2.CHECKSUM"
wget -c -q --show-progress "${urlRocky9}/Rocky-9-GenericCloud-LVM.latest.x86_64.qcow2.CHECKSUM" -O "${dirRocky9}/Rocky-9-GenericCloud-Base.LVM.x86_64.qcow2.CHECKSUM"
wget -c -q --show-progress "${urlRocky9}/CHECKSUM" -O "${dirRocky9}/CHECKSUM"
wget -c -q --show-progress "${urlRocky9}/CHECKSUM.asc" -O "${dirRocky9}/CHECKSUM.asc"

# 拉取 Rocky Linux 8
echo -e "${YELLOW} >>> 正在拉取 Rocky Linux 8 Cloud Image 镜像文件...${NC}"
wget -c -q --show-progress "${urlRocky8}/Rocky-8-GenericCloud-Base.latest.x86_64.qcow2" -O "${dirRocky8}/Rocky-8-GenericCloud-Base.latest.x86_64.qcow2"
wget -c -q --show-progress "${urlRocky8}/Rocky-8-GenericCloud-LVM.latest.x86_64.qcow2" -O "${dirRocky8}/Rocky-8-GenericCloud-Base.LVM.x86_64.qcow2"
echo -e "${YELLOW} >>> 正在拉取 Rocky Linux 8 Cloud Image 校验文件及其它元数据...${NC}"
wget -c -q --show-progress "${urlRocky8}/Rocky-8-GenericCloud-Base.latest.x86_64.qcow2.CHECKSUM" -O "${dirRocky8}/Rocky-8-GenericCloud-Base.latest.x86_64.qcow2.CHECKSUM"
wget -c -q --show-progress "${urlRocky8}/Rocky-8-GenericCloud-LVM.latest.x86_64.qcow2.CHECKSUM" -O "${dirRocky8}/Rocky-8-GenericCloud-Base.LVM.x86_64.qcow2.CHECKSUM"
wget -c -q --show-progress "${urlRocky8}/CHECKSUM" -O "${dirRocky8}/CHECKSUM"
wget -c -q --show-progress "${urlRocky8}/CHECKSUM.asc" -O "${dirRocky8}/CHECKSUM.asc"

# 生成 Apache2 站点伪装头尾文件
echo -e "${YELLOW} >>> 正在生成 HEADER.html 和 README.html...${NC}"

cat << 'EOF' > HEADER.html
<!DOCTYPE html>
<html>
<head>
    <title>Open Source Software Mirror</title>
    <style>
        body { font-family: "Courier New", Courier, monospace; background-color: #ffffff; color: #000000; }
        h1 { color: #333333; }
        .notice { background-color: #f8f9fa; border-left: 4px solid #007bff; padding: 10px; margin-bottom: 20px; }
    </style>
</head>
<body>
    <h1>Index of /</h1>
    <div class="notice">
        <strong>Welcome to the Open Source Software Mirror.</strong><br>
        This mirror is synchronized daily directly from upstream servers. 
    </div>
    <hr>
EOF

cat << 'EOF' > README.html
    <hr>
    <p><em>Notice: This server is provided for educational, research, and non-commercial purposes. Bandwidth is strictly limited to 2MB/s per connection to ensure fair usage.</em></p>
    <p><em>If you encounter any synchronization issues, please report them to the system administrator.</em></p>
</body>
</html>
EOF

echo -e "${GREEN} >>> 数据构建完成。${NC}"