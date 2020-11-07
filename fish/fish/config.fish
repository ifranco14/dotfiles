if status --is-login
        set PATH $PATH /usr/bin /sbin
end

function su
    /bin/su --shell=/usr/bin/fish $argv
end

# export PATH="/usr/local/cuda-10.0/bin" $PATH
# export LD_LIBRARY_PATH="/usr/local/cuda-10.0/lib64" $LD_LIBRARY_PATH
# set -gx PATH $PATH /usr/local/cuda-10.0/bin
# set -gx LD_LIBRARY_PATH $LD_LIBRARY_PATH /usr/local/cuda-10.0/lib64
# export CUDA_HOME="/usr/local/cuda"


