# nerdctl (full distribution)
- nerdctl: v1.4.0
- containerd: v1.7.1
- runc: v1.1.7
- CNI plugins: v1.3.0
- BuildKit: v0.11.6
- Stargz Snapshotter: v0.14.3
- imgcrypt: v1.1.7
- RootlessKit: v1.1.0
- slirp4netns: v1.2.0
- bypass4netns: v0.3.0
- fuse-overlayfs: v1.12
- containerd-fuse-overlayfs: v1.0.6
- Kubo (IPFS): v0.20.0
- Tini: v0.19.0
- buildg: v0.4.1

## License
- bin/slirp4netns:    [GNU GENERAL PUBLIC LICENSE, Version 2](https://github.com/rootless-containers/slirp4netns/blob/v1.2.0/COPYING)
- bin/fuse-overlayfs: [GNU GENERAL PUBLIC LICENSE, Version 2](https://github.com/containers/fuse-overlayfs/blob/v1.12/COPYING)
- bin/ipfs: [Combination of MIT-only license and dual MIT/Apache-2.0 license](https://github.com/ipfs/kubo/blob/v0.20.0/LICENSE)
- bin/{runc,bypass4netns,bypass4netnsd}: Apache License 2.0, statically linked with libseccomp ([LGPL 2.1](https://github.com/seccomp/libseccomp/blob/main/LICENSE), source code available at https://github.com/seccomp/libseccomp/)
- bin/tini: [MIT License](https://github.com/krallin/tini/blob/v0.19.0/LICENSE)
- Other files: [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)
