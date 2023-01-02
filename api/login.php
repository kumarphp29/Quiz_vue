<?php session_start(); 
include('includes/db.php');
require_once 'vendor/autoload.php';
 
// init configuration 
$clientID = '534651796221-kko4fujmd6m6pgr80392bb231811u3dd.apps.googleusercontent.com';
$clientSecret = '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';
$redirectUri = 'http://localhost/quiz/api/login.php';
  
// create Client Request to access Google API 
$client = new Google_Client();
$client->setClientId($clientID);
$client->setClientSecret($clientSecret);
$client->setRedirectUri($redirectUri);
$client->addScope("email");
$client->addScope("profile");
 
// authenticate code from Google OAuth Flow 
if (isset($_GET['code'])) {
  $token = $client->fetchAccessTokenWithAuthCode($_GET['code']);
  $client->setAccessToken($token['access_token']);
  
  // get profile info 
  $google_oauth = new Google_Service_Oauth2($client);
  $google_account_info = $google_oauth->userinfo->get();
  $email =  $google_account_info->email;
  $name =  $google_account_info->name;
  $_SESSION['mailid']=$google_account_info->id;
  header("location: http://localhost:8080/setlogin");
  // now you can use this profile info to create account in your website and make user logged in. 
} else {
 echo $client->createAuthUrl();

//$redirec_url = $client->createAuthUrl();
 // header("location: ".$redirec_url);
}
?>