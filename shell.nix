with import <nixpkgs> { };

mkShell {
	name = "blog";
	buildInputs = [
	nim
	direnv
	svgbob
	pandoc
	
	];
}
