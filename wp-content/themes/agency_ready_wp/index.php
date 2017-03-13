<!DOCTYPE HTML>
<html lang="en">
  <head>
    <?php $activePage = "Work"; ?>

    <meta charset="utf-8">

    <title>Home | Thomas McCarten Portfolio</title>

    <meta name="description" content="Homepage of Manchester front-end web developer Thomas McCarten, with examples of work and blog posts.">
    <meta name="keywords" content="Thomas McCarten,Front-End,Design,Web Development,Logo Design,Illustrations,Photography">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" href="favicon.svg">

    <?php include 'assets/includes/fonts.php';?>

    <link rel="stylesheet" href="/assets/css/style.css">

  </head>

<body>
    <?php include_once('assets/includes/analyticstracking.php') ?>
    <?php get_header(); ?>

    <main class="page-wrapper" role="main" id="skipnav">

    <div class="wrapper index">

        <div class="work-tile intro">
          <div class="work-tile-inner">
            <p>Hello!</p><p>I'm a front-end web developer based in Manchester.</p><p><a href="contact.php" title="Thomas McCarten's contact page.">Get in touch.</a></p>
          </div>
        </div>

        <div class="work-tile">
          <a href="/work/logos.php" title="Logos by Thomas McCarten">
              <h2 class="title-box work small">Logos</h2>
                <img src="/assets/img/work/logos.png" alt="Low opacity logo with goat." height="288" width="288">
          </a>
        </div>

        <div class="work-tile">
          <a href="/work/illustration.php" title="Illustrations by Thomas McCarten">
              <h2 class="title-box work small">Illustration</h2>
                <img src="/assets/img/work/illustrations.png" alt="Low opacity illustration of boy with spiky hair." height="288" width="288">
          </a>
        </div>

        <div class="work-tile">
          <a href="/work/photography.php" title="Photography by Thomas McCarten">
              <h2 class="title-box work small">Photography</h2>
                <img src="/assets/img/work/photography.png" alt="Low opacity mountainous region." height="288" width="288">
          </a>
        </div>

        <div class="work-tile">
          <a href="/work/websites.php" title="Websites by Thomas McCarten">
              <h2 class="title-box work small">Websites</h2>
                <img src="/assets/img/work/websites.png" alt="Low opacity vector of laptop. " height="288" width="288">
          </a>
        </div>

        <div class="work-tile">
          <a href="/work/other.php" title="Various work by Thomas McCarten">
              <h2 class="title-box work small">Other</h2>
                <img src="/assets/img/work/other.png" alt="Low opacity broken up post-box." height="288" width="288">
          </a>
        </div>

        <div class="work-tile intro outro">
          <div class="work-tile-inner">
            <a href="http://twitter.com/thomasmccarten" title="Thomas McCarten's Twitter page.">twitter</a> |
            <a href="https://github.com/tmccarten" title="Thomas McCarten's Github page.">github</a>
          </div>
        </div>

      </div>
	  
	  <?php get_sidebar(); ?>

    </main>


    <?php get_footer(); ?>


</body>
</html>
