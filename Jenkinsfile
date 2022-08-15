pipeline{
      agent { label 'slave1' }
      stages{
      stage('check out'){
                  steps{
                  sh "rm -rf hello-world-war"
                  sh "git clone https://github.com/sandy1791994/hello-world-war.git"
                  }
                  }
      stage('build'){
      steps{
      sh "pwd"
      sh "ls"
      sh "cd hello-world-war"
      sh "docker build -t sandy1791994/docwarimage:1.0 ."
      }
      }
       stage('publish'){
                  steps{
                        sh "docker login -u sandy1791994 -p mAnj@0606g"
                        sh "docker push sandy1791994/docwarimage:1.0"
                  }
            }
            stage('deploy'){
                  agent { label 'slave2' }
                  steps{
                        sh "docker login -u sandy1791994 -p mAnj@0606g"
                        sh "docker pull sandy1791994/docwarimage:1.0"
                        sh "docker rm -f trail1"
                        sh "docker run -d -p 8085:8080 --name trail1 sandy1791994/docwarimage:1.0"
                  }
            }
      }
      }

--------------------------------------------------------------------------------------------------------------

pipeline{
      agent { label 'slave1' }
      stages{
      stage('check out'){
                  steps{
                  sh "rm -rf hello-world-war"
                  sh "git clone https://github.com/sandy1791994/hello-world-war.git"
                  }
                  }
      stage('build'){
      steps{
      sh "pwd"
      sh "ls"
      sh "cd hello-world-war"
      sh "docker build -t sandy1791994/docwarimage:1.0 ."
      }
      }
       stage('publish'){
                  steps{
                        sh "docker login -u sandy1791994 -p mAnj@0606g"
                        sh "docker push sandy1791994/docwarimage:1.0"
                  }
            }
            stage('deploy'){
                  agent { label 'slave2' }
                  steps{
                        sh "docker login -u sandy1791994 -p mAnj@0606g"
                        sh "docker pull sandy1791994/docwarimage:1.0"
                        sh "docker rm -f trail1"
                        sh "docker run -d -p 8085:8080 --name trail1 sandy1791994/docwarimage:1.0"
                  }
            }
      }
      }
