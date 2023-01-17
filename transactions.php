<?php
    $conn = mysqli_connect("localhost", "root", "", "easybank");
    $res = $conn->query("SELECT * FROM transactions ORDER BY id DESC");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transactions</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/9ab505fa84.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div class="container">
        <div class="row p-5 ps-0">
            <div class="col-3">
                <a href="customers.php" class=""><i class="fa-solid fa-arrow-left"></i></a>
            </div>
            <div class="row mt-5">
                <div class="col-md-12">
                <h3>All Transactions</h3>
                    <table class="table table-hover text-center shadow">
                        <tr>
                            <th>Time</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Money Sent</th>
                            <th>Date</th>
                        </tr>
                        <?php
                        while ($rows = $res->fetch_assoc()) {

                        ?>
                            <tr>
                                <td><?php echo $rows['time'];?></td>
                                <td><?php echo $rows['name']; ?></td>
                                <td><?php echo $rows['email']; ?></td>
                                <td>₹<?php echo $rows['money_sent']; ?></td>
                                <td><?php echo $rows['date']; ?></td>
                            </tr>
                        <?php
                        }
                        ?>
                    </table>
                </div>
            </div>
        </div>

</body>

</html>