<?php
    $conn = mysqli_connect("localhost", "root", "", "easybank");
    $res = $conn->query("SELECT * FROM customers");
    $user = $conn->query("SELECT * FROM user WHERE name='Bharat Pareek'");
    $r = $user->fetch_assoc();
    if(isset($_POST['send'])) 
    {
        $amt = $_POST['enterAmount'];
        $name = $_POST['enterName'];
        $query = $conn->query("SELECT * FROM customers WHERE name='$name'");
        if($query->num_rows > 0)
        {
            $cus = $query->fetch_assoc();
            $total = $cus['balance']+$amt;
            $newBalance = $r['balance']-$amt;
        
            if($r['balance'] >= $amt && $r['balance'] > 0 && $amt > 0)
            {
                $conn->query("UPDATE customers SET balance='$total' WHERE name='$name'");
                $trName = $cus['name'];
                $trEmail = $cus['email'];
                date_default_timezone_set('Asia/Kolkata');
                $time = date('H:i:s');
                $date = date('d-m-y');
                $conn->query("INSERT INTO transactions (name, email, money_sent,time,date) VALUES ('$trName','$trEmail','$amt','$time','$date')");
                $conn->query("UPDATE user SET balance='$newBalance' WHERE name='Bharat Pareek'");
                echo '<script>alert("Money Sent")</script>';
            }
            else
            {
                echo '<script type="text/javascript">
                        alert("Insufficient money or invaild amount");
                      </script>';
            }
        }
        else
        {
            echo '<script type="text/javascript">
                        alert("User not exist");
                  </script>';
        }

        header("redirect:0;url=customers.php");
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customers</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/9ab505fa84.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <!-- <script src="js/script.js"></script> -->
</head>

<body>
    <div class="container">
        <div class="row p-5 ps-0">
            <div class="col-3">
                <a href="index.html" class=""><i class="fa-solid fa-arrow-left"></i></a>
            </div>

            <div class="col-6 text-center">
                <h1>Name : <?php echo $r['name'];?></h1>
                <h3>Current Balance : ₹<?php echo $r['balance'];?></h3>
                <a href="transactions.php" class="btn btn-outline-primary" id="all-transaction">SEE ALL TRANSACTIONS</a>
                
                <button type="button" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    SEND MONEY
                </button>

                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <form action="" method="post">
                                <div class="modal-body">
                                
                                    <div class="input-group mb-3">
                                        <input type="text" id="enterName" name="enterName" class="form-control" placeholder="Recipient's name" aria-describedby="basic-addon2">
                                    </div>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">₹</span>
                                        </div>
                                        <input type="text" id="enterAmount" name="enterAmount" class="form-control" placeholder=" Enter Amount">
                                        <div class="input-group-append">
                                            <span class="input-group-text">.00</span>
                                        </div>
                                    </div>

                                
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <input type="submit" class="btn btn-primary" onclick="money_sent()" name="send" id="send" value="Send Money">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-3"></div>

            </div>

            <div class="row mt-5">
                <div class="col-md-12">
                    <table class="table table-hover text-center shadow">
                        <tr>
                            <th>S. No.</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Balance</th>
                        </tr>
                        <?php
                            while ($rows = $res->fetch_assoc()) 
                            {
                        ?>
                                <tr>
                                    <td><?php echo $rows['id']; ?></td>
                                    <td><?php echo $rows['name']; ?></td>
                                    <td><?php echo $rows['email']; ?></td>
                                    <td>₹<?php echo $rows['balance']; ?></td>
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