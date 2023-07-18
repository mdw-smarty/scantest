# scantest

A simple, responsive (a word which here means 'snappy') test runner.

## Features

- Runs `make` or `go test` or any command you supply whenever a .go file in any package under the current directory changes.
- Provides colorful output according to exit status of tests (green=passed, red=failed).

### Installation

```
go get github.com/mdwhatcott/scantest
```

### Console Runner Execution

```
cd my-project
scantest
```

Results of your tests will display in the terminal until you enter `<ctrl>+c`.

## Custom Go Test Arguments

Simple supply a Makefile in the current directory and specify what command and arguments to run. Then just run scantest (it will find your makefile and run the default action, which you can change whenever necessary).

Example:

```
#!/usr/bin/make -f

test:
    go test -v -short -run=TestSomething -race -cover
```
