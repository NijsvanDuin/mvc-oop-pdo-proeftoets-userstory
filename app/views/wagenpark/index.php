<?php require(APPROOT . '/views/includes/header.php') ?>
<h3><?= $data['title'] ?></h3>
<table class="border border-black">
    <thead>
        <th>Type</th>
        <th>Kenteken</th>
        <th>Km stand Toevoegen</th>
    </thead>
    <tbody>
        <?php echo $data['rows'] ?>
    </tbody>
</table>
<?php require(APPROOT . '/views/includes/footer.php') ?>