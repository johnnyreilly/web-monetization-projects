// FROM UPKEEP TEMPLATE
const path = require('path')

const displayName = path.basename(__dirname)
const rootConfig = { ...require('../../jest.config') }
delete rootConfig.projects
delete rootConfig.rootDir

module.exports = {
  ...rootConfig,
  displayName,
  testMatch: [
    '<rootDir>/test/jest/**/*.test.ts?(x)',
    '<rootDir>/src/**/*.test.ts?(x)'
  ]
}
