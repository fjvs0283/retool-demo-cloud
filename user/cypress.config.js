const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
  },
  env: {
    CYPRESS_USERNAME: 'francisco+dev@retool.com',
    CYPRESS_PASSWORD: 'V1t3kMat1a5!'
  }
});
