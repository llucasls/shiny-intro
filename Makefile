RSCRIPT = Rscript -e
LINTR = lintr::lint_dir(".")

install:
	jetpack install

lint:
	$(RSCRIPT) '$(LINTR)'
