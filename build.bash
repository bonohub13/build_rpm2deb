#!/usr/bin/bash
echo "Total of rpm file(s) found to build:"
for file in `find /mnt/target/rpm_packages -type f | grep .rpm`; do
    echo "\t$file"
done
echo "\n------------------------------------\n"
for file in `find /mnt/target -type f | grep .rpm`; do
    echo "Preparing to build rpm package: $file"
    alien --scripts -d "$file"
    echo "$file successfully built!"
done
mv `ls . | grep .deb` /mnt/target/deb_packages
