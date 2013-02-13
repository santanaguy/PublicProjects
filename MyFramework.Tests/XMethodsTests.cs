using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MyFramework;
namespace MyFramework.Tests
{
    public class when_converting_value_to_type
    {
        public object Value = new object();
    }

    [TestClass]
    public class and_type_is_int : when_converting_value_to_type
    {
        [TestMethod]
        public void and_string_valid_value_then_should_return_int()
        {
            Value = "2";
            Assert.AreEqual(2, Value.ToInt());
        }

        [TestMethod, ExpectedException(typeof(InvalidCastException))]
        public void and_date_value_then_should_throw_exception()
        {
            Value = DateTime.Now;
            Assert.AreEqual(0, Value.ToInt());
        }

        [TestMethod]
        public void and_value_is_true_should_return_1()
        {
            Value = true;
            Assert.AreEqual(1, Value.ToInt());
        }

        [TestMethod]
        public void and_value_is_false_should_return_0()
        {
            Value = false;
            Assert.AreEqual(0, Value.ToInt());
        }
    }

    [TestClass]
    public class and_type_is_bool : when_converting_value_to_type
    {
        [TestMethod]
        public void and_value_is_int_return_true_for_bigger_and_false_for_smaller_or_equal_to_0()
        {
            Value = 0;
            Assert.AreEqual(false, Value.ToBool());

            Value = 2;
            Assert.AreEqual(true, Value.ToBool());
        }

        [TestMethod]
        public void and_value_is_valid_string_should_return_according()
        {
            Value = "tRuE";
            Assert.AreEqual(true, Value.ToBool());

            Value = "FalSe";
            Assert.AreEqual(false, Value.ToBool());
        }

        [TestMethod, ExpectedException(typeof(InvalidCastException))]
        public void and_value_is_invalid_string_should_throw_exception()
        {
            Value = "maria";
            Value.ToBool();
        }

        [TestMethod, ExpectedException(typeof(InvalidCastException))]
        public void and_value_is_date_should_throw_exception()
        {
            Value = DateTime.Now;
            Value.ToBool();
        }
    }

    [TestClass]
    public class and_type_is_datetime : when_converting_value_to_type
    {
        [TestMethod, ExpectedException(typeof(FormatException))]
        public void and_value_is_string_should_convert_only_valid()
        {
            Value = "13-02-2013";
            Assert.AreEqual("13-02-2013", Value.ToDate().ToShortDateString());

            Value = "13-13-2013";
            Value.ToDate();
        }

        [TestMethod, ExpectedException(typeof(InvalidCastException))]
        public void and_value_is_invalid_should_throw()
        {
            Value = 25;
            Value.ToDate();
        }
    }

    [TestClass]
    public class and_type_is_decimal : when_converting_value_to_type
    {
        [TestMethod]
        public void and_value_is_string_should_convert_only_valid_ones()
        {
            Value = "0.0";
            Assert.AreEqual(0.0M, Value.ToDec());
            Value = "0.";
            Assert.AreEqual(0.0M, Value.ToDec());
        }

        [TestMethod]
        public void and_value_is_bool_should_convert()
        {
            Value = true;
            Assert.AreEqual(1.0M, Value.ToDec());
            Value = false;
            Assert.AreEqual(0.0M, Value.ToDec());
        }

        [TestMethod, ExpectedException(typeof(InvalidCastException))]
        public void and_value_is_datetime_should_throw()
        {
            Value = DateTime.Now;
            Value.ToDec();
        }
    }
}
