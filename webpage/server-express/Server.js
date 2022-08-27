const mysql= require('mysql');

const dbconnection=(database)=>{
    const db =mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: 'putamica69',
        database:database,
    })
    db.connect((err)=>{
        if(err){
            throw err;
        }
    })
    return db
}

const db = dbconnection('account');
const express = require("express");
const app = express();

app.get('/GetFirstAccount',(req,res)=>{
    let sql = 'select * from account where id=1'
    db.query(sql,(err,result)=>{
        if(err) throw err;
        console.log(result);
        res.send('admin got')
    })
})
app.post('/addaccount',(req,res)=>{
    res.render('index')
})
app.post('/addaccount',(req,res)=>{
    let sql="INSERT INTO `account`(login,password,social_id,email,last_play) VALUES ('admin3fddsadsf5','*CC67043C7BCFF5EEA5566BD9B1F3C74FD9A5CF5D','1234567','','0000-00-00 00:00:00');"
    db.query(sql,(err,result)=>{
        if(err) throw err;
        console.log(result);
        res.send('admin got')
    })
})

app.listen('3000',()=>{
    console.log('listening on port 3000')
})