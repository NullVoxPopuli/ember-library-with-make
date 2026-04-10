.PHONY: build clean

define PREPROCESS
import { Preprocessor } from "content-tag";
import { readFileSync, writeFileSync } from "fs";
writeFileSync("dist/.preprocessed.js",
  new Preprocessor().process(readFileSync("src/index.gjs", "utf8")).code
);
endef
export PREPROCESS

build: dist/index.js

dist/index.js: src/index.gjs babel.config.js
	mkdir -p dist
	echo "$$PREPROCESS" | node --input-type=module
	pnpm --package "@babel/cli" dlx babel dist/.preprocessed.js --out-file dist/index.js
	rm -f dist/.preprocessed.js

clean:
	rm -rf dist
