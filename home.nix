{ config, pkgs, ... }:

{
  home.username = "pl";
  home.homeDirectory = "/home/pl";

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    eza
    fzf
    jq
    ripgrep
    tree
    which
  ];

  programs.git = {
    enable = true;
    userName = "Pawel Lisewski";
    userEmail = "dev@palekiwi.com";
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''
      export PATH="$PATH:$HOME/bin:$HOME/.local/bin"
    '';

    shellAliases = {
      gu = "gitui";
    };
  };

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
