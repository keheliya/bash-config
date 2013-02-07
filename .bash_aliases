alias mvnci='mvn clean install'
alias mvncinotest='mvn clean install -Dmaven.test.skip=true'
alias mvncinotestoffline='mvn clean install -Dmaven.test.skip=true -o'
alias mvncinotestforce='mvn clean install -U -Dmaven.test.skip=true'
alias mvnciforce='mvn clean install -U'

alias mvnaf='mvn -Dmaven.repo.local=/data/dev/af/m2'
alias mvnafci='mvn clean install -Dmaven.repo.local=/data/dev/af/m2'
alias mvnafcinotest='mvn clean install -Dmaven.test.skip=true -Dmaven.repo.local=/data/dev/af/m2'
alias mvnafcinotestoffline='mvn clean install -Dmaven.test.skip=true -o -Dmaven.repo.local=/data/dev/af/m2'
alias mvnafcinotestforce='mvn clean install -U -Dmaven.test.skip=true -Dmaven.repo.local=/data/dev/af/m2'
alias mvnafciforce='mvn clean install -U -Dmaven.repo.local=/data/dev/af/m2'

alias mvnact='mvn -Dmaven.repo.local=/data/dev/activti/m2'
alias mvnacti='mvn clean install -Dmaven.repo.local=/data/dev/activti/m2'
alias mvnactinotest='mvn clean install -Dmaven.test.skip=true -Dmaven.repo.local=/data/dev/activti/m2'
alias mvnactinotestoffline='mvn clean install -Dmaven.test.skip=true -o -Dmaven.repo.local=/data/dev/activti/m2'
alias mvnactinotestforce='mvn clean install -U -Dmaven.test.skip=true -Dmaven.repo.local=/data/dev/activti/m2'
alias mvnactiforce='mvn clean install -U -Dmaven.repo.local=/data/dev/activti/m2'

mvn3set(){
export M2_HOME=/home/keheliya/Projects/apache-maven-3.0.3
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
}

mvn2set(){
export M2_HOME=/home/keheliya/Projects/apache-maven-2.2.1
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
}

define(){
dict -h dict.tu-chemnitz.de $1
}

