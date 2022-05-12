<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        #top {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: #f2f2f2;
            opacity: 1;
            z-index: 100;
        }

        #capture {
            padding: 10px;
            background: #f5da55;
            width: 100%;
            z-index: 10;
        }
    </style>
</head>

<body>
    <div id="top"></div>
    <div id="capture" style="padding: 10px; background: #f5da55">
        <h4 style="color: #000; ">Hello world!</h4>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="{{ asset('html2canvas/html2canvas.js') }}"></script>
    <script>
        html2canvas(document.getElementById("capture")).then(canvas => {
            axios.post('/qrpost', {
                dataURL: canvas.toDataURL("image/png")
            }).then(res => {
                console.log(res);
            }).catch(err => {
                console.log(err);
            });
        });
    </script>
</body>

</html>