#pragma checksum "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Details.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "934a6b22a4e6c7babfea4d02feafa76f74ec0d03"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Words_Details), @"mvc.1.0.view", @"/Views/Words/Details.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\_ViewImports.cshtml"
using Daffodill.Web;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\_ViewImports.cshtml"
using Daffodill.Web.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"934a6b22a4e6c7babfea4d02feafa76f74ec0d03", @"/Views/Words/Details.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"1ceee3725168b78c6e2a1191757b79f6cdad92fc", @"/Views/_ViewImports.cshtml")]
    public class Views_Words_Details : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Daffodill.Domain.Words>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Details.cshtml"
  
    ViewData["Title"] = "Details";
    Layout = "~/Views/Shared/_Layout.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
#nullable restore
#line 8 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Details.cshtml"
Write(await Html.PartialAsync("_WordDetailsPartialView", Model));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Daffodill.Domain.Words> Html { get; private set; }
    }
}
#pragma warning restore 1591
