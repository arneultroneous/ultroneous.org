<?php

// Receive data
// TODO: validate
$date = $_REQUEST['date'];
$time = $_REQUEST['time'];
$timezone = $_REQUEST['timezone'];
$amount = $_REQUEST['amount'];
$currency = $_REQUEST['currency'];
$from = $_REQUEST['from'];
$to = $_REQUEST['to'];
$category = $_REQUEST['category'];
$reason = $_REQUEST['reason'];

// Compose transaction record
$record = <<<EOF
- date: $date
  time: $time
  timezone: $timezone
  amount: $amount
  currency: $currency
  from: $from
  to: $to
  category: $category
  reason: $reason
EOF;

// Ensure output directory exists
mkdir('output');

// Create file
$now = new DateTime();
$filename = $now->format("Y-m-d.H:i:s.O");
$filename = 'output/' . $filename . '.yml';
touch($filename);

// From http://php.net/manual/en/function.fwrite.php
// Let's make sure the file exists and is writable first.
if (is_writable($filename)) {

    // In our example we're opening $filename in append mode.
    // The file pointer is at the bottom of the file hence
    // that's where $record will go when we fwrite() it.
    if (!$handle = fopen($filename, 'a')) {
         throw new Exception("Cannot open file ($filename)");
         exit;
    }

    // Write $record to our opened file.
    if (fwrite($handle, $record) === FALSE) {
        throw new Exception("Cannot write to file ($filename)");
        exit;
    }

    fclose($handle);

} else {
    throw new Exception("The file $filename is not writable");
}
