$(document).on("turbolinks:load", function () {
  $isMobile = $(window).width() <= 769 ? true : false;
  $("body").on("click", "#contact_btn", function () {
    console.log("hello");
    if (isSidebarOpen() && $("#contact_block").is(":visible")) {
      // $("#contact_block").fadeOut("slow");
      closeSidebar();
    } else if (isSidebarOpen() && $("#address_block").is(":visible")) {
      $("#address_block").hide();
      $("#contact_block").fadeIn("fast");
    } else {
      $("#address_block").hide();
      $("#contact_block").show();
      openSidebar();
    }
  });
  $("body").on("click", "#address_btn", function () {
    if (isSidebarOpen() && $("#address_block").is(":visible")) {
      // $("#address_block").fadeOut("slow");
      closeSidebar();
    } else if (isSidebarOpen() && $("#contact_block").is(":visible")) {
      $("#contact_block").hide();
      $("#address_block").fadeIn("fast");
    } else {
      $("#contact_block").hide();
      $("#address_block").show();
      openSidebar();
    }
  });
  $("body").on(
    "click",
    "#facebook_btn, #twitter_btn, #donate_btn",
    function () {
      if (isSidebarOpen()) {
        closeSidebar();
        // setTimeout(function () {
        //   $("#contact_block, #address_block").hide();
        // }, 500);
      }
    }
  );
});

function isSidebarOpen() {
  if ($("#sidebar_block").hasClass("sidebar-open")) {
    return true;
  } else {
    return false;
  }
}

function isMobile() {
  if ($("#sidebar_block").hasClass("sidebar-open")) {
    return true;
  } else {
    return false;
  }
}

function openSidebar() {
  if ($isMobile) {
    $(".sidebar").css("bottom", "0px");
  } else {
    $(".sidebar").css("left", "0px");
  }

  $("#sidebar_block").addClass("sidebar-open");
  // $("#icon_bar").css("left", "200px");
}

function closeSidebar() {
  if ($isMobile) {
    $(".sidebar").css("bottom", "-200px");
  } else {
    $(".sidebar").css("left", "-200px");
  }

  $("#sidebar_block").removeClass("sidebar-open");
  // $("#icon_bar").css("left", "0");
}
