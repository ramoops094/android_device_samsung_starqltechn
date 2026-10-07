#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2016 The CyanogenMod Project
# SPDX-FileCopyrightText: 2017-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)
from extract_utils.fixups_lib import (
    lib_fixups,
    lib_fixups_user_type,
)
from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

# Same-SoC reference (lge sdm845, lineage-23.2) imports the CAF tree
# so vendor prebuilt deps resolve instead of colliding.
namespace_imports = [
    'hardware/qcom-caf/sdm845',
    'hardware/samsung',
    'vendor/qcom/opensource/display',
]


def lib_fixup_vendor_suffix(lib: str, partition: str, *args, **kwargs):
    return f'{lib}_{partition}' if partition == 'vendor' else None


lib_fixups: lib_fixups_user_type = {
    **lib_fixups,
}

blob_fixups: blob_fixups_user_type = {
    'product/etc/permissions/vendor.qti.hardware.data.connection-V1.1-java.xml': blob_fixup()
        .regex_replace('version="2.0"', 'version="1.0"'),
    'vendor/bin/hw/android.hardware.health@2.0-service.samsung': blob_fixup()
        .replace_needed('libutils.so', 'libutils-v30.so'),
    'vendor/lib/libsensorlistener.so': blob_fixup()
        .add_needed('libshim_sensorndkbridge.so'),
    'vendor/lib64/libsensorlistener.so': blob_fixup()
        .add_needed('libshim_sensorndkbridge.so'),
    (
        'vendor/lib/libsec-ril.so',
        'vendor/lib/libsec-ril-dsds.so',
        'vendor/lib64/libsec-ril.so',
        'vendor/lib64/libsec-ril-dsds.so',
    ): blob_fixup()
        .replace_needed('libcutils.so', 'libcutils-v29.so')
        .binary_regex_replace(b'ril.dds.call.slotid', b'vendor.calls.slotid\x00\x00'),
    'vendor/lib64/hw/gatekeeper.mdfpp.so': blob_fixup()
        .replace_needed('libcrypto.so', 'libcrypto-v29.so'),
    (
        'vendor/lib/libskeymaster3device.so',
        'vendor/lib64/libskeymaster3device.so',
    ): blob_fixup()
        .replace_needed('libcrypto.so', 'libcrypto-v29.so')
        .replace_needed('libkeymaster_portable.so', 'libkeymaster_portable-v29.so')
        .replace_needed('libpuresoftkeymasterdevice.so', 'libpuresoftkeymasterdevice-v29.so')
        .replace_needed('libsoftkeymasterdevice.so', 'libsoftkeymasterdevice-v29.so'),
    'vendor/bin/pm-service': blob_fixup()
        .add_needed('libutils-v33.so'),
}  # fmt: skip

module = ExtractUtilsModule(
    'starqltechn',
    'samsung',
    blob_fixups=blob_fixups,
    lib_fixups=lib_fixups,
    namespace_imports=namespace_imports,
)

if __name__ == '__main__':
    utils = ExtractUtils.device(module)
    utils.run()
