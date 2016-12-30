# https://github.com/motivic/dotfiles

# Enable aws-cli command completion 
source /usr/bin/aws_zsh_completer.sh

# Easy switch between AWS profiles
function _awsSwitchProfile() {
   if [ -z $1 ]; then  echo "Usage: aws-profile profilename"; return; fi
   
   exists="$(aws configure get aws_access_key_id --profile $1)"
   if [[ -n $exists ]]; then
       export AWS_DEFAULT_PROFILE=$1;
       export AWS_PROFILE=$1;
       export AWS_REGION=$(aws configure get region --profile $1);
       echo "Switched to AWS Profile: $1";
       aws configure list
   fi
};

alias aws-profile="_awsSwitchProfile"
alias aws-who="aws configure list"
