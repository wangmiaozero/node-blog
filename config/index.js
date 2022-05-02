const config = {
  ip: '127.0.0.1',
  port: 3000,
  database: {
    HOST: '127.0.0.1', // 数据库地址
    USER: 'blog', // 数据库用户
    PORT: 3306,
    PASSWORD: '', // 数据库密码
    DATABASE: 'blog' // 选中数据库
  },
  redis: {
    host: '127.0.0.1',
    port: 6379
    // pass: ''
  }
}
module.exports = config
