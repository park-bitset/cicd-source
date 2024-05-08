# From the root of the project, run `./scripts/deploy-cfn-template.sh <stack-name>`
# You can change the parameters as needed
if [ -z "$1" ]
  then
    echo "Please provide a stack name"
    echo "Usage: ./scripts/deploy-cfn-template.sh <stack-name>"
    exit 1
fi

aws cloudformation deploy \
  --template ./cfn-templates/cfn-template.yml \
  --stack-name $1 \
  --parameter-overrides Key1=Value1 Key2=Value2 \
  --capabilities CAPABILITY_NAMED_IAM