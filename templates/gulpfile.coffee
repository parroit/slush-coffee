gulp = require 'gulp'
loadPlugins = require 'gulp-load-plugins'
$ = loadPlugins(lazy: true) 

require 'coffee-script/register'

dir =
  dist: __dirname + '/dist'
  tests: __dirname + '/test'
  source: __dirname + '/lib'

gulp.task 'clean', ->
  gulp.src(dir.dist, read: false)
    .pipe $.clean()

gulp.task 'test', ->
  gulp.src(dir.tests+'/**/*.coffee')
      .pipe $.mocha (reporter:'spec')


gulp.task 'lint', ->
  gulp.src([dir.source+'/**/*.coffee',dir.tests+'/**/*.coffee'])
        .pipe($.coffeelint())
        .pipe($.coffeelint.reporter())


gulp.task 'watch-test', ->
  gulp.watch dir.tests+'/**/*.coffee',['test']
  gulp.watch dir.source+'/**/*.coffee',['test']
