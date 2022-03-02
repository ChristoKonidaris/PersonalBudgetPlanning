using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace PROG6212_POE_19013888
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);
        }
    }
}
