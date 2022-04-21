# Introduction

-   Signature app
-   The application is deployed on app.uts.ac.id.

## Features

-   Generate certificate
-   Sign and verify
-   Login with google (SSO)

### App requirements

-   The application is built using laravel 9 and next.js.
-   Authentication using laravel sanctum and sign in with google.
-   Qr Code in next.js
-   Database: mysql

### Thirtd party libraries

-   Backend:
    -- laravel-sanctum
    -- laravel-google-login
    -- laravel-qr-code
    -   Replace and convert word to pdf [https://www.scratchcode.io/how-to-convert-word-to-pdf-in-laravel/]
    -   Replace with novay/laravel-word-template [https://github.com/novay/laravel-word-template] ex: [https://github.com/A2RJ/Esi-web/blob/main/app/Http/Controllers/UserController.php]
    -
-   Front end
    -- tailwindcss  
    -- react-minimal-side-navigation

### Database

-   User [ id_user ]
-   Certificate - daftar sertifikat [
    certificate_id,
    user_id,
    certificate_name,
    created_at,
    updated_at
    ]
-   Certificate_detail - fields apa saja yang direplace [
    certificate_detail_id,
    certificate_id,
    certificate_field,
    certificate_value
    ]
-   Certificate_user_list - daftar user yang akan di berikan sertifikat [
    certificate_user_list_id,
    certificate_id,
    user_id,
    created_at,
    updated_at
    ]

#### Work now

-   Buat landing page verify certificate
