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
  AppRegistry.register("apps.marketing",  
    App
    .name("marketingApp")
    .rootPath("/apps/marketing")
    .addRoute(Route("", HTTPMethod.GET, MKTIndexPageController))
    .addRoute(Route("/", HTTPMethod.GET, MKTIndexPageController)));
}