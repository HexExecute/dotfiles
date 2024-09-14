{ pkgs, unstable, ... }: {
  home.packages = with pkgs; [ prismlauncher unstable.modrinth-app ferium ];
}
