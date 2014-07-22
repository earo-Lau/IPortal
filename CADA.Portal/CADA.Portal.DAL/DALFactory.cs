using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CADA.Portal.Model;

namespace CADA.Portal.DAL
{
    public static class DALFactory
    {
        private static IDictionary<string, object> _dALContainer;

        static DALFactory()
        {
            _dALContainer = new Dictionary<string, object>();
            _dALContainer.Add(MyConstant._HOMEPAGEDAL, new HomePage.HomePageDAL());
        }

        public static IDataReader<T> GetDataReader<T>(string key)
        {
            if (_dALContainer.ContainsKey(key))
            {
                return _dALContainer[key] as IDataReader<T>;
            }
            throw new KeyNotFoundException("不存在的Key");
        }

        public static IDataWriter<T> GetDataWriter<T>(string key)
        {
            if (_dALContainer.ContainsKey(key))
            {
                return _dALContainer[key] as IDataWriter<T>;
            }
            throw new KeyNotFoundException("不存在的Key");
        }
    }
}
