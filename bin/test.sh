#!/usr/bin/env bash
set -e

sc_dir="$(
    cd "$(dirname "$0")" >/dev/null 2>&1 || exit
    pwd -P
)"

rs_path=${sc_dir/kube*/kube}
# source $rs_path/bin/libs/headers.sh

# cargo test -p kube-examples --color=always --example crd_derive verify_crd --profile test -- --nocapture
# cargo test -p kube-examples --color=always --example crd_derive verify_url_gen --profile test -- --nocapture
# cargo test -p kube-examples --color=always --example crd_derive verify_default --profile test -- --nocapture

# cargo test -p kube-examples --color=always --example crd_derive_custom_schema verify_bar_is_a_custom_resource --profile test -- --nocapture

cargo test -p kube-examples --color=always --example crd_derive_no_schema verify_bar_is_a_custom_resource --profile test -- --nocapture
