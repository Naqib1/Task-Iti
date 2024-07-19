import 'feed.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _Naqib();
}

class _Naqib extends State<SingUp> {
  bool isChecked = false;
  bool isVisibiliy = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.close,
                    size: 22,
                    weight: 16,
                    color: Colors.grey,
                  )),
              Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 8.0),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  labelText: 'Name',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  labelText: 'Email',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                obscureText: !isVisibiliy,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  labelText: 'Password',
                  filled: true,
                  suffixIcon: TextButton(
                    child: Text(isVisibiliy ? 'Hide' : 'Show'),
                    onPressed: () {
                      setState(() {
                        isVisibiliy = !isVisibiliy;
                      });
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.green,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() => isChecked = value!);
                    },
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                  ),
                  Text(
                    'I would like to receive your newsletter and other\npromotional information.',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Sign Up',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FeedBack()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50.0),
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: TextButton(
                  child: Text(
                    'Forgot your password?',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
