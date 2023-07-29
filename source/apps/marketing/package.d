module apps.marketing;

mixin(ImportPhobos!());

public { // required uim libraries
  import uim.core;
  import uim.oop;
  import uim.apps;
}

public { // admin-marketing libraries
  import apps.marketing.controllers;
  import apps.marketing.views;
}

static this() {
  // Create App
  auto myApp = App("marketingApp", "apps/marketing");

  // Customize App
  with (myApp) {
    importTranslations;
    addControllers([
      "marketing.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("marketing.index")),
      Route("/", HTTPMethod.GET, controller("marketing.index"))
    ); 
  }

  // Register App
  AppRegistry.register("apps.marketing", myApp);
}