build_dir=.build
identifier=io.srz.paw.AWSSignatureV4
extensions_dir=$(HOME)/Library/Containers/com.luckymarmot.Paw/Data/Library/Application Support/com.luckymarmot.Paw/Extensions/

build:
	npm run build
	cp README.md LICENSE ./$(build_dir)/$(identifier)/

clean:
	rm -rf ./$(build_dir)/

install: clean build
	mkdir -p "$(extensions_dir)$(identifier)/"
	cp -r ./$(build_dir)/$(identifier)/* "$(extensions_dir)$(identifier)/"

archive: build
	cd ./$(build_dir)/; zip -r AWSSignatureV4.zip "$(identifier)/"
