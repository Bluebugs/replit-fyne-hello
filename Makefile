.PHONY: run
run: main
	./$<

.gopherjs:
	GOPATH=~/.local/ go install golang.org/dl/go1.18.6@latest
	GOPATH=~/.local/ go install github.com/gopherjs/gopherjs@latest
	go1.18.6 download
	touch .gopherjs

.fyne:
	GOPATH=~/.local/ go install fyne.io/fyne/v2/cmd/fyne@latest
	touch .fyne

main: *.go go.mod .gopherjs .fyne
	GOPHERJS_GOROOT="$(go1.18.6 env GOROOT)" fyne serve

.PHONY: all
all: main