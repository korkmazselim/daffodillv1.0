#pragma checksum "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "6fc0085a331da8402c428f84e326719736dea20d"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Words_Index), @"mvc.1.0.view", @"/Views/Words/Index.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"6fc0085a331da8402c428f84e326719736dea20d", @"/Views/Words/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"1ceee3725168b78c6e2a1191757b79f6cdad92fc", @"/Views/_ViewImports.cshtml")]
    public class Views_Words_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Daffodill.Domain.Words>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Words", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Index", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "post", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Index.cshtml"
  
    ViewData["Title"] = "Index";
    Layout = "~/Views/Shared/_Layout.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral("<div class=\"row\">\r\n    <div class=\"col-sm-6\">\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "6fc0085a331da8402c428f84e326719736dea20d4547", async() => {
                WriteLiteral(@"
            <div class=""form-group row"">
                <div class=""col-md-10"">
                    <label for=""exampleInputEmail1"">Word</label>
                    <input type=""text"" class=""form-control form-control-sm"" name=""Words.English"" id=""wordInput"" placeholder=""Enter Word"">


                </div>
                <div class=""col-md-2"">
                    <label>&nbsp;</label>
                    <button class=""btn btn-sm btn-outline-secondary form-control form-control-sm"" id=""searchBtn"" name=""searchBtn"" type=""button"">Go</button>
                </div>
            </div>
            <div class=""form-group row"">
                <div class=""col-md-12"">
                    <label for=""exampleInputEmail1"">Word Note</label>
                    <input type=""text"" class=""form-control form-control-sm"" id=""wordInput"" name=""Words.WordNote"" placeholder=""Enter Word Note"">
                </div>
            </div>
            <hr />


");
#nullable restore
#line 30 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Index.cshtml"
             for (int i = 0; i < 5; i++)
            {


#line default
#line hidden
#nullable disable
                WriteLiteral("        <div class=\"form-group row\">\r\n            <div class=\"col-lg-12\">\r\n                <p><b>");
#nullable restore
#line 35 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Index.cshtml"
                  Write(@i + 1);

#line default
#line hidden
#nullable disable
                WriteLiteral(". Meaning</b></p>\r\n            </div>\r\n            <div class=\"col-sm-12\">\r\n                <input type=\"text\" class=\"form-control form-control-sm\"");
                BeginWriteAttribute("name", " name=\"", 1517, "\"", 1555, 3);
                WriteAttributeValue("", 1524, "Words.WordsMeanings[", 1524, 20, true);
#nullable restore
#line 38 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Index.cshtml"
WriteAttributeValue("", 1544, i, 1544, 2, false);

#line default
#line hidden
#nullable disable
                WriteAttributeValue("", 1546, "].Meaning", 1546, 9, true);
                EndWriteAttribute();
                BeginWriteAttribute("placeholder", " placeholder=\"", 1556, "\"", 1594, 4);
                WriteAttributeValue("", 1570, "Enter", 1570, 5, true);
#nullable restore
#line 38 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Index.cshtml"
WriteAttributeValue(" ", 1575, @i + 1, 1576, 9, false);

#line default
#line hidden
#nullable disable
                WriteAttributeValue("", 1585, ".", 1585, 1, true);
                WriteAttributeValue(" ", 1586, "Meaning", 1587, 8, true);
                EndWriteAttribute();
                WriteLiteral(">\r\n            </div>\r\n        </div>\r\n                <div class=\"form-group row\">\r\n                    <div class=\"col-sm-12\">\r\n                        <input type=\"text\" class=\"form-control form-control-sm\"");
                BeginWriteAttribute("name", " name=\"", 1804, "\"", 1846, 3);
                WriteAttributeValue("", 1811, "Words.WordsMeanings[", 1811, 20, true);
#nullable restore
#line 43 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Index.cshtml"
WriteAttributeValue("", 1831, i, 1831, 2, false);

#line default
#line hidden
#nullable disable
                WriteAttributeValue("", 1833, "].Description", 1833, 13, true);
                EndWriteAttribute();
                BeginWriteAttribute("placeholder", " placeholder=\"", 1847, "\"", 1898, 5);
                WriteAttributeValue("", 1861, "Enter", 1861, 5, true);
#nullable restore
#line 43 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Index.cshtml"
WriteAttributeValue(" ", 1866, @i + 1, 1867, 9, false);

#line default
#line hidden
#nullable disable
                WriteAttributeValue("", 1876, ".", 1876, 1, true);
                WriteAttributeValue(" ", 1877, "Meaning", 1878, 8, true);
                WriteAttributeValue("  ", 1885, "Description", 1887, 13, true);
                EndWriteAttribute();
                WriteLiteral(">\r\n                    </div>\r\n                </div>\r\n                <div class=\"form-group row\">\r\n");
#nullable restore
#line 47 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Index.cshtml"
                     for (int j = 0; j < 5; j++)
                    {

#line default
#line hidden
#nullable disable
                WriteLiteral("                        <label for=\"inputEmail3\" class=\"col-sm-2 col-form-label\">");
#nullable restore
#line 49 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Index.cshtml"
                                                                             Write(@j + 1);

#line default
#line hidden
#nullable disable
                WriteLiteral(". Exp.</label>\r\n                        <div class=\"col-sm-10\">\r\n                            <input type=\"text\" class=\"form-control form-control-sm\"");
                BeginWriteAttribute("name", " name=\"", 2311, "\"", 2367, 5);
                WriteAttributeValue("", 2318, "Words.WordsMeanings[", 2318, 20, true);
#nullable restore
#line 51 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Index.cshtml"
WriteAttributeValue("", 2338, i, 2338, 2, false);

#line default
#line hidden
#nullable disable
                WriteAttributeValue("", 2340, "].WordsExamples[", 2340, 16, true);
#nullable restore
#line 51 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Index.cshtml"
WriteAttributeValue("", 2356, j, 2356, 2, false);

#line default
#line hidden
#nullable disable
                WriteAttributeValue("", 2358, "].Example", 2358, 9, true);
                EndWriteAttribute();
                WriteLiteral(" id=\"inputEmail3\">\r\n                        </div>\r\n");
#nullable restore
#line 53 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Index.cshtml"
                    }

#line default
#line hidden
#nullable disable
                WriteLiteral("                    <div class=\"col-md-12\">\r\n                        <hr />\r\n                    </div>\r\n\r\n                </div>\r\n");
#nullable restore
#line 59 "C:\Users\user\source\repos\DailyPractice\LeetCode_All-In\Daffodill\Daffodill.Web\Views\Words\Index.cshtml"
            }

#line default
#line hidden
#nullable disable
                WriteLiteral("            <input type=\"submit\" value=\"save\" onclick=\"return confirm(\'Are you sure?\')\" />\r\n        ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Controller = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Action = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n    </div>\r\n    <div class=\"col-sm-6\">\r\n        <iframe style=\"position:fixed\" src=\"https://dictionary.cambridge.org/dictionary/english/welcome\" id=\"cambrideIframe\" width=\"800\" height=\"800\"></iframe>\r\n\r\n    </div>\r\n</div>\r\n\r\n");
            DefineSection("Scripts", async() => {
                WriteLiteral(@"
    <script>
        document.getElementById(""searchBtn"").addEventListener(""click"", () =>
        {
            var val = document.getElementById(""wordInput"").value;
            document.getElementById('cambrideIframe').src = ""https://dictionary.cambridge.org/dictionary/english/"" + val;
        });

        
    </script>
");
            }
            );
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