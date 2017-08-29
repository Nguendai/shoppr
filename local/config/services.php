<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
    ],

    'ses' => [
        'key' => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => 'us-east-1',
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],

    'stripe' => [
        'model' => App\User::class,
        'key' => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
    ],
    'facebook' => [
	    'client_id' => '1251143168336364',
	    'client_secret' => '4415f9dd3ad906c555f20850fac04736',
	    'redirect' => 'http://localhost:8888/tiishop/auth/facebook/callback',
    ],
    'google' => [
	    'client_id' => '959643078570-sqmf6pj3s5n7hnlhlpmeqqeer5mkusn1.apps.googleusercontent.com',
	    'client_secret' => 'bmPtZbPlanqaUEK_4Wt5yjcE',
	    'redirect' => 'http://localhost:8888/tiishop/auth/google/callback',
    ],

];
