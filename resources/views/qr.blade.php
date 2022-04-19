<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <div class="container mt-4">
        <a href="">{{ $image }}</a>
    </div>

    <script>
        window.onload = function() {
            var image = document.querySelector('a');
            image.onclick = function() {
                var win = window.open(this.href, '_blank');
                win.focus();
                return false;
            }

        }

    </script>
</body>

</html>