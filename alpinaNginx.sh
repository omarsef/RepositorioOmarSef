#!/bin/sh
virt-install \
--name alpinaNginx \
--ram 256 \
--disk path=/var/lib/libvirt/images/alpinaNginx.qcow2,size=8 \
--vcpus 1 \
--os-type linux \
--os-variant generic \
--network bridge:virbr0,model=virtio \
--graphics none \
--console pty,target_type=serial \
--cdrom /var/lib/libvirt/boot/alpine-virt-3.7.0-x86_64.iso

