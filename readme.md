<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

## About This Repo

Laravel Project, OAuth API and Laravel Passport package.

#### Steps

> make migrate for users table.
> make UsersSeederTable and Factory to generate fake users.
> authentication scaffolding generated with make:auth.
> install Passport via the Composer package manager and set 'passport' to api auth driver.
> make migrate for passport database migration.
> run passport:install to create the encryption keys needed to generate secure access tokens
> add authenticated method "HasApiTokens" to User model
> add Passport::routes() in AuthServiceProvider to make passport default routes.
> create frontend passport components to use this routes and manage oauth client by "php artisan vendor:publish --tag=passport-components"
> register the components in the "resources/js/app.js" file.
> npm i and npm run watch to recompile the assets.
> add the passport components into the UI dashboard page.
> create new client and make requests to test the oauth api.

### Author/Contributing

Mohamed Aimane Skhairi

### License

This repo is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
