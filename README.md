# .dotfiles

Minimal pop-os dotfiles. These dotfiles work for the pop-os 24.04 LTS version.

## Notes

Not everything should be automated, some programs are better installed manually. I have a `POP_OS!` markdown file in my obsidian archive, I should give it a read and go over such apps.

Initially, I wanted to track my Zen Browser profile and COSMIC DE settings, but these can be messy and may break after multiple updates. So, for these two, we'll import them manually when migrating to another device.

## Setup & Usage

Assuming we start from a fresh install of pop-os.

1. Update `apt` and install essential packages

    ```shell
    sudo apt update && sudo apt install -y stow git curl wget
    ```

2. Clone the repository

    ```shell
    git clone https://github.com/Kefrov/.dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    ```

3. Run `install.sh`

    ```shell
    chmod +x install.sh
    ./install.sh
    ```

4. Stow gaming

    ```shell
    stow vim wezterm zsh
    stow -t ~/.var/app xournal
    ```
