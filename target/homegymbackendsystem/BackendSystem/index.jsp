<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>厝動HomeGym 後台畫面</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>

    <section class="backend">
        <div class="container-fluid d-flex justify-content-center align-items-center" style="height: 100vh;">
            <div class="col-6 p-4 bg-light">
                <div class="mb-3 row align-items-center">
                    <label for="static" class="fs-5 col-sm-2 col-form-label">帳號</label>
                    <div class="col-sm-10">
                        <input class="form-control form-control-lg" id="static" type="text" placeholder="請輸入帳號" aria-label="form-control-lg example">
                    </div>
                  </div>
                  <div class="mb-3 row align-items-center">
                    <label for="inputPassword" class="fs-5 col-sm-2 col-form-label">密碼</label>
                    <div class="col-sm-10">
                      <input type="password" class="form-control  form-control-lg" id="inputPassword" placeholder="請輸入密碼">
                    </div>
                  </div>
                  <div class="d-flex justify-content-center">
                      <button type="button" class="btn btn-outline-primary ms-2  ps-4 pe-4">登入</button>
                  </div>
            </div>

        </div>
    </section>


</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</html>