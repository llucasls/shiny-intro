FROM r-base:4.2.0

WORKDIR /app
COPY . .

SHELL ["Rscript", "--no-save", "--no-init-file", "-e"]
RUN install.packages("jetpack")
RUN source(".Rprofile")
RUN jetpack::install()
RUN jetpack::cli()

SHELL ["/bin/sh", "-c"]

EXPOSE 4000

CMD ["Rscript", "chapter1/app.R"]
