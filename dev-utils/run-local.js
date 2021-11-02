"use strict";

const argv = require('minimist')(process.argv.slice(2));
const lambdaLocal = require('lambda-local');
const jsonPayload = require('./test/s3_test');

lambdaLocal.execute({
    event: jsonPayload.data,
    lambdaPath: 'index.js',
    environment: {
        ENV: "DEV",
    },
    // ejemplo: se pasa como argumento al ejecutar con nodejs --awscred /path/to/aws/credentials/file
    // profilePath: argv.awscred,
    // profileName: argv.awsprofile,
    timeoutMs: 60000,
    callback: function (err, data) {
        if (err) {
            console.error(err);
        } else {
            console.log(data);
        }
    }
});