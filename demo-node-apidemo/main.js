var http = require('http');
var express = require('express');  
var request = require('request');
require('request-debug')(request);
var address = process.env.CLUSTER;
var auth_address = address.replace("api","auth");
var port = process.env.PORT;
var accesstoken = process.env.TOKEN;
var lineReader = require('line-reader');
var app = express();  
var server = require("http").createServer(app);  
var version = '0';

function getVersion(){
var responseString = "";
var options = {  host: address,port: 80, path: '/v1/version', headers: { 'Authorization': 'Bearer ' + accesstoken } }
var request = http.get(options, function(response){
        response.on('data', function(data) {
        responseString += data;       
	var build_number = JSON.parse(responseString);
	return(build_number.build_number);
	 });
        });
}

var defaultHTML =  ('<html><title>API Control Panel</title><head>'
                 + '<p align=center><a href="/"><img src="/logo.png"></a></p>'
                 + '</head><body>'
                 );

app.get('/stop', function(req, res) {
var responseString = "";
var uuid = req.query['uuid'];
var fqn = req.query['fqn'];
var options = {  host: address,port: 80, path: '/v1/jobs/' + uuid, headers: { 'Authorization': 'Bearer ' + accesstoken } }
res.write(defaultHTML);

var get_request = http.get(options, function(response){
        response.on('data', function(data) {
                responseString += data;
                });
        response.on('end', function(data){
        responseString.state = '';
        var change_state = JSON.parse(responseString)
	change_state.state = 'stopped';
	var options = {  url: 'http://'+address + '/v1/jobs/' + uuid, headers: { 'Authorization': 'Bearer ' + accesstoken}, body: JSON.stringify(change_state) }

	var stop = request.put(options, function(error, response, body) {
	res.end('Stopped Job');
	});                          
	
	});
        });
});

app.get('/start', function(req, res) {
var responseString = "";
var uuid = req.query['uuid'];
var fqn = req.query['fqn'];
var options = {  host: address,port: 80, path: '/v1/jobs/' + uuid, headers: { 'Authorization': 'Bearer ' + accesstoken } }
res.write(defaultHTML);

var get_request = http.get(options, function(response){
        response.on('data', function(data) {
                responseString += data;
                });
        response.on('end', function(data){
        responseString.state = '';
        var change_state = JSON.parse(responseString)
        change_state.state = 'started';
        var options = {  url: 'http://'+address + '/v1/jobs/' + uuid, headers: { 'Authorization': 'Bearer ' + accesstoken}, body: JSON.stringify(change_state) }

        var stop = request.put(options, function(error, response, body) {
        res.end('Started Job');
        });

        });
        });

});

app.get('/delete', function(req, res) {
var app = req.query['app'];
var responseString = "";
var uuid = req.query['uuid'];
var package_uuid = '';
var fqn = req.query['fqn'];
var data = { fqn: fqn , state: 'stopped' };
var options = {  host: address,port: 80, path: '/v1/packages?name=' + app, headers: { 'Authorization': 'Bearer ' + accesstoken } }
var package_request = http.get(options, function(response){
        response.on('data', function(data) {
                responseString += data;
                });
        response.on('end', function(data){
               var packageuuidparse= JSON.parse(responseString);
                 for (var i = 0; i < packageuuidparse.length; i++){
                        if(packageuuidparse[i].name == app) {
                          package_uuid = packageuuidparse[i].uuid;
                          }
                }
options = {  uri: 'http://'+address + '/v1/packages/' + package_uuid, headers: { 'Authorization': 'Bearer ' + accesstoken} }
var deletePackage= request.del(options, function(error, response, body) {
});
});
});

options = {  uri: 'http://'+address + '/v1/jobs/' + uuid, headers: { 'Authorization': 'Bearer ' + accesstoken} }
var deleteJob = request.del(options, function(error, response, body) { 
});        
res.write(defaultHTML);
res.end('Deleted Package and Job');
});

app.get('/getjobs', function(req, res) {
res.write(defaultHTML);
res.write("<br><br><p align=center><b>All Running Jobs</b><br><br></p>" );
var responseString = "";
var options = {  host: address,port: 80, path: '/v1/jobs', headers: { 'Authorization': 'Bearer ' + accesstoken } }
var request = http.get(options, function(response){
        response.on('data', function(data) {
                responseString += data;
                });
	response.on('end', function(data){
	       var jobs = JSON.parse(responseString);	
		 for (var i = 0; i < jobs.length; i++){
                 res.write('<p align=left><b>Job Name: </b>' + jobs[i].name + ' <b>| UUID: </b>' + jobs[i].uuid + ' | <b> Status: </b>' + jobs[i].state + '</p>');
                 }	
	});
        });
});

