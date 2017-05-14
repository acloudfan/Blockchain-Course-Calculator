module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    },

    QA: {
      host: "localhost",
      port: 8545,
      network_id: "3" ,  // ROPSTEN
      // Options - gas, gasPrice, from
    },

    PRODUCTION: {
      host: "localhost",
      port: 8545,
      network_id: "1"   // LIVE
      // Options - gas, gasPrice, from
    }
  }
};

