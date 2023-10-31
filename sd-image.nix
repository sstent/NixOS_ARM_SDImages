{ ... }: {
  nixpkgs.crossSystem.system = "armv7l-linux";
  imports = [
    <nixpkgs/nixos/modules/installer/sd-card/sd-image-armv7l-multiplatform.nix>
  ];
  # put your own configuration here, for example ssh keys:
  users.users.root.openssh.authorizedKeys.keys = [
     "ssh-ed25519 AAAAC3NzaC1lZDI1.... username@tld"
  ];
}
