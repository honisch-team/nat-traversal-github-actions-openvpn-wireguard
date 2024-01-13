#!/bin/bash
bash ./build/github_build_helper.sh install-build-tools vmw Linux build
curl -L https://archive.org/download/en_windows_7_enterprise_with_sp1_x86_dvd_u_677710_202006/en_windows_7_enterprise_with_sp1_x86_dvd_u_677710.iso -o ./install-media/install.iso