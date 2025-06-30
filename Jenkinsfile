pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile.builder'
            args '-v /mnt/storage/yocto:/storage'
        }
    }
    
    environment {
        MANIFEST_FILE = 'default.xml'
        BUILD_DIR = "build"
    }

    stages {
        stage('Checkout') {
            steps {
                sh '''
                    export REPO_CONFIG_DIR=/tmp
                    repo init --standalone-manifest -u file://${WORKSPACE}/${MANIFEST_FILE}
                    repo sync -j$(nproc)
                '''
            }
        }
        
        stage('Setup Environment') {
            steps {
                sh """
                    /bin/bash -c './setup-environment ${BUILD_DIR} && \
cat <<EOF >> ${BUILD_DIR}/conf/local.conf

# BAMBIK_SOURCES = "1"
DL_DIR ?= "/storage/downloads"
SSTATE_DIR ?= "/storage/sstate-cache"
BB_GENERATE_MIRROR_TARBALLS = "1"

EOF'
                """
            }
        }

        stage('Build Image') {
            steps {
                sh """
                    /bin/bash -c "\
                    . sources/oe-core/oe-init-build-env ${BUILD_DIR} && \
                    bitbake lab-image-minimal"
                """
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: "${BUILD_DIR}/build/tmp/deploy/images/**/*", allowEmptyArchive: true
        }
    }
}
