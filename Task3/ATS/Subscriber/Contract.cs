﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ATS.Contracts;
using ATS.Enums;

namespace ATS.Subscriber
{
   public class Contract:IContract
    {

       public int Number { get; private set; }
       public Subscriber Subscriber { get; private set; }
       public Tariff Tariff { get; private set; }
       public DateTime LastDateUpdateTariff;
       public double Ballance { get; private set; }

       public Contract(Subscriber subscriber, TariffType tariffType)
       {
           Number = new Random().Next(1000000,9999999);
           Subscriber = subscriber;
           Tariff = new Tariff(tariffType);
           LastDateUpdateTariff = DateTime.Now;
           Ballance = 13;
       }
       public bool ChangeTariff(TariffType tariffType)
       {
           if (DateTime.Now.AddMonths(-1)>=LastDateUpdateTariff)
           {
               LastDateUpdateTariff = DateTime.Now;
               Tariff = new Tariff(tariffType);
               Console.WriteLine("Tariff has changed!");
               return true;
           }
           Console.WriteLine("The tariff can be changed not more often than once a month!");
           return false;
       }
       public void ReplenishmentOfBalance(double money)
       {
           Ballance += money;
       }
       public void Debit(double money)
       {
           Ballance -= money;
       }
       
    }
}
