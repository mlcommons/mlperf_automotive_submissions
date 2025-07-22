export AUTOMOTIVE_RESULTS_REPO_OWNER=${AUTOMOTIVE_RESULTS_REPO_OWNER:-mlcommons}
export AUTOMOTIVE_RESULTS_REPO_NAME=${AUTOMOTIVE_RESULTS_REPO_NAME:-mlperf_automotive_submissions}
export AUTOMOTIVE_RESULTS_REPO_BRANCH=${AUTOMOTIVE_RESULTS_REPO_BRANCH:-main}
export AUTOMOTIVE_RESULTS_VERSION=${AUTOMOTIVE_RESULTS_VERSION:-v0.5}

if [ ! -e docs ]; then
    git clone https://github.com/mlcommons/inference_results_visualization_template.git --branch=changes_to_include_automotive  docs
    test $? -eq 0 || exit $?
fi

cp docs/docinit.sh .
export default_division="closed";
export default_category="adas";

bash docinit.sh
