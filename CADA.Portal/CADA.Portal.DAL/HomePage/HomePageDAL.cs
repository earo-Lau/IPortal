using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CADA.Portal.Model;
using System.Data.Objects;
using CADA.Portal.Model.DataContext;

namespace CADA.Portal.DAL.HomePage
{
    internal class HomePageDAL:IDataReader<HomePage_Message>, IDataWriter<HomePage_Message>
        , IDataReader<Model.HomePage_Message_Log>, IDataWriter<HomePage_Message_Log>
    {
        #region HomePage_Message
        #region IDataReader

        IEnumerable<HomePage_Message> IDataReader<HomePage_Message>.ReadData()
        {
            using (CADA_PortalEntities context = MyObjectContext.GetScopedDataContext())
            {
                var message = (from msg in context.HomePage_Message
                               select msg);

                return message;
            }
        }

        IEnumerable<HomePage_Message> IDataReader<HomePage_Message>.ReadData(Func<HomePage_Message, bool> fun)
        {
            using (CADA_PortalEntities context = MyObjectContext.GetScopedDataContext())
            {
                var message = (from msg in context.HomePage_Message
                               select msg).Where(fun);

                return message;
            }
        }
        #endregion

        #endregion

        #region HomePage_Message_Log
        #region IDataReader
        IEnumerable<HomePage_Message_Log> IDataReader<HomePage_Message_Log>.ReadData()
        {
            using (CADA_PortalEntities context = MyObjectContext.GetScopedDataContext())
            {
                var message = (from msg in context.HomePage_Message_Log
                               select msg);

                return message;
            }
        }

        IEnumerable<HomePage_Message_Log> IDataReader<HomePage_Message_Log>.ReadData(Func<HomePage_Message_Log, bool> fun)
        {
            using (CADA_PortalEntities context = MyObjectContext.GetScopedDataContext())
            {
                var message = (from msg in context.HomePage_Message_Log
                               select msg).Where(fun);

                return message;
            }
        }
        #endregion

        #endregion
    }
}
