export AF_CREDS=chinmay.samant@in.ibm.com@us.ibm.com:Oct@2108
export API_KEY=AKCp5bBNFoMVuiK9bnbUmFTCFt6BAwEtBAnaUdWUNNMNyTUBgSyxp6PUff1Drg4eMgm29GNT5
export ICP_CREDS=icpblore@in.ibm.com:$API_KEY
mv ~/.npmrc ~/backup.npmrc
echo '//dev-console-npm.stage1.ng.bluemix.net/:_authToken="u6vjQywpRv51/eKBiRcAFA=="' >> ~/.npmrc
echo '@console:registry=https://dev-console-npm.stage1.ng.bluemix.net/' >> ~/.npmrc
curl -u $AF_CREDS https://na.artifactory.swg-devops.com/artifactory/api/npm/iam-npm-local/auth/iam >> ~/.npmrc
curl -u $AF_CREDS https://na.artifactory.swg-devops.com/artifactory/api/npm/orpheus-npm-local/auth/orpheus >> ~/.npmrc
curl -u $AF_CREDS https://na.artifactory.swg-devops.com/artifactory/api/npm/res-ibma-npm-local/auth/ibma >> ~/.npmrc
curl -u $ICP_CREDS https://eu.artifactory.swg-devops.com/artifactory/api/npm/hyc-ibm-pvt-cloud-npm-local/auth/icp >> ~/.npmrc
