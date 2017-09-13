#!/bin/bash

attemptGoogleProtocolCompilerInstallation() {
    echo "--- Installing Google Protocol Buffer Library ---"

    hasProtobuf=$( protoc --version )
    if (( $? == 0 )); then # check to see if the compiler is installed
        echo "protobuf already exists"
    else
        echo "protobuf doesn't exist, installing from brew"
        brew install protobuf
    fi
}

installProtoGenSwift() {
    echo "--- Installing Swift Protocol Buffer Plugin ---"

    if [[ -w /usr/local/bin ]]; then
        cp -rf protoc-gen-swift /usr/local/bin
    else
        sudo yes | cp -rf protoc-gen-swift /usr/local/bin
    fi
}

installProtoGenDoc() {
    echo "--- Installing protoc-gen-doc Plugin ---"

    if [[ -w /usr/local/bin ]]; then
        cp -rf bin/protoc-gen-doc /usr/local/bin
    else
        sudo yes | cp -rf bin/protoc-gen-doc /usr/local/bin
    fi
}

printUsage() {
    echo "Usage:"
    echo "Generate Swift file:    ./proto-gen.sh --swift"
    echo "Generate Markdown file: ./proto-gen.sh --doc"
}

if [[ -z $1 ]]; then
    printUsage
    exit
fi

for key in $@
do
    case $key in
        --swift)
        shift
        INSTALL_PROTOC=true
        INSTALL_GEN_SWIFT=true
        ;;

        --doc)
        shift
        INSTALL_PROTOC=true
        INSTALL_GEN_DOC=true
        ;;

        *)
        shift
        echo "Unknown option $key"
        printUsage
        ;;
    esac
    shift
done

if [[ -n $INSTALL_PROTOC ]]; then
    attemptGoogleProtocolCompilerInstallation
fi

if [[ -n $INSTALL_GEN_SWIFT ]]; then
    installProtoGenSwift
    protoc --swift_out=. analytics.proto
fi

if [[ -n $INSTALL_GEN_DOC ]]; then
    installProtoGenDoc
    protoc --doc_out=markdown,ANALYTICS.md:. analytics.proto
fi



