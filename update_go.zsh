#!/bin/zsh

# With go 1.17 use go install to install binaries:
# https://golang.org/doc/go-get-install-deprecation
# TODO: change many of these 'go get' to 'go install'.

# START UTILS
projects=(
	github.com/BurntSushi/toml/cmd/tomlv
	github.com/ChimeraCoder/gojson/gojson
	github.com/andrewkroh/gvm/cmd/gvm
	github.com/asciimoo/wuzz
	github.com/boyter/scc
	github.com/charmbracelet/glow
	github.com/ddo/fast
	github.com/dimkouv/massivedl/cmd/massivedl
	github.com/elastic/go-licenser
	github.com/goreleaser/goreleaser/v2
	github.com/hhatto/gocloc/cmd/gocloc
	github.com/icholy/gomajor
	github.com/jondot/goweight
	github.com/kardianos/govendor
	github.com/kkdai/youtube/v2/cmd/youtubedr
	github.com/mikemadden42/github_status
	github.com/mikemadden42/go_utils/...
	github.com/mikemadden42/go_utils/keywords
	github.com/mikemadden42/go_utils/pinghosts
	github.com/mikemadden42/gofile
	github.com/mikemadden42/quakes
	github.com/mikemadden42/randpw
	github.com/mikemadden42/s3buster
	github.com/mikemadden42/serve
	github.com/mikemadden42/stats
	github.com/mikemadden42/sysinfo
	github.com/mikemadden42/unanswered
	github.com/mikemadden42/units
	github.com/miku/zek/cmd/...
	github.com/monochromegane/the_platinum_searcher/...
	github.com/muesli/duf
	github.com/owasp-amass/amass/v3/...
	github.com/pelletier/go-toml/v2/cmd/jsontoml
	github.com/pelletier/go-toml/v2/cmd/tomljson
	github.com/pelletier/go-toml/v2/cmd/tomll
	github.com/psampaz/go-mod-outdated
	github.com/schollz/croc/v9
	github.com/securego/gosec/v2/cmd/gosec
	github.com/shenwei356/rush
	github.com/tomnomnom/gron
	github.com/viktomas/godu
	github.com/xor-gate/goexif2/cmd/goexif2
	mvdan.cc/sh/v3/cmd/shfmt
)
for proj in ${projects[@]}; do
	echo $proj
	go install -ldflags "-s -w" $proj@latest
	echo
done
# END UTILS

# START LIBS
libs=(
	github.com/antonholmquist/jason
	github.com/gin-gonic/gin
	github.com/nlopes/slack
	github.com/sirupsen/logrus
	github.com/tatsushid/go-fastping
	github.com/tbruyelle/hipchat-go/hipchat
	github.com/urfave/cli
	github.com/yosida95/golang-jenkins
)
for lib in ${libs[@]}; do
	echo $lib
	echo go get -u -ldflags "-s -w" $lib@latest
	echo
done
# END LIBS

# START LINTERS
linters=(
	github.com/fzipp/gocyclo/cmd/gocyclo
	github.com/kisielk/errcheck
	github.com/mibk/dupl
	github.com/opennota/check/cmd/aligncheck
	github.com/opennota/check/cmd/structcheck
	github.com/opennota/check/cmd/varcheck
	honnef.co/go/tools/cmd/...
)
for linter in ${linters[@]}; do
	echo $linter
	go install -ldflags "-s -w" $linter@latest
	echo
done
# END LINTERS

# START VSCODE TOOLS
# go get -u -ldflags "-s -w" github.com/alecthomas/gometalinter
tools=(
	github.com/acroca/go-symbols
	github.com/cweill/gotests/...
	github.com/davidrjenni/reftools/cmd/fillstruct
	github.com/fatih/gomodifytags
	github.com/go-delve/delve/cmd/dlv
	github.com/golangci/golangci-lint/cmd/golangci-lint
	github.com/haya14busa/goplay/cmd/goplay
	github.com/josharian/impl
	github.com/mdempsky/gocode
	github.com/ramya-rao-a/go-outline
	github.com/rogpeppe/godef
	github.com/sqs/goreturns
	github.com/zmb3/gogetdoc
	golang.org/x/lint/golint
	golang.org/x/tools/cmd/godoc
	golang.org/x/tools/cmd/goimports
	golang.org/x/tools/cmd/gorename
	golang.org/x/tools/cmd/guru
	golang.org/x/tools/gopls
)
for tool in ${tools[@]}; do
	echo $tool
	go install -ldflags "-s -w" $tool@latest
	echo
done
# TODO: When this issue is fixed, this tool can be moved into the list above.
# https://github.com/uudashr/gopkgs/issues/25
go install -ldflags "-s -w" github.com/uudashr/gopkgs/cmd/gopkgs@v2
# END VSCODE TOOLS
