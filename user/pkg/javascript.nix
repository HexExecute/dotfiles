{ pkgs, ... }: {
  home.packages = with pkgs; [ bun ];
  # home.packages = with pkgs; [ nodejs_22 bun ]; 
}
