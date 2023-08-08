# github-action-push-to-another-repository

## How to use?
Sample (taken from [here](https://github.com/propertyguru/dataengineering-ingestionpipeline/blob/master/.github/workflows/composer.yml)):

```
env:
  GH_TOKEN: ${{ secrets.GH_PAT }}
  SSH_DEPLOY_KEY: ${{ secrets.SSH_DEPLOY_KEY }}
...
...
    - name: Push DAG to Composer Project
      uses: propertyguru/github-action-push-to-another-repository@main
      with:
        source-directory: 'tmp'
        destination-github-username: 'propertyguru'
        destination-repository-name: 'composer-airflow-2'
        user-email: rahulbaid@propertyguru.com.sg
        create-target-branch-if-needed: true
        target-branch: ${{ steps.branch-name.outputs.branch }}
        target-directory: dags/reverse-etl
        create-pr: true
        base-branch: main
```

Notes:
1. `user-email` can also be `automated-pg@propertyguru.com.sg`
2. `create-pr` is optional. Defaults to `false`. not in original fork
3. `base-branch` is optional. Defaults to `master`. not in original fork
4. More documentation can be found at https://github.com/cpina/github-action-push-to-another-repository
---
Contributed and maintained by Rahul Baid
   
