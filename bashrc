source "$HOME/.bashrc_common"

function lust () {
    LUSTRE_DIR=/lustre/scratch103/sanger/sp12
    if test -d "$LUSTRE_DIR"; then
       cd "$LUSTRE_DIR"
    else
        ssh -t farm2-login "cd \"$LUSTRE_DIR\"; exec tcsh -l"
    fi
}
