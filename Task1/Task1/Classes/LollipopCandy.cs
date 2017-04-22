﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Task1.Classes
{
   public class LollipopCandy:Candy
    {
        private readonly string _color;
        public string Color { get { return _color; } }
        public LollipopCandy(string name, double weight, double sugar, string form, string color)
            : base(name, weight, sugar, form)
        {
            _color = color;
        }
    }
}