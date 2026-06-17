#! /usr/bin/env fish

set profile (cat '/sys/firmware/acpi/platform_profile')

echo "{ text: $profile }"
