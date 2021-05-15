# Terraform Cloud
## Sign up for Terraform Cloud
Terraform Cloud is an application that manages Terraform runs in a consistent and reliable environment instead of on your local machine. This solution simplifies environment management, code execution, state file management, as well as permissions management.

![TerraformCloud](pic/terraformCloud.png)

1. Create an account

    Visit https://app.terraform.io/signup/account and follow the prompts to create a free Terraform Cloud account.
    ![SignUp](pic/signUp.png)
2. Once your account is ready. In the Terraform Cloud UI will ask which setup workflow you'd like use. Select "Start from scratch."
![SignUp](pic/setupWorkflow.png)
3. Create an organization
    
    In this step we are prompted to create a new organization. You can add members to your organization and they will be able to collaborate on your workspaces.
    > **_NOTE:_** If you want to join an existing organization to collaborate with others, give the organization's administrator the email address you used to create this account, they will be able to send you an invite.
    ![SignUp](pic/createOrganization.png)

## Create Workspace
Once your Terraform Cloud account is ready and your created or joined a new organization, you can start managing version-controlled infrastructure.

1. Choose your workflow
    Choose the workflow to use, we choose Version Control Workflow (it will store our configuration in the repository and will trigger runs on pull requests and merges similar to jenkins pipelines)
    ![Workspace](pic/createWorkspace.png)

2. Connect to VCS
    We choose the version control that will hold our configuration for this workspace.
    ![VCS](pic/connectVCS.png)
    > **_NOTE:_** After that we login to the VCS to authorize this request from Terraform Cloud.
    ![Authorize GitHub](pic/hashicorpPermGithub.png)
3. Choose a repository
![Repository](pic/chooseRepository.png)
4. Configure settings
![Settings](pic/configureSettings.png)
5. Finally, click on **"Create workspace"**
![Success](pic/successfulMessage.png)
## Configure Notifications
We configure the notifications whenever a build is started, we set up slack for notifications:
1.

## Configure Permissions for Terraform Cloud
1. Create an IAM object so terraform can create/delete AWS services
    * Open [IAM Administration Console](https://console.aws.amazon.com/iam/home)
    * Create a new User
    ![CreateUser](pic/createIAMUser.png)
    * Add User information
    ![AddUser](pic/addUser.png)
    * Create a new group for this user
    ![GroupIAM](pic/terraformGroupIAM.png)
    * Assign the new group to the new user
    ![GroupIAM1](pic/terraformGroupIAM1.png)
    * Add some tags
    * The credentials for this new user are created
    ![AccessKeys](pic/accessKeys.png)
2. Configure the **ACCESS_KEY_ID** and **SECRETE_ACCESS_KEY** in terraform cloud.
    * Go to Variables and add new **Environment Variables**, mark them as sensitive not to be shown in the UI.
    ![AccessKeys](pic/variablesAWSSecrets.png)