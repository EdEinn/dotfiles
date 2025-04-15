# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="random"

ZSH_THEME_RANDOM_CANDIDATES=( "cypher" "gnzh" "jnrowe" )

# CASE_SENSITIVE="true"

DISABLE_MAGIC_FUNCTIONS="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8

alias ls="eza --icons=always"

# unbind "C-h/j/k/l"
bindkey "^h" undefined-key
bindkey "^j" undefined-key
bindkey "^k" undefined-key
bindkey "^l" undefined-key


# Vulkan settings
export VULKAN_SDK=/Users/edein/VulkanSDK/macOS
export PATH=$VULKAN_SDK/bin:$PATH
export DYLD_LIBRARY_PATH=$VULKAN_SDK/lib:$DYLD_LIBRARY_PATH
export VK_ICD_FILENAMES=$VULKAN_SDK/share/vulkan/icd.d/MoltenVK_icd.json
export VK_LAYER_PATH=$VULKAN_SDK/share/vulkan/explicit_layer.d

export VK_ADD_LAYER_PATH=$VULKAN_SDK/share/vulkan/explicit_layer.d
export VK_DRIVER_FILES=$VULKAN_SDK/share/vulkan/icd.d/MoltenVK_icd.json


# Xcode(not installed)
# export PATH=$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin

# plugins
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# "Ctrl t" useage, "** <tab>" useage, "Ctrl r"useage, "Ctrl jk or np"
source <(fzf --zsh)

# Added by Windsurf
export PATH="/Users/edein/.codeium/windsurf/bin:$PATH"
