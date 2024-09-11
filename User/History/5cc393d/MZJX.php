use App\Http\Controllers\UserController;
 
Route::get('/user', [UserController::class, 'index']);
Route::get($uri, $callback);
Route::post($uri, $callback);
Route::put($uri, $callback);
Route::patch($uri, $callback);
Route::delete($uri, $callback);
Route::options($uri, $callback);