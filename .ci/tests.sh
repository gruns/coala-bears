set -e
set -x

source .ci/env_variables.sh

args=()

if [ "$system_os" == "LINUX" ] ; then
  args+=('--cov' '--cov-fail-under=100' '--doctest-modules' '-n' '2')
fi

python3 -m pytest "${args[@]}"
