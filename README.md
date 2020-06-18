# Ubuntu_SELinux_PPA
This repository maintains 4 packages needed to enable SELinux on Ubuntu 18.04 Desktop in enforcing mode.

How to build source archive:
1. Prepare your source.
2. Execute dh_make --createorig : generate metadata.
3. Edit the metadata to match your requirement. (e.g. specify your distro code name, develop statement and your build rules)
4. Execute debuild -k"keyid" -S [-d] : build debian source archive. (-d option is for not checking dependency locally e.g. when you depend on your own PPA package.)
5. Execute dput to upload.

How to update and repackage your source:

