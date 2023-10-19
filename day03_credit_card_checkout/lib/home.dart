import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        backgroundColor: const Color.fromARGB(198, 15, 2, 29),
        title: const Text(""),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "My Cards",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage("assets/creditCard1.webp"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 150,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage("assets/creditCard2.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 150,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage("assets/creditCard3.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 150,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage("assets/creditCard4.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Income and Expenses",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const BalanceTracking(
                  icon: Icons.shopping_cart_rounded,
                  expenseDetail: "Salary",
                  date: "01/05/2023",
                  amount: "Rs.50000.00",
                  color: Color.fromARGB(255, 2, 137, 7),
                ),
                const BalanceTracking(
                  icon: Icons.shopping_cart_rounded,
                  expenseDetail: "Shopping",
                  date: "19/10/2023",
                  amount: "Rs.500.00",
                  color: Color.fromARGB(255, 254, 19, 2),
                ),
                const BalanceTracking(
                  icon: Icons.shopping_cart_rounded,
                  expenseDetail: "House Rent",
                  date: "01/08/2023",
                  amount: "Rs.4500.00",
                  color: Color.fromARGB(255, 254, 19, 2),
                ),
                const BalanceTracking(
                  icon: Icons.shopping_cart_rounded,
                  expenseDetail: "School",
                  date: "11/03/2023",
                  amount: "Rs.9000.00",
                  color: Color.fromARGB(255, 254, 19, 2),
                ),
                const BalanceTracking(
                  icon: Icons.shopping_cart_rounded,
                  expenseDetail: "Salary",
                  date: "01/05/2023",
                  amount: "Rs.50000.00",
                  color: Color.fromARGB(255, 2, 137, 7),
                ),
                const BalanceTracking(
                  icon: Icons.shopping_cart_rounded,
                  expenseDetail: "Hospital",
                  date: "09/11/2023",
                  amount: "Rs.500.00",
                  color: Color.fromARGB(255, 254, 19, 2),
                ),
                const BalanceTracking(
                  icon: Icons.shopping_cart_rounded,
                  expenseDetail: "University",
                  date: "29/05/2022",
                  amount: "Rs.10000.00",
                  color: Color.fromARGB(255, 254, 19, 2),
                ),
                const BalanceTracking(
                  icon: Icons.shopping_cart_rounded,
                  expenseDetail: "Salary",
                  date: "01/05/2023",
                  amount: "Rs.50000.00",
                  color: Color.fromARGB(255, 2, 137, 7),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 125,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink)),
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, "Payment");
                });
              },
              child: Container(
                width: 100,
                child: const Center(
                  child: Text(
                    "Pay",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BalanceTracking extends StatelessWidget {
  const BalanceTracking(
      {super.key,
      required this.icon,
      required this.expenseDetail,
      required this.date,
      required this.amount,
      required this.color});
  final icon;
  final expenseDetail;
  final date;
  final amount;
  final color;
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      color: const Color.fromARGB(255, 210, 202, 202),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.black,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                expenseDetail,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                date,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          Text(
            amount,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: color),
          ),
        ],
      ),
    );
  }
}
