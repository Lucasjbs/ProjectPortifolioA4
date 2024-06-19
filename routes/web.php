<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;
use Inertia\Inertia;

// DEFAULT

Route::get('/oldhomepage', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
})->name('oldhomepage');

Route::get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');


// CUSTOM


Route::get('/', function () {
    return Inertia::render('Homepage');
});

Route::get('/portfolio', function () {
    return Inertia::render('Portfolio', [
        'renderMode' => false,
    ]);
})->name('portfolio');

Route::get('/certifications', function () {
    return Inertia::render('Certifications');
})->name('certifications');

Route::get('/articles', function () {
    return Inertia::render('Articles');
})->name('articles');

Route::get('/projects', function () {
    return Inertia::render('Projects');
})->name('projects');


Route::get('/portfolio/pdf', function () {
    return Inertia::render('Portfolio', [
        'renderMode' => true,
    ]);
})->name('portfolio');

Route::get('/testboard', function () {
    //https://laravel.com/docs/11.x/installation#next-steps
    $environment = "Unknown";
    if (App::environment(['staging'])) {
        $environment = "Staging";
        // php artisan about --only=environment
        // https://laravel.com/docs/11.x/configuration#determining-the-current-environment
    }

    return Inertia::render('Testboard', ['environment' => $environment, 'new' => "New Text"]);
})->name('testboard');

Route::post('/set-locale', function (\Illuminate\Http\Request $request) {
    $locale = $request->input('locale');
    if (in_array($locale, ['en', 'pt'])) { // Add all your supported locales here
        App::setLocale($locale);
        Session::put('locale', $locale);
        return response()->json(['message' => 'Locale changed successfully.']);
    } else {
        return response()->json(['message' => 'Invalid locale.'], 400);
    }
});


// MIDDLEWARE


Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';
