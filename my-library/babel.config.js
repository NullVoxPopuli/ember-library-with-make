export default {
  plugins: [
    [
      'babel-plugin-ember-template-compilation',
      {
        targetFormat: 'hbs',
        transforms: [],
      },
    ],
    'module:decorator-transforms',
  ],

  generatorOpts: {
    compact: false,
  },
};
