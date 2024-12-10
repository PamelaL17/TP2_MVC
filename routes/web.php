<?php

use App\Routes\Route;
use App\Controllers\ArtistController;
use App\Controllers\ArtworkController;
use App\Controllers\ExhibitionController;
use App\Controllers\CategorieController;

// Routes pour les artistes
Route::get('/artists', 'ArtistController@index');
Route::get('/artists/show', 'ArtistController@show');
Route::get('/artists/create', 'ArtistController@create');
Route::post('/artists/create', 'ArtistController@store');
Route::get('/artists/edit', 'ArtistController@edit');
Route::post('/artists/edit', 'ArtistController@update');
Route::post('/artists/delete', 'ArtistController@delete');

// Routes pour les œuvres d'art

Route::get('/artworks', 'ArtworkController@index');
Route::get('/artworks/show', 'ArtworkController@show');
Route::get('/artworks/create', 'ArtworkController@create');
Route::post('/artworks/create', 'ArtworkController@store');
Route::get('/artworks/edit', 'ArtworkController@edit');
Route::post('/artworks/edit', 'ArtworkController@update');
Route::post('/artworks/delete', 'ArtworkController@delete');

// Routes pour les expositions
Route::get('/exhibitions', 'ExhibitionController@index');
Route::get('/exhibitions/show', 'ExhibitionController@show');
Route::get('/exhibitions/create', 'ExhibitionController@create');
Route::post('/exhibitions/create', 'ExhibitionController@store');
Route::get('/exhibitions/edit', 'ExhibitionController@edit');
Route::post('/exhibitions/edit', 'ExhibitionController@update');
Route::post('/exhibitions/delete', 'ExhibitionController@delete');

// Routes pour les categories
Route::get('/categories', 'CategorieController@index');
Route::get('/categories/show', 'CategorieController@show');
Route::get('/categories/create', 'CategorieController@create');
Route::post('/categories/create', 'CategorieController@store');
Route::get('/categories/edit', 'CategorieController@edit');
Route::post('/categories/edit', 'CategorieController@update');
Route::post('/categories/delete', 'CategorieController@delete');

// Lancer le dispatch des routes
Route::dispatch();