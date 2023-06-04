#!/bin/bash

if [[ -f "./env.sh" ]]; then
  echo "Use env vars from file ${PWD}/env.sh"
  source ./env.sh
fi

DB_CONTAINER_NAME="spring-postgres"
workDir="${WORKING_DIR:=~/workspace}"

help() {
  echo "
  Usage:
  ./application init - init working dir and database
  ./application clean - clean working dir and stop database
  ./application build - run JUnit tests (-skipTest arg to skip tests) and build jar file
  ./application up - run application
  "
}

init() {
  mkdir -p "${workDir}"
  cd "${workDir}" || exit

  if [[ ! -d "spring-starter" ]]; then
    git clone https://github.com/dmdev2020/spring-starter
  fi
  cd "spring-starter" || exit
  git checkout lesson-125

  docker pull postgres
  if docker ps -a | grep "${DB_CONTAINER_NAME}"; then
    docker start "${DB_CONTAINER_NAME}"
  else
    docker run --name "${DB_CONTAINER_NAME}" \
      -e POSTGRES_PASSWORD=pass \
      -e POSTGRES_USER=postgres \
      -e POSTGRES_DB=postgres \
      -p 5433:5432 \
      -d postgres
  fi

}

clean() {
  rm -rf "${WORKING_DIR}"

  if docker ps | grep "${DB_CONTAINER_NAME}"; then
    docker stop "${DB_CONTAINER_NAME}"
  else
    docker run --name "${DB_CONTAINER_NAME}" \
      -e POSTGRES_PASSWORD=pass \
      -e POSTGRES_USER=postgres \
      -e POSTGRES_DB=postgres \
      -p 5433:5432 \
      -d postgres
  fi
}

build() {
  cd "${WORKING_DIR}/spring-starter" || exit

  ./gradlew clean

  if [[ "${1}" = "-skipTest" ]] || ./gradlew cleanTest test; then
    ./gradlew bootJar
  else
    echo "Tests are failed. See test report or try to skip tests with -skipTest param"
  fi
}

up() {
  cd "${workDir}/spring-starter/build/libs" || exit
  java -jar spring-starter-*.jar
}

case $1 in
help)
  help
  ;;
init)
  init
  ;;
clean)
  clean
  ;;
build)
  build "${2}"
  ;;
up)
  up
  ;;
*)
  echo "Exception! ${1} is wrong command."
  exit 1
  ;;
esac
