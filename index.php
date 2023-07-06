<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to hostel management system </title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <style>
        @import url("style/style.css");

        .container{
            width:100vw;
            height:100vh;
            display:grid;
            grid-template-columns: 50% 50%;
            align-items: center;
            justify-items: center;
            justify-content: center;
        }

        .container div{
            height:100%;
            width:100%;
            display:flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .container .admin-block{
            background:url('images/onboarding/admin-block-background.jpg');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .container .student-block{
            background:url('images/onboarding/student-block-background.jpg');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .container div a{
            position: relative;
            left:1%;
            font-family:sans-serif;
            font-weight:700;
            font-size:2em;
            text-decoration: none;
            color:black;

        }

        .container div a:hover{
            color:blue;
        }

        .container div span{
            position:relative;
            padding:10px;
            margin-left:2%;
            font-size:2em;       
            border:2px solid black;
            border-right: none;     
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="admin-block">
            <a href="admin/index.php">Admin</a>
            <span><i class="fas fa-arrow-right"></i></span>
        </div>
        <div class="student-block">
            <a href="student/index.php">Student</a>
            <span><i class="fas fa-arrow-right"></i></span>
        </div>
        
        
    </div>
</body>
</html>