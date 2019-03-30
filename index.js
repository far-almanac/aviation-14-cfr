var fs = require('fs');
var parseString = require('xml2js').parseString;
var _log = require('@ryanburnette/console-log-util-inspect');

var xml = fs.readFileSync('data/CFR-2017-title14-vol2-chapI.xml','utf8');

parseString(xml,function (err,result) {
  _log(result);
});
