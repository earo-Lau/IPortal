using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.CompilerServices;
using System.Data.Objects;
using System.Data.EntityClient;

[assembly: InternalsVisibleTo("CADA.Portal.DAL")]
namespace CADA.Portal.Model
{
    internal partial class CADA_PortalEntities : ObjectContext
    {
    }
}
