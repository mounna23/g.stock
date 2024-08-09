<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            background-color:#dce9f6;
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        #auth {
            width: 100%;
            max-width: 400px;
            padding: 20px;
            background-color: #dce9f9;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .auth-logo {
            text-align: center;
            margin-bottom: 20px;
        }

        .auth-title {
            text-align: center;
            font-size: 24px;
            color: #333;
            margin-bottom: 10px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .form-control:focus {
            border-color: #007bff;
            outline: none;
        }

        .form-control-icon {
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #ccc;
        }

        .form-check-label {
            font-size: 14px;
            color: #555;
        }

        .btn-primary {
    background-color: #007bff;
    border-color: #007bff;
    color: #fff;
    font-size: 16px; /* Taille de police plus petite */
    padding: 8px 16px; /* Moins de padding pour un bouton plus petit */
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    width: auto; /* Ajuste la largeur automatiquement selon le contenu */
    display: block; /* Pour que le bouton occupe toute la ligne */
    margin: 20px auto 0; /* Centre le bouton horizontalement */
}

.btn-primary:hover {
    background-color: #0056b3;
}


        .alert {
            background-color: #f8d7da;
            color: #721c24;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
            text-align: center;
        }
    </style>
</head>

<body>
    <div id="auth">

        <div class="row h-100">
            <div class="col-lg-5 col-12">
                <div id="auth-left">
                    <div class="auth-logo">
                        <a href="index.php">
                            <!-- Insérez votre logo ici -->
                        </a>
                    </div>
                    <h1 class="auth-title">Login</h1>

                    <form action="Presentation/verifier.php" method="post">
                        <?php
                        if (isset($_GET['error'])) {
                            echo '<div class="alert alert-danger" role="alert">
                            Login ou password est incorrect!
                        </div>';
                            unset($_GET);
                        }
                        ?>
                        <div class="form-group position-relative has-icon-left mb-4">
                            <input type="text" class="form-control form-control-xl" placeholder="Username" name="login">
                            <div class="form-control-icon">
                                <i class="bi bi-person"></i>
                            </div>
                        </div>
                        <div class="form-group position-relative has-icon-left mb-4">
                            <input type="password" class="form-control form-control-xl" placeholder="Password" name="password">
                            <div class="form-control-icon">
                                <i class="bi bi-shield-lock"></i>
                            </div>
                        </div>
                        <div class="form-check form-check-lg d-flex align-items-end">
                            <input class="form-check-input me-2" type="checkbox" value="" id="flexCheckDefault">
                            <label class="form-check-label text-gray-600" for="flexCheckDefault">
                                Keep me logged in
                            </label>
                        </div>
                        <input type="submit" value="Login" class="btn btn-primary btn-block btn-lg shadow-lg mt-5">
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
