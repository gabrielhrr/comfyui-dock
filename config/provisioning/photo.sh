#!/bin/bash

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/comfyui/main/config/provisioning/default.sh

# Packages are installed after nodes so we can fix them...

#DEFAULT_WORKFLOW="https://..."

APT_PACKAGES=(
    #"package-1"
    #"package-2"
)

PIP_PACKAGES=(
    "insightface"
    "open_clip_torch"
    "matplotlib"
    "scikit-learn"
    "gguf"
    "openai"
    "accelerate"
    "pyOpenSSL"
    "facexlib"
    "webcolors"
    "toml"
    "scikit-image"
    "piexif"
    "opencv-python-headless"
    "scipy>=1.11.4"
    "numpy<2"
    "dill"
    "diffusers"
    "clip_interrogator>=0.6.0"
    "lark"
    "onnxruntime"
    "opencv-python"
    "sentencepiece"
    "spandrel"
    "peft"
    "torchvision"
    "huggingface_hub"
    "Image"
    "einops"
    "timm>=1.0.10"
    "torch"
    "pillow>=10.3.0"
    "color-matcher"
    "mss"
)

NODES=(
    "https://github.com/ltdrdata/ComfyUI-Manager"
    "https://github.com/cubiq/ComfyUI_essentials"
    "https://github.com/WASasquatch/was-node-suite-comfyui"
    "https://github.com/Fannovel16/comfyui_controlnet_aux"
    "https://github.com/ramyma/A8R8_ComfyUI_nodes.git"
    "https://github.com/ltdrdata/ComfyUI-Impact-Pack"
    "https://github.com/ltdrdata/ComfyUI-Impact-Subpack"
    "https://github.com/yolain/ComfyUI-Easy-Use"
    "https://github.com/Layer-norm/comfyui-lama-remover"
    "https://github.com/john-mnz/ComfyUI-Inspyrenet-Rembg"
    "https://github.com/gseth/ControlAltAI-Nodes"
    "https://github.com/VykosX/ControlFlowUtils"
    "https://github.com/chflame163/ComfyUI_LayerStyle"
    "https://github.com/huchenlei/ComfyUI-IC-Light-Native"
    "https://github.com/kijai/ComfyUI-IC-Light"
    "https://github.com/jiaxiangc/ComfyUI-ResAdapter"
    "https://github.com/kijai/ComfyUI-KJNodes"
    "https://github.com/city96/ComfyUI-GGUF"
    "https://github.com/TinyTerra/ComfyUI_tinyterraNodes"
    "https://github.com/lrzjason/Comfyui-In-Context-Lora-Utils"
    "https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes"
    "https://github.com/pythongosssss/ComfyUI-Custom-Scripts"
    "https://github.com/rgthree/rgthree-comfy"
    "https://github.com/PramaLLC/BEN2_ComfyUI.git"
    #"https://github.com/krich-cto/ComfyUI-Flow-Control"
)

CHECKPOINT_MODELS=(
    "https://huggingface.co/RunDiffusion/Juggernaut-XI-v11/resolve/main/Juggernaut-XI-byRunDiffusion.safetensors?download=true|"
    "https://huggingface.co/moiu2998/mymo/resolve/main/realisticVisionV60B1_v51VAE.safetensors?download=true|"
    )

UNET_MODELS=(
"https://huggingface.co/jackzheng/flux-fill-FP8/resolve/main/fluxFillFP8_v10.safetensors?download=true|"
"https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/flux1-dev.safetensors?download=true|FLUX.1-dev"
)

LORA_MODELS=(
    #"https://civitai.com/api/download/models/16576"
    "https://huggingface.co/xiaozaa/catvton-flux-lora-alpha/resolve/main/pytorch_lora_weights.safetensors|CatVitOnLora.safetensors"
    "https://huggingface.co/alimama-creative/FLUX.1-Turbo-Alpha/resolve/main/diffusion_pytorch_model.safetensors|FLUX.1-Turbo-Alpha.safetensors"
)

VAE_MODELS=()

FLUX_VAE_MODELS=(
    "https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/vae/diffusion_pytorch_model.safetensors|ae.sft"
)

SEGFORMER_B3_CLOTHES=(
    "https://huggingface.co/sayeed99/segformer_b3_clothes/resolve/main/model.safetensors|segformer_b3_clothes.safetensors"
)

CLIP_MODELS=(
    "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors|"
    "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors|"
)

CLIP_VISION=(
    "https://huggingface.co/google/siglip-so400m-patch14-384/resolve/main/model.safetensors|siglip-so400m-patch14-384.safetensors"
)

ESRGAN_MODELS=(
   "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth|"
)

CONTROLNET_MODELS=(
    "https://huggingface.co/InstantX/FLUX.1-dev-Controlnet-Union/resolve/main/diffusion_pytorch_model.safetensors?download=true|FLUX.1-dev-Controlnet-Unio.safetensors"
    "https://huggingface.co/brad-twinkl/controlnet-union-sdxl-1.0-promax/resolve/main/diffusion_pytorch_model.safetensors?download=true|controlnet-union-sdxl-1.0-promax.safetensors"
)
EMBEDDINGS=(
"https://civitai.com/models/72437/baddream-unrealisticdream-negative-embeddings|"
)

STYLE_MODELS=(
    "https://huggingface.co/black-forest-labs/FLUX.1-Redux-dev/resolve/main/flux1-redux-dev.safetensors|"
)

