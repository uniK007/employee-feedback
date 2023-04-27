import 'package:flutter/material.dart';
import 'package:rating_app/login.dart';
import 'package:rating_app/success.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? dropdown1Value;
  String? dropdown2Value;
  String? dropdown3Value;
  String? dropdown4Value;

  List<String> departments = [
    'Engineering/Development',
    'Product Management',
    'Sales and Marketing',
    'Customer Support',
    'Finance and Accounting',
    'Human Resources',
    'Information Technology'
  ];
  List<String> designation = [
    'Software Engineer/Developer',
    'Technical Lead/Architect',
    'Product Manager/Owner',
    'Project Manager',
    'Quality Assurance/Test Engineer',
    'User Experience (UX) Designer',
    'Business Analyst',
    'Sales/Business Development Manager',
    'Technical Writer'
  ];

  List<String> employeeNames = [
    'Belen Lim',
    'Cal Barrett',
    'Kendall Greene',
    'Griffin Villanueva',
    'Monroe Middleton',
    'Misael Kerr',
    'Baylee Lewis',
    'Wyatt Gilmore',
    'Chanel Trejo',
    'Wesson Valentine',
    'August Shannon',
    'Eliel Sims',
    'Lena Hood',
    'Brixton Nava',
    'Scout Dillon',
    'Alvin Blankenship',
    'Rosalee Bond',
    'Roger Maldonado',
    'Elaina Burnett',
    'Davis Boyer',
    'Chaya Clements'
  ];
  List<String> feedBackVisibility = ['All', 'Management', 'Private'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 245, 243, 243),
        foregroundColor: const Color.fromARGB(255, 34, 114, 179),
        shadowColor: const Color.fromARGB(167, 99, 187, 231),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(110.0, 0, 0, 0),
          child: Text('Employee Board'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: DropdownButton(
                hint: const Text('Department'),
                value: dropdown1Value,
                onChanged: (newValue) {
                  setState(() {
                    dropdown1Value = newValue;
                  });
                },
                items: departments.map((option) {
                  return DropdownMenuItem(
                    value: option,
                    child: Text(
                      option,
                      textAlign: TextAlign.center,
                    ),
                  );
                }).toList(),
              ),
            ),
            Center(
              child: DropdownButton(
                hint: const Text('Designation'),
                value: dropdown2Value,
                onChanged: (newValue) {
                  setState(() {
                    dropdown2Value = newValue;
                  });
                },
                items: designation.map((option) {
                  return DropdownMenuItem(
                    value: option,
                    child: Text(option),
                  );
                }).toList(),
              ),
            ),
            Center(
              child: DropdownButton(
                hint: const Text('Employee Name'),
                value: dropdown3Value,
                onChanged: (newValue) {
                  setState(() {
                    dropdown3Value = newValue;
                  });
                },
                items: employeeNames.map((option) {
                  return DropdownMenuItem(
                    value: option,
                    child: Text(
                      option,
                      textAlign: TextAlign.center,
                    ),
                  );
                }).toList(),
              ),
            ),
            Center(
              child: DropdownButton(
                hint: const Text('Feedback Visibility'),
                value: dropdown4Value,
                onChanged: (newValue) {
                  setState(() {
                    dropdown4Value = newValue;
                  });
                },
                items: feedBackVisibility.map((option) {
                  return DropdownMenuItem(
                    value: option,
                    child: Text(option),
                  );
                }).toList(),
              ),
            ),
            const Center(
              child: Text('Give rating to Employee',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.black,
                  size: 35,
                ),
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.black,
                  size: 35,
                ),
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.black,
                  size: 35,
                ),
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.black,
                  size: 35,
                ),
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.black,
                  size: 35,
                ),
              ],
            ),
            TextFormField(
              maxLines: 11,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a description';
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: 'Enter your feedback (optional)',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SuccessPage()));
              },
              icon: const Icon(Icons.send),
              label: const Text('SUBMIT'),
            ),
          ],
        ),
      ),
    );
  }
}
