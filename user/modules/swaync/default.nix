{
    services.swaync.enable = true;

    home.file.".config/swaync/" = {
        enable    = true;
        source    = ./swaync;
        recursive = true;
    };
}
