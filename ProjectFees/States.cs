using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

namespace ProjectFees
{
    public class States
    {
        public List<State> StatesList = new List<State>();
        public States()
        {
            decimal OutOfAreaFee = 49.99m;

            StatesList.Add(new State("Select your state", "", 0m));
            StatesList.Add(new State("Alabama", "AL", OutOfAreaFee));
            StatesList.Add(new State("Alaska", "AK", OutOfAreaFee));
            StatesList.Add(new State("Arizona", "AZ", 2.99m));
            StatesList.Add(new State("Arkansas", "AR", OutOfAreaFee));
            StatesList.Add(new State("California", "CA", 16.99m));
            StatesList.Add(new State("Colorado", "CO", 2.99m));
            StatesList.Add(new State("Connecticut", "CT", OutOfAreaFee));
            StatesList.Add(new State("District of Columbia", "DC", OutOfAreaFee));
            StatesList.Add(new State("Delaware", "DE", OutOfAreaFee));
            StatesList.Add(new State("Florida", "FL", OutOfAreaFee));
            StatesList.Add(new State("Georgia", "GA", OutOfAreaFee));
            StatesList.Add(new State("Hawaii", "HI", OutOfAreaFee));
            StatesList.Add(new State("Idaho", "ID", 3.99m));
            StatesList.Add(new State("Illinois", "IL", OutOfAreaFee));
            StatesList.Add(new State("Indiana", "IN", OutOfAreaFee));
            StatesList.Add(new State("Iowa", "IA", OutOfAreaFee));
            StatesList.Add(new State("Kansas", "KS", OutOfAreaFee));
            StatesList.Add(new State("Kentucky", "KY", OutOfAreaFee));
            StatesList.Add(new State("Louisiana", "LA", OutOfAreaFee));
            StatesList.Add(new State("Oregon", "OR", 2.99m));
            StatesList.Add(new State("Nevada", "NV", 5.99m));
            StatesList.Add(new State("Montana", "MT", 8.99m));
            StatesList.Add(new State("Utah", "UT", 7.99m));
            StatesList.Add(new State("Washington", "WA", 8.99m));
            StatesList.Add(new State("Wyoming", "WY", 4.99m));
        }

        public decimal GetFeeForState(string twoLetterCode)
        {
            State state = StatesList.FirstOrDefault(f => f.TwoLetterCode.Equals(twoLetterCode.ToUpper()));
            return state.Fee;
        }
    }
}
