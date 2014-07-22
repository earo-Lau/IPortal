using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Web;
using System.Configuration;
using System.Data.Objects;

namespace CADA.Portal.Model.DataContext
{
    public static class MyObjectContext
    {
        private static string __ConnectionString;
        public static string ConnectionString
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["CADA_PortalEntities"].ConnectionString;
            }
        }

        //获取连接对象方法
        public static CADA_PortalEntities GetScopedDataContext()
        {
            if (HttpContext.Current != null)
                return GetWebRequestScopedDataContextInternal(null, ConnectionString);

            return GetThreadScopedDataContextInternal(null, ConnectionString);
        }

        /// <summary>
        /// 获取当前请求的操作数据对象
        /// </summary>
        /// <param name="type"></param>
        /// <param name="key"></param>
        /// <param name="connectionString"></param>
        /// <returns></returns>
        static CADA_PortalEntities GetWebRequestScopedDataContextInternal(string key, string connectionString)
        {
            CADA_PortalEntities context;

            if (HttpContext.Current == null)
            {
                if (connectionString == null)
                    context = new CADA_PortalEntities();
                else
                    context = new CADA_PortalEntities(connectionString);

                return context;
            }

            // *** Create a unique Key for the Web Request/Context 
            if (key == null)
                key = "__WRSCDC_" + HttpContext.Current.GetHashCode().ToString("x") + Thread.CurrentContext.ContextID.ToString() + ".MyObjectContext";

            context = HttpContext.Current.Items[key] as CADA_PortalEntities;
            if (context == null)
            {
                if (connectionString == null)
                    context = new CADA_PortalEntities();
                else
                    context = new CADA_PortalEntities(connectionString);

                if (context != null)
                    HttpContext.Current.Items[key] = context;
            }

            return context;
        }

        static CADA_PortalEntities GetThreadScopedDataContextInternal(string key, string connectionString)
        {
            if (key == null)
                key = "__WRSCDC_" + Thread.CurrentContext.ContextID.ToString() + ".MyObjectContext";

            LocalDataStoreSlot threadData = Thread.GetNamedDataSlot(key);
            CADA_PortalEntities context = null;
            if (threadData != null)
                context = Thread.GetData(threadData) as CADA_PortalEntities;

            if (context == null)
            {
                if (connectionString == null)
                    context = new CADA_PortalEntities();
                else
                    context = new CADA_PortalEntities(connectionString);

                if (context != null)
                {
                    if (threadData == null)
                        threadData = Thread.AllocateNamedDataSlot(key);

                    Thread.SetData(threadData, context);
                }
            }

            return context;
        }
    }
}
