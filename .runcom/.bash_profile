export PATH=/usr/local/bin:$PATH
export PERL5LIB=/usr/local/Cellar/vcftools/0.1.13/lib/perl5/:${PERL5LIB}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jeremyberg/google-cloud-sdk/path.bash.inc' ]; then . '/Users/jeremyberg/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jeremyberg/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/jeremyberg/google-cloud-sdk/completion.bash.inc'; fi
