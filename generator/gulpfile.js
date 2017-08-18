var browserify = require('browserify'),
exorcist = require('exorcist'),
stringify = require('stringify'),
source = require('vinyl-source-stream'),
gutil = require('gulp-util'),
gulp = require('gulp');

/* Browserify Build Tasks*/
gulp.task('build-app', function () {
    buildApp('src/', 'index.js', 'app', 'bundle.js');
});
// gulp.task('build-login-app', function () {
//     buildApp('src/', 'login-index.js', 'app', 'login-bundle.js');
// });
// gulp.task('build-admin-app', function () {
//     buildApp('src/', 'meeting-index.js', 'app', 'meeting-bundle.js');
// });

/* Generic build script to create diffrent bundles with different inputs */
function buildApp (inputLoc, inputFile, outputLoc, outputFile) {
        //js
    var jsBundle = browserify(inputLoc+'/'+inputFile, {
        debug: true
    });
    return jsBundle
        .transform(stringify, {
        appliesTo: { includeExtensions: ['.html']},
        minify: true
        })
        .bundle()
          .on('error', err => {
                gutil.log("Browserify Error", gutil.colors.red(err.message));
                this.emit("end");
            })
        .pipe(exorcist(outputLoc+'/'+outputFile+'.map'))
        .pipe(source(outputFile))
        .pipe(gulp.dest(outputLoc+'/'));
}