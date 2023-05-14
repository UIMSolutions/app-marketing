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
