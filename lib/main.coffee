fork = require('child_process').fork

if process.argv.length < 3
  console.log 'usage: pastry {bake} ...'
else
  cmd = fork("#{__dirname}/../tools/pastry-#{process.argv[2]}/lib/main", process.argv[3...])
