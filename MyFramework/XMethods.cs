using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyFramework
{
    public static class XMethods
    {
        public static int ToInt(this object myobject )
        {
            return Convert.ToInt32(myobject);
        }

        public static bool ToBool(this object myobject)
        {
            if (myobject is int)
            {
                if (myobject.ToInt() > 0)
                    return true;
                else
                    return false;
            }

            if (myobject.ToString().ToUpper() == "TRUE")
                return true;
            else if (myobject.ToString().ToUpper() == "FALSE")
                return false;

            return (bool)myobject;
        }

        public static DateTime ToDate(this object myobject)
        {
            return Convert.ToDateTime(myobject);
        }

        public static decimal ToDec(this object myobject)
        {
            return Convert.ToDecimal(myobject);
        }
    }
}
