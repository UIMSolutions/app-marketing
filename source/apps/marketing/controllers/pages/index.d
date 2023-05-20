/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.marketing.controllers.pages.index;

import apps.marketing;
@safe:

class DMKTIndexPageController : DAPPPageController {
  mixin(ControllerThis!("MKTIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(MKTIndexView(this));
  }
}
mixin(ControllerCalls!("MKTIndexPageController"));
