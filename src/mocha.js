import BaseMocha from './baseMocha'
import mocha from 'gulp-mocha'
import debug from 'gulp-debug'
import gulpif from 'gulp-if'

export const Default = {
  task: {
    name: 'mocha'
  },
  options: {
    reporter: 'nyan'
  }
}

const Mocha = class extends BaseMocha {

  /**
   *
   * @param gulp - gulp instance
   * @param preset - base preset configuration - either one from preset.js or a custom hash
   * @param configs - customized overrides for this recipe
   */
  constructor(gulp, preset, ...configs) {
    super(gulp, preset, Default, ...configs)
  }

  run(done, watching = false) {
    let bundle = this.gulp.src(this.config.test.glob, this.config.test.options)
      .pipe(gulpif(this.config.debug, debug(this.debugOptions())))
      .pipe(mocha(this.config.options)) // gulp-mocha needs filepaths so you can't have any plugins before it
      .on('error', (error) => {
        this.notifyError(error, done, watching)
      })

    return bundle
  }
}

export default Mocha
