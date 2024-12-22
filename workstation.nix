{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  name = "workstation";

  # List of packages to include in the shell
  buildInputs = [
    pkgs.kdenlive
    pkgs.kicad
    pkgs.handbrake
    pkgs.freecad
    pkgs.appimage-run
  ];

  # Optional: Set environment variables or additional configurations if needed
  shellHook = ''
    alias cura="appimage-run ~/appImages/cura.AppImage"
    echo "Welcome to the workstation shell environment!"
    echo "The following packages are available: kdenlive, kicad, handbrake, freecad, appimage-run, cura"

    echo "Applying custom TLP settings..."

    sudo tlp setconfig CPU_SCALING_GOVERNOR_ON_AC performance
    sudo tlp setconfig CPU_SCALING_GOVERNOR_ON_BAT balanced

    sudo tlp setconfig CPU_ENERGY_PERF_POLICY_ON_AC performance
    sudo tlp setconfig CPU_ENERGY_PERF_POLICY_ON_BAT performance

    sudo tlp setconfig CPU_MIN_PERF_ON_AC 0
    sudo tlp setconfig CPU_MAX_PERF_ON_AC 100
    sudo tlp setconfig CPU_MIN_PERF_ON_BAT 0
    sudo tlp setconfig CPU_MAX_PERF_ON_BAT 60

    echo "TLP settings applied."
  '';
}
