{ pkgs, ... }: {
  home.packages = with pkgs; [ ani-cli zoxide bluetui iamb fzf ];
}
