import 'package:flutter/material.dart';

class BizCard extends StatelessWidget{
  const BizCard({
    Key? key,
  }):super(key: key);



  // for each pair in the array `arrs`, we need to
  // find their absolute difference and also note the pair
  //for (int i = 0; i < arrs.Length; i++)
  //{
  //    for (int j = i + 1; j < arrs.Length; j++)
  //    {
  //        int absVal = Math.Abs(arrs[i] - arrs[j]);
  //        result.Add((arrs[i], arrs[j]), absVal);
  //    }
  //}
  //int[] a = { -2, 2, 4 };
  //


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/Screenshot (49).png")
            ),
            Text(
              'Ovo Baka',
              style: TextStyle(
                fontSize:40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico'
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',

              style: TextStyle(
                  fontSize:20.0,
                  color: Colors.teal.shade100,
                  fontFamily: 'Source Sans Pro',
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 10.0,
              width: 150,
              child: Divider(
                color: Colors.teal.shade50,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+234 7047474265',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0
                  ),
                ),
              )
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email_rounded,
                  color: Colors.teal,
                ),
                title: Text(
                  'aov.nathan@gmail.com',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }

}
