################################################################################
##                                                                            ##
##                     Configuration for the ZFS feature                      ##
##                                                                            ##
################################################################################

{ config, lib, pkgs, ... }:

let
  inherit (lib) mkDefault;
  jpc = import <nixpkgs-jpc> { inherit pkgs; };
in

{
  ############################################################################
  ##                                Services                                ##
  ############################################################################

  services = {
    zfs = {
      autoSnapshot.enable = true;

      autoScrub = {
        enable = true;
        interval = mkDefault "Sun, 13:00";
      };
    };
  };

  ############################################################################
  ##                            System packages                             ##
  ############################################################################

  environment.systemPackages = with pkgs; [
    # Utilities
    jpc.syncoid
  ];
}
