using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CADA.Portal.DAL
{
    public interface IDataReader<T>
    {
        /// <summary>
        /// 获取数据
        /// </summary>
        /// <returns></returns>
        IEnumerable<T> ReadData();
        /// <summary>
        /// 根据条件获取数据
        /// </summary>
        /// <param name="fun"></param>
        /// <returns></returns>
        IEnumerable<T> ReadData(Func<T, bool> fun);
    }
}
