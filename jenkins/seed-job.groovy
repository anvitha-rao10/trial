pipelineJob('agentic-ai-devops-pipeline') {
    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        url('git@github.com:anvitha-rao10/agentic-ai-devops.git')
                        credentials('github-ssh-key')
                    }
                    branches('*/main')
                }
            }
            scriptPath('Jenkinsfile')
        }
    }
}
