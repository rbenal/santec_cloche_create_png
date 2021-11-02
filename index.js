let AWS = require("aws-sdk");

exports.handler =  async function(event, context) {

    console.log(JSON.stringify(event));
  return {
      statusCode: 200,
      headers: {
          "Access-Control-Allow-Origin": "*"
      },
      body: JSON.stringify("Success")
  };
};