app.get('/viewjob', function(req, res){
var app = req.query['app'];
var responseString = "";
var uuid = "";
var fqn = "";
var responseString = "";
var state = "";
var options = {  host: address,port: 80, path: '/v1/jobs', headers: { 'Authorization': 'Bearer ' + accesstoken } }
var request = http.get(options, function(response){
        response.on('data', function(data) {
                responseString += data;
                });
        response.on('end', function(data){
               var jobs = JSON.parse(responseString);
                 for (var i = 0; i < jobs.length; i++){
			if(jobs[i].name == app) {
			   uuid = jobs[i].uuid;
			   fqn = jobs[i].fqn;
			   state = jobs[i].state;
			  }
                }

	res.write(defaultHTML);
	
if(uuid.length < 10) {
	res.end("Error, Application not found!");
	} else {
        res.end(
        '<form action="/viewjob" method="get">'
	+ '<br><br>Application Name: '      
        + '<input type="text" name="app" value="">'
        + '<input type="submit" value="View"'
        + ' name="Submit" id="frm1_view" />'
        + '</form>'
        + '<br><br><br><br><b>Application Details:</b>'
	+ '<br><br>Job Name: '  + app + ' <br><br>Job UUID: ' + uuid + '<br><br>FQN: ' + fqn + '<br><br>Application State: ' + state
        + '<p align=left>'
        + '<br><br><b>Application Options</b><br><br>'
        + '<form action="/start" target="_blank">'
        + '<input type="hidden" name="uuid" value="' + uuid + '"/>'
        + '<input type="hidden" name="fqn" value="' + fqn + '"/>'
        + '<input type="submit" value="Start Job"/>'
        + '</form>'
        + '<form action="/stop" target="_blank">'
        + '<input type="hidden" name="uuid" value="' + uuid + '"/>'
        + '<input type="hidden" name="fqn" value="' + fqn + '"/>'
        + '<input type="submit" value="Stop Job"/>'
        + '</form>'
        + '<form action="/delete" target="_blank">'
        + '<input type="hidden" name="uuid" value="' + uuid + '"/>'
        + '<input type="hidden" name="app" value="' + app + '"/>'
        + '<input type="hidden" name="fqn" value="' + fqn + '"/>'
        + '<input type="submit" value="Delete Job"/>'
        + '</form>'
	+ '</body></html>');
}
                });
});
});


app.get('/version', function(req, res) {
var responseString = "";
var options = {  host: address,port: 80, path: '/v1/version', headers: { 'Authorization': 'Bearer ' + accesstoken } }
var request = http.get(options, function(response){
response.on('data', function(data) {
		responseString += data;
		var build_number = JSON.parse(responseString);
		res.write(defaultHTML);	
		res.write("<p align=left>Apcera Version: ");
		res.write(build_number.build_number);
		res.end("</p>");
	});
	});

});

app.get('/oauth2', function(req,res){
var responseString = "";
var options = {  host: auth_address,port: 80, path: '/v1/oauth2/device/google/getcode'  }
	var request = http.get(options, function(response){

	response.on('data', function(data){
	responseString += data;
	});
		response.on('end', function(data){
		var authResponse = JSON.parse(responseString);
		res.write(defaultHTML);	
		res.end('Please enter code: <b>' + authResponse.user_code + '</b> to authenticate with <a href="' + authResponse.verification_url + '">Google</a>');
		});
});
});

app.get('/', function(req, res){
var responseString = "";
	res.write(defaultHTML);	
	res.end(
        '<form action="/viewjob" method="get">'
	+ 'Application Name: '      
        + '<input type="text" name="app" value="">'
        + '<input type="submit" value="View"'
        + ' name="Submit" id="frm1_view" />'
        + '</form>'
        + '<br><br><form action="/getjobs" method="get" target="_blank">'
        + '<input type="submit" value="List all jobs"'
	+ ' name="Submit" id="frm1_jobs" />'
	+ '</form>'
        + '<form action="/version" target="_blank">'
        + '<input type="submit" value="Cluster Version"/>'
        + '</form>'
//	+ '<form action="/oauth2" target="_blank">'
//        + '<input type="submit" value="Google Auth"/>'
//        + '</form>'
	+ '</body></html>');
	        });

app.get('/logo.png', function(req, res){
res.sendFile(__dirname + '/logo.png');
});

server.listen(port, function() {  
  console.log('Listening on port %d', server.address().port);
});
