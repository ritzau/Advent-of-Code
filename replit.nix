{ pkgs }: {
    deps = [
        pkgs.tree
        (pkgs.haskellPackages.ghcWithPackages (pkgs: [
            # Put your dependencies here!
        ]))
        pkgs.haskell-language-server
        pkgs.cabal-install
    ];
}