IC_LIGHT_MODELS=(
    "https://huggingface.co/huchenlei/IC-Light-ldm/resolve/main/iclight_sd15_fc_unet_ldm.safetensors|"
)

RESADAPTER_V2_SD15=(
"https://huggingface.co/jiaxiangc/res-adapter/resolve/main/resadapter_v2_sd1.5/pytorch_lora_weights.safetensors|resadapter_v2_sd1.5"
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    if [[ ! -d /opt/environments/python ]] || [[ -z "$(ls -A /opt/environments/python)" ]]; then 
        export MAMBA_BASE=true
    fi
    source /opt/ai-dock/etc/environment.sh
    source /opt/ai-dock/bin/venv-set.sh comfyui

    provisioning_print_header
    provisioning_get_apt_packages
    provisioning_get_nodes
    provisioning_get_pip_packages
    provisioning_get_models \
        "${WORKSPACE}ComfyUI/models/checkpoints" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}ComfyUI/models/unet" \
        "${UNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}ComfyUI/models/lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}ComfyUI/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}ComfyUI/models/embeddings" \
        "${EMBEDDINGS[@]}"
    provisioning_get_models \
        "${WORKSPACE}ComfyUI/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}ComfyUI/models/clip" \
        "${CLIP_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}ComfyUI/models/vae/FLUX1" \
        "${FLUX_VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}ComfyUI/models/clip_vision" \
        "${CLIP_VISION[@]}"
    provisioning_get_models \
        "${WORKSPACE}ComfyUI/models/segformer_b3_clothes" \
        "${SEGFORMER_B3_CLOTHES[@]}"
    provisioning_get_models \
        "${WORKSPACE}ComfyUI/models/esrgan" \
        "${ESRGAN_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}ComfyUI/models/style_models" \
        "${STYLE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}ComfyUI/models/unet/IC_Light" \
        "${IC_LIGHT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}ComfyUI/models/res-adapter/resadapter_v2_sd1.5" \
        "${RESADAPTER_V2_SD15[@]}"
    provisioning_print_end
}

function pip_install() {
    if [[ -z $MAMBA_BASE ]]; then
            "$COMFYUI_VENV_PIP" install --no-cache-dir "$@"
        else
            micromamba run -n comfyui pip install --no-cache-dir "$@"
        fi
}

function provisioning_get_apt_packages() {
    if [[ -n $APT_PACKAGES ]]; then
            sudo $APT_INSTALL ${APT_PACKAGES[@]}
    fi
}

function provisioning_get_pip_packages() {
    pip install "${PIP_PACKAGES[@]}"
}

function provisioning_get_nodes() {
    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="/opt/ComfyUI/custom_nodes/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating node: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                   pip_install -r "$requirements"
                fi
            fi
        else
            printf "Downloading node: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                pip_install -r "${requirements}"
            fi
        fi
    done
}

function provisioning_get_default_workflow() {
    if [[ -n $DEFAULT_WORKFLOW ]]; then
        workflow_json=$(curl -s "$DEFAULT_WORKFLOW")
        if [[ -n $workflow_json ]]; then
            echo "export const defaultGraph = $workflow_json;" > /opt/ComfyUI/web/scripts/defaultGraph.js
        fi
    fi
}

function provisioning_get_models() {
    local target_dir="$1"
    shift
    local models=("$@")

    mkdir -p "$target_dir"

    for model in "${models[@]}"; do
        url="${model%%|*}"  # before |
        new_name="${model##*|}"  # after |

        # Se a URL já tiver "?" (parâmetros), adiciona "&download=true", senão adiciona "?download=true"
        if [[ "$url" != *"?download=true"* ]]; then
            if [[ "$url" == *"?"* ]]; then
                url="${url}&download=true"
            else
                url="${url}?download=true"
            fi
        fi

        if [[ -z "$new_name" ]]; then
            new_name=$(basename "$url")
            new_name="${new_name%\?download=true}"  # Remove ?download=true
        fi

        local file_path="$target_dir/$new_name"

        # Verifica se o arquivo já existe antes de baixar
        if [[ -f "$file_path" ]]; then
            echo "Arquivo já existe: $file_path. Pulando download."
        else
            echo "Baixando $url como $new_name para $target_dir"
            provisioning_download "$url" "$target_dir" "$new_name"
        fi
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

function provisioning_has_valid_hf_token() {
    [[ -n "$HF_TOKEN" ]] || return 1
    url="https://huggingface.co/api/whoami-v2"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $HF_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

function provisioning_has_valid_civitai_token() {
    [[ -n "$CIVITAI_TOKEN" ]] || return 1
    url="https://civitai.com/api/v1/models?hidden=1&limit=1"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $CIVITAI_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

# Download from $1 URL to $2 file path named "$3"
function provisioning_download() {
    if [[ -n $HF_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?huggingface\.co(/|$|\?) ]]; then
        auth_token="$HF_TOKEN"
    elif 
        [[ -n $CIVITAI_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?civitai\.com(/|$|\?) ]]; then
        auth_token="$CIVITAI_TOKEN"
    fi
    if [[ -n $auth_token ]]; then
        wget --header="Authorization: Bearer $auth_token" \
             --content-disposition --show-progress -qnc \
             -e dotbytes="${dotbytes:-4M}" \
             -P "$2" -O "$2/$3" "$1"
    else
        wget --content-disposition --show-progress -qnc \
             -e dotbytes="${dotbytes:-4M}" \
             -P "$2" -O "$2/$3" "$1"
    fi
}

provisioning_start
