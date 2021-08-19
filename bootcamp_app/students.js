const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: 'vagrant',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT students.id as stid, students.name as stname, cohorts.name as coname
FROM students join cohorts on cohort_id = cohorts.id
where cohorts.name LIKE '%${process.argv[2]}%'
LIMIT ${process.argv[3] || 5};
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.stname} has an id of ${user.stid} and was in the ${user.coname} cohort`);
  })
  // console.log(res.rows);
})
.catch(err => console.error('query error', err.stack));