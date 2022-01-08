process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')

// 読み込んだymlをjsonで出力
module.exports = environment.toWebpackConfig()
