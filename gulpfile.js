const gulp = require("gulp");
const tar = require("gulp-tar");
// const gzip = require("gulp-gzip");

exports.default = () =>
  gulp
    .src("build/**")
    .pipe(tar("eflow.tar"))
    // .pipe(gzip()) // TODO? or XXX?
    .pipe(gulp.dest("dist"));
