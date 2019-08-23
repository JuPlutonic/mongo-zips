import RollupCjsBundled from './rollupCjsBundled'

export const Default = {
  task: {
    name: 'rollup:iife'
  },
  options: {
    //dest: '', // required
    format: 'iife'
  }
}

/**
 * ----------------------------------------------
 * Class Definition
 * ----------------------------------------------
 */
const RollupIife = class extends RollupCjsBundled {

  /**
   *
   * @param gulp - gulp instance
   * @param preset - base preset configuration - either one from preset.js or a custom hash
   * @param configs - customized overrides for this recipe
   */
  constructor(gulp, preset, ...configs) {
    super(gulp, preset, Default, ...configs)
  }
}

export default RollupIife
