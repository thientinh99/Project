//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TheNight_JustBuy.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.Web;

    public partial class Configuration
    {
        [DisplayName("Configuration ID")]
        public int ConfigID { get; set; }

        [DisplayName("Configuration Name")]
        public string ConfigName { get; set; }

        [DisplayName("Image")]
        public string ImageFileName { get; set; }

        public HttpPostedFileBase ImageFile { get; set; }
    }
}
