{ pkgs }: {
    deps = [
        pkgs.pkgconfig
        pkgs.docker
        pkgs.go_1_17
        pkgs.gopls
    ];
}