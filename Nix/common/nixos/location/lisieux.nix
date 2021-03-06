################################################################################
##                                                                            ##
##                         Configuration for Lisieux                          ##
##                                                                            ##
################################################################################

{ config, lib, pkgs, ... }:

{
  ############################################################################
  ##                          Location & Time Zone                          ##
  ############################################################################

  location = {
    latitude = 49.15;
    longitude = 0.23;
  };

  time.timeZone = "Europe/Paris";

  ############################################################################
  ##                     Network-specific configuration                     ##
  ############################################################################

  networking.hosts = {
    # Local machines (REDACTED)
  };
}
