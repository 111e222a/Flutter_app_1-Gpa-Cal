
// @dart=2.10
 
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      home: MyCustomForm(),
        
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  
     
   
  
  @override

  Widget build(BuildContext context) {
    
 
    return Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:Colors.redAccent,
        title:Text('Bit Convertor',style:TextStyle(color:Colors.white)),
        centerTitle: true,
        elevation:0,
        ),
        body: Scrollbar(
          child:  SingleChildScrollView(
    child: Container(
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Text("Pick your required conversion."),
            SizedBox(height:20),
             ButtonTheme(
             minWidth:200,
             height:50,
              child:RaisedButton(
                     color:Colors.redAccent,
                     textColor:Colors.white,
                    child: Text('Decimal to Binary'),
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => dec_bin()),
                      );
                    },
                  ),
             ),
                SizedBox(height:10), 
             ButtonTheme(
             minWidth:200,
             height:50,
              child:RaisedButton(
                     color:Colors.redAccent,
                     textColor:Colors.white,
                    child: Text('Decimal to Hex'),
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => dec_hex()),
                      );
                    },
                  ),
             ),
                SizedBox(height:10), 
             ButtonTheme(
             minWidth:200,
             height:50,
              child:RaisedButton(
                     color:Colors.redAccent,
                     textColor:Colors.white,
                    child: Text('Decimal to Octal'),
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => dec_octal()),
                      );
                    },
                  ),
             ),
               
            SizedBox(height:10),
             ButtonTheme(
             minWidth:200,
             height:50,
              child:RaisedButton(
                     color:Colors.redAccent,
                     textColor:Colors.white,
                    child: Text('Hex to Decimal'),
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hex_dec()),
                      );
                    },
                  ),
             ),
                SizedBox(height:10),
                ButtonTheme(
                minWidth:200,
                height:50,
                child:RaisedButton(
                     color:Colors.redAccent,
                     textColor:Colors.white,
                     
                    child: Text('Hex to Octal'),
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hex_octal()),
                      );
                    },
                  ),
                ),
                SizedBox(height:10),
             ButtonTheme(
             minWidth:200,
             height:50,
              child:RaisedButton(
                     color:Colors.redAccent,
                     textColor:Colors.white,
                    child: Text('Hex to Binary'),
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hex_bin()),
                      );
                    },
                  ),
             ),
                SizedBox(height:10),
                  ButtonTheme(
             minWidth:200,
             height:50,
              child:RaisedButton(
                     color:Colors.redAccent,
                     textColor:Colors.white,
                    child: Text('Binary to Decimal'),
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Bin_dec()),
                      );
                    },
                  ),
             ),
                SizedBox(height:10),
                  ButtonTheme(
             minWidth:200,
             height:50,
              child:RaisedButton(
                     color:Colors.redAccent,
                     textColor:Colors.white,
                    child: Text('Binary to Octal'),
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Bin_octal()),
                      );
                    },
                  ),
             ),
                SizedBox(height:10),
                  ButtonTheme(
             minWidth:200,
             height:50,
              child:RaisedButton(
                     color:Colors.redAccent,
                     textColor:Colors.white,
                    child: Text('Binary to Hex'),
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Bin_hex()),
                      );
                    },
                  ),
             ),
                SizedBox(height:10),
                  ButtonTheme(
             minWidth:200,
             height:50,
              child:RaisedButton(
                     color:Colors.redAccent,
                     textColor:Colors.white,
                    child: Text('Octal to Decimal'),
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Octal_dec()),
                      );
                    },
                  ),
             ),
                SizedBox(height:10),
                  ButtonTheme(
             minWidth:200,
             height:50,
              child:RaisedButton(
                     color:Colors.redAccent,
                     textColor:Colors.white,
                    child: Text('Octal to Hex'),
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => octal_hex()),
                      );
                    },
                  ),
             ),
                SizedBox(height:10),
                  ButtonTheme(
             minWidth:200,
             height:50,
              child:RaisedButton(
                     color:Colors.redAccent,
                     textColor:Colors.white,
                    child: Text('Octal to Binary'),
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => octal_bin()),
                      );
                    },
                  ),
             ),
                SizedBox(height:10),
          ],
        ),
      ),
    ),
  )
                              ),

        ),
          backgroundColor:Colors.white,
    );

             
  }
  
}

class Bin_dec extends StatefulWidget {
  @override
  Bin_dec1 createState() {
    return Bin_dec1();
  }
}

class Bin_dec1 extends State<Bin_dec> {
  final textController_1 = TextEditingController();
  

   
  int ans=0;
  int num;
  int temp=0;
  var dec="";
  sol(var n)
   {
 String text=textController_1.text;

 bool b=false;
 
 print(n);
  if(num==0)
  b=true;
 int num1 = n;
 
 
  int dec_value = 0;

   
  int base = 1;
 
  int temp1 = num1;
if(text=="")
b=false;
   if(n==null)
 b=false;
 else
  while (temp1 != 0) {
    
    int last_digit = (temp1 % 10);
    if(last_digit==0 || last_digit==1 )
    b=true;
    else
    {
    b=false;
    break;
    }
    temp1 = temp1 ~/ 10 ;

    dec_value += last_digit * base;
  
    base = base * 2;
  }

  if(dec_value==null || n==null)
  b=false;
    setState(() 
    {
      if(text=="")

      b=false;
       if(b==true)
      {
        dec="Decimal number: " +dec_value.toString();
        b=false;
        n=null;       
      }
      else if(b==false || num==null)
      {
         dec="Enter a valid binary number (0 & 1)";
         n=null;       
      }
    });
    print(dec_value);
   }

  @override

  Widget build(BuildContext context) {
  print(dec);
    return  Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        
        backgroundColor:Colors.redAccent,
        title:Text('Binary to Decimal',style:TextStyle(color:Colors.white)),
        centerTitle: true,
        elevation:0,
        ),
        body:  
        Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
                TextField(
                              decoration: InputDecoration(

                              border:  OutlineInputBorder(),

                              labelText: 'Enter your Binary number',
                              labelStyle: TextStyle(color:Colors.grey[500]) ,
                              
                              
                                        enabledBorder:  OutlineInputBorder(
      borderSide:  BorderSide(color: Colors.grey, width: 0.0),
    ),
    focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey) ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters:<TextInputFormatter> [FilteringTextInputFormatter.digitsOnly],
                              
                              cursorColor:Colors.grey[500],
                              onChanged: (value) => num =int.parse(value)   , 
                              controller: textController_1,
                              
                            ),
              SizedBox(height:20),
              
              Center(
                child: Row(
                  children: [
                    RaisedButton(
                      color:Colors.redAccent,
                      textColor:Colors.white,
                      
                      onPressed: () {
                        sol(num);
                      },
                        
                      
                      child: Text('Convert'),
                    ),
                  
                
                SizedBox(width:20),
                
                
                RaisedButton(
                  color:Colors.redAccent,
                  textColor:Colors.white,
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCustomForm()),
                    );
                  },
                  
                  child: Text('Go back'),
                ),
                  ],
                ),
              ),
               SizedBox(height:20),
              
              Text('$dec'),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
            ],
          ),
        ),
      
    ),
    backgroundColor: Colors.white,
    );
  }
}


//Octal

class Octal_dec extends StatefulWidget {
  @override
  Octal_dec1 createState() {
    return Octal_dec1();
  }
}

class Octal_dec1 extends State<Octal_dec> {
  final textController_1 = TextEditingController();
  

   
  int ans=0;
  int num;
  int temp=0;
  var dec="";
  sol(var n)
   {
 String text=textController_1.text;

 bool b=false;
 int i=0;
 if(n==1)
 i=2;
 else 
 i=0;
 print(n);
  if(num==0)
  b=true;
 int num1 = n;
 
 
  int dec_value = 0;

   
  int base = 1;
 
  int temp1 = num1;
if(text=="")
b=false;
   if(n==null)
 b=false;
 else
  while (temp1 != 0) {
    
    int last_digit = (temp1 % 10);
    if(last_digit<8 )
    b=true;
    
    else
    {
    b=false;
    break;
    }
    i++;
    temp1 = temp1 ~/ 10 ;

    dec_value += last_digit * base;
  
    base = base * 8;
  }
  
  if(dec_value==null || n==null)
  b=false;
    setState(() 
    {
      if(text=="")

      b=false;
      //else if (dec_value==null || num==null )
      //  dec="Decimal number:";
       if(b==true)
      {
        dec="Decimal number: " +dec_value.toString();
        b=false;
        n=null;       
        //dec_value=null;
      }
      else if(b==false || num==null)
      {
         dec="Enter a valid octal number  (between 0 and 8)";
         n=null;       
      }
    });
    print(dec_value);
   }

  @override

  Widget build(BuildContext context) {
  print(dec);
    return  Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        
        backgroundColor:Colors.redAccent,
        title:Text('Octal to Decimal',style:TextStyle(color:Colors.white)),
        centerTitle: true,
        elevation:0,
        ),
        body:  
        Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
                TextField(
                              decoration: InputDecoration(

                              border:  OutlineInputBorder(),

                              labelText: 'Enter your Octal number',
                              labelStyle: TextStyle(color:Colors.grey[500]) ,
                              
                              
                                        enabledBorder:  OutlineInputBorder(
      borderSide:  BorderSide(color: Colors.grey, width: 0.0),
    ),
    focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey) ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters:<TextInputFormatter> [FilteringTextInputFormatter.digitsOnly],
                              
                              cursorColor:Colors.grey[500],
                              onChanged: (value) => num =int.parse(value)   , 
                              controller: textController_1,
                              
                            ),
              SizedBox(height:20),
              
              Center(
                child: Row(
                  children: [
                    RaisedButton(
                      color:Colors.redAccent,
                      textColor:Colors.white,
                      
                      onPressed: () {
                        sol(num);
                      },
                        
                      
                      child: Text('Convert'),
                    ),
                  
                
                SizedBox(width:20),
                
                
                RaisedButton(
                  color:Colors.redAccent,
                  textColor:Colors.white,
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCustomForm()),
                    );
                  },
                  
                  child: Text('Go back'),
                ),
                  ],
                ),
              ),
               SizedBox(height:20),
              
              Text('$dec'),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
            ],
          ),
        ),
      
    ),
    backgroundColor: Colors.white,
    );
  }

}


class Hex_dec extends StatefulWidget {
  @override
  Hex_dec1 createState() {
    return Hex_dec1();
  }
}

class Hex_dec1 extends State<Hex_dec> {
  final textController_1 = TextEditingController();
  

   
  int ans=0;
  String num;
  int temp=0;
  var dec="";
  sol(String n)
   {
 String text=textController_1.text;

 bool b=false;
 
 print(n);
  
 
 
  int dec_value = 0;

   
  int base = 1;
 
if(text=="")
b=false;
   if(n==null)
 b=false;
 else
  for(int i=num.length-1;i>=0;i--) 
  {
    if(num.codeUnitAt(i)>=48 && num.codeUnitAt(i)<=56)
    {
    dec_value += (num.codeUnitAt(i)-48) * base;
    base = base * 16;
    b=true;
    }
    else if(num.codeUnitAt(i)>=65 && num.codeUnitAt(i)<=70)
    {
    dec_value += (num.codeUnitAt(i)-55) * base;
    base = base * 16;
    b=true;
    }
    else
    {
      b=false;
      break;
    }
  }
  
  if(dec_value==null || n==null)
  b=false;
    setState(() 
    {
      if(text=="")

      b=false;
      //else if (dec_value==null || num==null )
      //  dec="Decimal number:";
       if(b==true)
      {
        dec="Decimal number: " +dec_value.toString();
        b=false;
        n=null;       
        //dec_value=null;
      }
      else if(b==false || num==null)
      {
         dec="Enter valid Hex number between A-F (capitals) and 0-9 e.g. A1, FF etc.";
         n=null;       
      }
    });
    print(dec_value);
   }

  @override

  Widget build(BuildContext context) {
  print(dec);
    return  Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        
        backgroundColor:Colors.redAccent,
        title:Text('Hex to Decimal',style:TextStyle(color:Colors.white)),
        centerTitle: true,
        elevation:0,
        ),
        body:  
        Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
                TextField(
                              decoration: InputDecoration(

                              border:  OutlineInputBorder(),

                              labelText: 'Enter your Hex number',
                              labelStyle: TextStyle(color:Colors.grey[500]) ,
                              
                              
                                        enabledBorder:  OutlineInputBorder(
      borderSide:  BorderSide(color: Colors.grey, width: 0.0),
    ),
    focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey) ),
                              ),
                              
                              cursorColor:Colors.grey[500],
                              onChanged: (value) => num =value   , 
                              controller: textController_1,
                              
                            ),
              SizedBox(height:20),
              
              Center(
                child: Row(
                  children: [
                    RaisedButton(
                      color:Colors.redAccent,
                      textColor:Colors.white,
                      
                      onPressed: () {
                        sol(num);
                      },
                        
                      
                      child: Text('Convert'),
                    ),
                  
                
                SizedBox(width:20),
                
                
                RaisedButton(
                  color:Colors.redAccent,
                  textColor:Colors.white,
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCustomForm()),
                    );
                  },
                  
                  child: Text('Go back'),
                ),
                  ],
                ),
              ),
               SizedBox(height:20),
              
              Text('$dec'),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
            ],
          ),
        ),
      
    ),
    backgroundColor: Colors.white,
    );
  }

}

//dec to bin
class dec_bin extends StatefulWidget {
  @override
  dec_bin1 createState() {
    return dec_bin1();
  }
}
class dec_bin1 extends State<dec_bin> {
  final textController_1 = TextEditingController();
  

   
  var ans="";
  int num;
  int temp=0;
  
  var dec="";
  int len=1000;
  var bin=new List();
  sol(var n)
   {
 var bin=new List(1000);
 
 String text=textController_1.text;

 bool b=false;
 
 print(n);
  
 
 
  int dec_value = 0;

  int count=0;
  int base = 1;
  int temp=n;
if(n==0)
      {
        b=true;
        print(ans);
        ans="0";
      }
if(text=="")
b=false;
   if(n==null)
 b=false;
 else
 {
   for(int i=0;temp>0;i++)
   {
     bin[i]=temp%2;
     temp=temp~/2 ; 
     count++;
   }
   for(int i=count-1;i>=0;i--)
   {
       ans+=bin[i].toString();
   }
   b=true;
 } 
  if(ans==null || n==null)
  b=false;
    setState(() 
    {
      
      if(text=="")

      b=false;

       if(b==true)
      {

        dec="Binary number: " +ans;
        b=false;
        n=null;  
        count=0;
        ans="";  
         
      
      }
      else if(b==false || num==null)
      {
         dec="Enter valid decimal number";
         n=null; 
         ans="";
         count=0;      
      }
    });
    print(ans);

  @override
  Widget build(BuildContext context) {
   
    throw UnimplementedError();
  }
   }

  @override

  Widget build(BuildContext context) {
  print(dec);
    return  Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        
        backgroundColor:Colors.redAccent,
        title:Text('Decimal to Binary',style:TextStyle(color:Colors.white)),
        centerTitle: true,
        elevation:0,
        ),
        body:  
        Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
                TextField(
                              decoration: InputDecoration(

                              border:  OutlineInputBorder(),

                              labelText: 'Enter your decimal number',
                              labelStyle: TextStyle(color:Colors.grey[500]) ,
                              
                              
                                        enabledBorder:  OutlineInputBorder(
      borderSide:  BorderSide(color: Colors.grey, width: 0.0),
    ),
    focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey) ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters:<TextInputFormatter> [FilteringTextInputFormatter.digitsOnly],
                              cursorColor:Colors.grey[500],
                              onChanged: (value) => num =int.parse(value)   , 
                              controller: textController_1,
                              
                            ),
              SizedBox(height:20),
              
              Center(
                child: Row(
                  children: [
                    RaisedButton(
                      color:Colors.redAccent,
                      textColor:Colors.white,
                      
                      onPressed: () {
                        sol(num);
                      },
                        
                      
                      child: Text('Convert'),
                    ),
                  
                
                SizedBox(width:20),
                
                
                RaisedButton(
                  color:Colors.redAccent,
                  textColor:Colors.white,
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCustomForm()),
                    );
                  },
                  
                  child: Text('Go back'),
                ),
                  ],
                ),
              ),
               SizedBox(height:20),
              
              Text('$dec'),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
            ],
          ),
        ),
      
    ),
    backgroundColor: Colors.white,
    );
  }

}

//decimal to octal
class dec_octal extends StatefulWidget {
  @override
  dec_octal1 createState() {
    return dec_octal1();
  }
}
class dec_octal1 extends State<dec_octal> {
  final textController_1 = TextEditingController();
  

   
  var ans="";
  int num;
  int temp=0;
  
  var dec="";
  int len=1000;
  var bin=new List();
  sol(var n)
   {
 var bin=new List(1000);
 
 String text=textController_1.text;

 bool b=false;
 
 print(n);
  
 
 
  int dec_value = 0;

  int count=0;
  int base = 1;
  int temp=n;
if(n==0)
      {
        b=true;
  
        ans="0";
      }  
if(text=="")
b=false;
   if(n==null)
 b=false;
 else
 {
   for(int i=0;temp>0;i++)
   {
     bin[i]=temp%8;
     temp=temp~/8 ; 
     count++;
   }
   for(int i=count-1;i>=0;i--)
   {
       ans+=bin[i].toString();
   }
  
   
   b=true;
 }
  if(ans==null || n==null)
  b=false;
    setState(() 
    {
      if(text=="")

      b=false;

       if(b==true)
      {

        dec="Octal number: " +ans;
        b=false;
        n=null;  
        count=0;
        ans="";  
         
      
      }
      else if(b==false || num==null)
      {
         dec="Enter valid decimal number";
         n=null; 
         ans="";
         count=0;      
      }
    });
    print(ans);

  @override
  Widget build(BuildContext context) {
   
    throw UnimplementedError();
  }
   }

  @override

  Widget build(BuildContext context) {
  print(dec);
    return  Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        
        backgroundColor:Colors.redAccent,
        title:Text('Decimal to Octal',style:TextStyle(color:Colors.white)),
        centerTitle: true,
        elevation:0,
        ),
        body:  
        Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
                TextField(
                              decoration: InputDecoration(

                              border:  OutlineInputBorder(),

                              labelText: 'Enter your decimal number',
                              labelStyle: TextStyle(color:Colors.grey[500]) ,
                              
                              
                                        enabledBorder:  OutlineInputBorder(
      borderSide:  BorderSide(color: Colors.grey, width: 0.0),
    ),
    focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey) ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters:<TextInputFormatter> [FilteringTextInputFormatter.digitsOnly],
                              cursorColor:Colors.grey[500],
                              onChanged: (value) => num =int.parse(value)   , 
                              controller: textController_1,
                              
                            ),
              SizedBox(height:20),
              
              Center(
                child: Row(
                  children: [
                    RaisedButton(
                      color:Colors.redAccent,
                      textColor:Colors.white,
                      
                      onPressed: () {
                        sol(num);
                      },
                        
                      
                      child: Text('Convert'),
                    ),
                  
                
                SizedBox(width:20),
                
                
                RaisedButton(
                  color:Colors.redAccent,
                  textColor:Colors.white,
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCustomForm()),
                    );
                  },
                  
                  child: Text('Go back'),
                ),
                  ],
                ),
              ),
               SizedBox(height:20),
              
              Text('$dec'),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
            ],
          ),
        ),
      
    ),
    backgroundColor: Colors.white,
    );
  }

}
//dec to hex
class dec_hex extends StatefulWidget {
  @override
  dec_hex1 createState() {
    return dec_hex1();
  }
}
class dec_hex1 extends State<dec_hex> {
  final textController_1 = TextEditingController();

  var ans="";
  int num;
  int temp=0;
  
  var dec="";
  int len=1000;
  var bin=new List();
  sol(var n)
   {
 var bin=new List(1000);
 
 String text=textController_1.text;

 bool b=false;
 
 print(n);
  
 
 
  int dec_value = 0;

  int count=0;
  int base = 1;
  int temp=n;
  int temp1=n;
if(n==0)
      {
        b=true;
        print(ans);
        ans="0";
      }  
if(text=="")
b=false;
   if(n==null)
 b=false;
 else
 {
    
   for(int i=0;temp1>0;i++)
   {
     temp=temp1%16;
     if(temp<10)
     {
     bin[i]=String.fromCharCode(temp+48);
     count++;
     }
     else if(temp>=10)
     {
     bin[i]=String.fromCharCode(temp+55); 
     count++;
     }
     temp1=temp1~/16;
   }
   for(int i=count-1;i>=0;i--)
   {
       ans+=bin[i];
   }
  
   
   b=true;
 }
  if(ans==null || n==null)
  b=false;
    setState(() 
    {
      if(text=="")

      b=false;

       if(b==true)
      {

        dec="Hex number: " +ans;
        b=false;
        n=null;  
        count=0;
        ans="";  
         
      
      }
      else if(b==false || num==null)
      {
         dec="Enter valid decimal number";
         n=null; 
         ans="";
         count=0;      
      }
    });
    print(ans);

  @override
  Widget build(BuildContext context) {
   
    throw UnimplementedError();
  }
   }

  @override

  Widget build(BuildContext context) {
  print(dec);
    return  Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        
        backgroundColor:Colors.redAccent,
        title:Text('Decimal to Hex',style:TextStyle(color:Colors.white)),
        centerTitle: true,
        elevation:0,
        ),
        body:  
        Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
                TextField(
                              decoration: InputDecoration(

                              border:  OutlineInputBorder(),

                              labelText: 'Enter your decimal number',
                              labelStyle: TextStyle(color:Colors.grey[500]) ,
                              
                              
                                        enabledBorder:  OutlineInputBorder(
      borderSide:  BorderSide(color: Colors.grey, width: 0.0),
    ),
    focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey) ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters:<TextInputFormatter> [FilteringTextInputFormatter.digitsOnly],
                              cursorColor:Colors.grey[500],
                              onChanged: (value) => num =int.parse(value)   , 
                              controller: textController_1,
                              
                            ),
              SizedBox(height:20),
              
              Center(
                child: Row(
                  children: [
                    RaisedButton(
                      color:Colors.redAccent,
                      textColor:Colors.white,
                      
                      onPressed: () {
                        sol(num);
                      },
                        
                      
                      child: Text('Convert'),
                    ),
                  
                
                SizedBox(width:20),
                
                
                RaisedButton(
                  color:Colors.redAccent,
                  textColor:Colors.white,
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCustomForm()),
                    );
                  },
                  
                  child: Text('Go back'),
                ),
                  ],
                ),
              ),
               SizedBox(height:20),
              
              Text('$dec'),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
            ],
          ),
        ),
      
    ),
    backgroundColor: Colors.white,
    );
  }

}
//hex to binary
class Hex_bin extends StatefulWidget {
  @override
  Hex_bin1 createState() {
    return Hex_bin1();
  }
}

class Hex_bin1 extends State<Hex_bin> {
  final textController_1 = TextEditingController();
  String ans="";
  String num;
  int temp=0;
  var dec="";
  var bin=new List();
  sol(String n)
   {
bin=new List(1000);

 String text=textController_1.text;
 bool b=false;
 print(n);
  int dec_value = 0;
  int base = 1; 
  int count=0;
if(text=="" )
b=false;
   if(n==null)
 b=false;
 else
 {
  
  for(int i=num.length-1;i>=0;i--) 
  {
    if(num.codeUnitAt(i)>=48 && num.codeUnitAt(i)<=56)
    {
    dec_value += (num.codeUnitAt(i)-48) * base;
    base = base * 16;
    b=true;
    }
    else if(num.codeUnitAt(i)>=65 && num.codeUnitAt(i)<=70)
    {
    dec_value += (num.codeUnitAt(i)-55) * base;
    base = base * 16;
    b=true;
    }
    else
    {
      b=false;
      break;
    }
  }

 {
   temp=dec_value;
   if(temp==0)
  {
    ans="0";
    
  }
   for(int i=0;temp>0;i++)
   {
     bin[i]=temp%2;
     temp=temp~/2 ; 
     count++;
   }
   temp=dec_value;
   for(int i=count-1;i>=0;i--)
   {
       ans+=bin[i].toString();
   }
   
   count=0;
 } 
  if(ans==null || n==null)
  b=false;
   }
  
  if(dec_value==null || n==null)
  b=false;
    setState(() 
    {
      if(text=="")

      b=false;
      if(b==true)
      {
        dec="Binary number: " +ans;
        b=false;
        n=null; 
        count=0;
        ans="";      
      }
      else if(b==false || num==null)
      {
         dec="Enter valid Hex number between A-F (capitals) and 0-9 e.g. A1, FF etc.";
         n=null;  
         count=0;
         ans="";     
      }
    });
    print(dec_value);
   }

  @override

  Widget build(BuildContext context) {
  print(dec);
    return  Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        
        backgroundColor:Colors.redAccent,
        title:Text('Hex to Binary',style:TextStyle(color:Colors.white)),
        centerTitle: true,
        elevation:0,
        ),
        body:  
        Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
                TextField(
                              decoration: InputDecoration(

                              border:  OutlineInputBorder(),

                              labelText: 'Enter your Hex number',
                              labelStyle: TextStyle(color:Colors.grey[500]) ,
                              
                              
                              enabledBorder:  OutlineInputBorder(
      borderSide:  BorderSide(color: Colors.grey, width: 0.0),
    ),
    focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey) ),
                              ),
                                                                     
                              cursorColor:Colors.grey[500],
                              onChanged: (value) => num =value   , 
                              controller: textController_1,
                             
                               
                              
                              
                            ),
              SizedBox(height:20),
              
              Center(
                child: Row(
                  children: [
                    RaisedButton(
                      color:Colors.redAccent,
                      textColor:Colors.white,
                      
                      onPressed: () {
                        sol(num);
                      },
                        
                      
                      child: Text('Convert'),
                    ),
                  
                
                SizedBox(width:20),
                
                
                RaisedButton(
                  color:Colors.redAccent,
                  textColor:Colors.white,
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCustomForm()),
                    );
                  },
                  
                  child: Text('Go back'),
                ),
                  ],
                ),
              ),
               SizedBox(height:20),
              
              Text('$dec'),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
            ],
          ),
        ),
      
    ),
    backgroundColor: Colors.white,
    );
  }

}

//hex to octal

class Hex_octal extends StatefulWidget {
  @override
  Hex_octal1 createState() {
    return Hex_octal1();
  }
}

class Hex_octal1 extends State<Hex_octal> {
  final textController_1 = TextEditingController();
  String ans="";
  String num;
  int temp=0;
  var dec="";
  var bin=new List();
  sol(var n)
   {
bin=new List(1000);

 String text=textController_1.text;
 bool b=false;
 print(n);
  int dec_value = 0;
  int base = 1; 
  int count=0;
 
if(text=="" )
b=false;
   if(n==null)
 b=false;
 else
 {
  
  for(int i=num.length-1;i>=0;i--) 
  {
    if(num.codeUnitAt(i)>=48 && num.codeUnitAt(i)<=56)
    {
    dec_value += (num.codeUnitAt(i)-48) * base;
    base = base * 16;
    b=true;
    }
    else if(num.codeUnitAt(i)>=65 && num.codeUnitAt(i)<=70)
    {
    dec_value += (num.codeUnitAt(i)-55) * base;
    base = base * 16;
    b=true;
    }
    else
    {
      b=false;
      break;
    }
  }

 {
   temp=dec_value;
   if(temp==0)
   {
    
     ans="0";
   }
   for(int i=0;temp>0;i++)
   {
     bin[i]=temp%8;
     temp=temp~/8 ; 
     count++;
   }
   temp=dec_value;
   for(int i=count-1;i>=0;i--)
   {
       ans+=bin[i].toString();
   }
   
   count=0;
 } 
  if(ans==null || n==null)
  b=false;
   }
  
  if(dec_value==null || n==null)
  b=false;
    setState(() 
    {
   
    
      if(text=="")
      b=false;
      if(b==true)
      {
        dec="Octal number: " +ans;
        b=false;
        n=null; 
        count=0;
        ans="";      
      }
      else if(b==false || num==null)
      {
         dec="Enter valid Hex number between A-F (capitals) and 0-9 e.g. A1, FF etc.";
         n=null;  
         count=0;
         ans="";     
      }
    });
    print(dec_value);
   }

  @override

  Widget build(BuildContext context) {
  print(dec);
    return  Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        
        backgroundColor:Colors.redAccent,
        title:Text('Hex to Octal',style:TextStyle(color:Colors.white)),
        centerTitle: true,
        elevation:0,
        ),
        body:  
        Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
                TextField(
                              decoration: InputDecoration(

                              border:  OutlineInputBorder(),

                              labelText: 'Enter your Hex number',
                              labelStyle: TextStyle(color:Colors.grey[500]) ,
                              
                              
                              enabledBorder:  OutlineInputBorder(
      borderSide:  BorderSide(color: Colors.grey, width: 0.0),
    ),
    focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey) ),
                              ),
                                                                   
                              cursorColor:Colors.grey[500],
                              onChanged: (value) => num =value   , 
                              controller: textController_1,
                ),
                              
                            
              SizedBox(height:20),
              
              Center(
                child: Row(
                  children: [
                    RaisedButton(
                      color:Colors.redAccent,
                      textColor:Colors.white,
                      
                      onPressed: () {
                        sol(num);
                      },
                        
                      
                      child: Text('Convert'),
                    ),
                  
                
                SizedBox(width:20),
                
                
                RaisedButton(
                  color:Colors.redAccent,
                  textColor:Colors.white,
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCustomForm()),
                    );
                  },
                  
                  child: Text('Go back'),
                ),
                  ],
                ),
              ),
               SizedBox(height:20),
              
              Text('$dec'),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
            ],
          ),
        ),
      
    ),
    backgroundColor: Colors.white,
    );
  }

}

//bin to hex

class Bin_hex extends StatefulWidget {
  @override
   Bin_hex1 createState() {
    return Bin_hex1();
  }
}

class Bin_hex1 extends State<Bin_hex> {
  final textController_1 = TextEditingController();
  String ans="";
  int num;
  int temp=0;
  var dec="";
  var bin=new List();
  sol(var n)
   {
bin=new List(1000);

 String text=textController_1.text;
 bool b=false;
 print(n);
  int dec_value = 0;
  int base = 1; 
  int count=0;
  temp=n;
  int temp1;
if(n==0)
{
  ans="0";
  b=true;

}
if(text=="" )
b=false;
   if(n==null)
 b=false;
 else
 {
   while (temp != 0) {
    
    int last_digit = (temp % 10);
    if(last_digit==0 || last_digit==1 )
    b=true;
    else
    {
    b=false;
    break;
    }
    temp = temp ~/ 10 ;

    dec_value += last_digit * base;
  
    base = base * 2;
  }
   temp1=dec_value;
    
   temp=0;
   for(int i=0;temp1>0;i++)
   {
     temp=temp1%16;
     if(temp<10)
     {
     bin[i]=String.fromCharCode(temp+48);
     count++;
     }
     else if(temp>=10)
     {
     bin[i]=String.fromCharCode(temp+55); 
     count++;
     }
     temp1=temp1~/16;
   }
   for(int i=count-1;i>=0;i--)
   {
       ans+=bin[i];
   }
   
   count=0;
 
  if(ans==null || n==null)
  b=false;
}
  
  if(dec_value==null || n==null)
  b=false;
    setState(() 
    {
   
    
      if(text=="")
      b=false;
      if(b==true)
      {
        dec="Hex number: " +ans;
        b=false;
        n=null; 
        count=0;
        ans="";      
      }
      else if(b==false || num==null)
      {
         dec="Enter a valid binary number (0 & 1)";
         n=null;  
         count=0;
         ans="";     
      }
    });
    print(dec_value);
   }

  @override

  Widget build(BuildContext context) {
  print(dec);
    return  Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        
        backgroundColor:Colors.redAccent,
        title:Text('Binary to Hex',style:TextStyle(color:Colors.white)),
        centerTitle: true,
        elevation:0,
        ),
        body:  
        Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
                TextField(
                              decoration: InputDecoration(

                              border:  OutlineInputBorder(),

                              labelText: 'Enter your Binary number',
                              labelStyle: TextStyle(color:Colors.grey[500]) ,
                              
                              
                              enabledBorder:  OutlineInputBorder(
      borderSide:  BorderSide(color: Colors.grey, width: 0.0),
    ),
    focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey) ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters:<TextInputFormatter> [FilteringTextInputFormatter.digitsOnly],
                              cursorColor:Colors.grey[500],
                              onChanged: (value) => num =int.parse(value), 
                              controller: textController_1,
                ),
                              
                            
              SizedBox(height:20),
              
              Center(
                child: Row(
                  children: [
                    RaisedButton(
                      color:Colors.redAccent,
                      textColor:Colors.white,
                      
                      onPressed: () {
                        sol(num);
                      },
                        
                      
                      child: Text('Convert'),
                    ),
                  
                
                SizedBox(width:20),
                
                
                RaisedButton(
                  color:Colors.redAccent,
                  textColor:Colors.white,
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCustomForm()),
                    );
                  },
                  
                  child: Text('Go back'),
                ),
                  ],
                ),
              ),
               SizedBox(height:20),
              
              Text('$dec'),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
            ],
          ),
        ),
      
    ),
    backgroundColor: Colors.white,
    );
  }

}
//bin to octal
class Bin_octal extends StatefulWidget {
  @override
   Bin_octal1 createState() {
    return Bin_octal1();
  }
}

class Bin_octal1 extends State<Bin_octal> {
  final textController_1 = TextEditingController();
  String ans="";
  int num;
  int temp=0;
  var dec="";
  var bin=new List();
  sol(var n)
   {
 bin=new List(1000);

 String text=textController_1.text;
 bool b=false;
 print(n);
  int dec_value = 0;
  int base = 1; 
  int count=0;
  temp=n;
  int temp1;
if(n==0)
{
  ans="0";
  b=true;
}
if(text=="" )
b=false;
   if(n==null)
 b=false;
 else
 {
   while (temp != 0) {
    
    int last_digit = (temp % 10);
    if(last_digit==0 || last_digit==1 )
    b=true;
    else
    {
    b=false;
    break;
    }
    temp = temp ~/ 10 ;

    dec_value += last_digit * base;
  
    base = base * 2;
  }
  
   temp=dec_value;
   
   for(int i=0;temp>0;i++)
   {
     bin[i]=temp%8;
     temp=temp~/8;
     count++;
   }
   for(int i=count-1;i>=0;i--)
   {
       ans+=bin[i].toString();
   }
   count=0;
 
  if(ans==null || n==null)
  b=false;
}
  
  if(dec_value==null || n==null)
  b=false;
    setState(() 
    {
   
    
      if(text=="")
      b=false;
      if(b==true)
      {
        dec="Octal number: " +ans;
        b=false;
        n=null; 
        count=0;
        ans="";      
      }
      else if(b==false || num==null)
      {
         dec="Enter a valid binary (0 & 1)";
         n=null;  
         count=0;
         ans="";     
      }
    });
    print(dec_value);
   }

  @override

  Widget build(BuildContext context) {
  print(dec);
    return  Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        
        backgroundColor:Colors.redAccent,
        title:Text('Binary to Octal',style:TextStyle(color:Colors.white)),
        centerTitle: true,
        elevation:0,
        ),
        body:  
        Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
                TextField(
                              decoration: InputDecoration(

                              border:  OutlineInputBorder(),

                              labelText: 'Enter your Binary number',
                              labelStyle: TextStyle(color:Colors.grey[500]) ,
                              
                              
                              enabledBorder:  OutlineInputBorder(
      borderSide:  BorderSide(color: Colors.grey, width: 0.0),
    ),
    focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey) ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters:<TextInputFormatter> [FilteringTextInputFormatter.digitsOnly],
                              cursorColor:Colors.grey[500],
                              onChanged: (value) => num =int.parse(value), 
                              controller: textController_1,
                ),
                              
                            
              SizedBox(height:20),
              
              Center(
                child: Row(
                  children: [
                    RaisedButton(
                      color:Colors.redAccent,
                      textColor:Colors.white,
                      
                      onPressed: () {
                        sol(num);
                      },
                        
                      
                      child: Text('Convert'),
                    ),
                  
                
                SizedBox(width:20),
                
                
                RaisedButton(
                  color:Colors.redAccent,
                  textColor:Colors.white,
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCustomForm()),
                    );
                  },
                  
                  child: Text('Go back'),
                ),
                  ],
                ),
              ),
               SizedBox(height:20),
              
              Text('$dec'),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
            ],
          ),
        ),
      
    ),
    backgroundColor: Colors.white,
    );
  }

}
//octal to bin

class octal_bin extends StatefulWidget {
  @override
   octal_bin1 createState() {
    return octal_bin1();
  }
}

class octal_bin1 extends State<octal_bin> {
  final textController_1 = TextEditingController();
  String ans="";
  int num;
  int temp=0;
  var dec="";
  var bin=new List();
  sol(var n)
   {
 bin=new List(1000);

 String text=textController_1.text;
 bool b=false;
 print(n);
  int dec_value = 0;
  int base = 1; 
  int count=0;
  temp=n;
  int temp1;
if(n==0)
{
  ans="0";
  b=true;
}
if(text=="" )
b=false;
   if(n==null)
 b=false;
 else
 {
   while (temp != 0) {
    
    int last_digit = (temp % 10);
    if(last_digit<8)
    b=true;
    else
    {
    b=false;
    break;
    }
    temp = temp ~/ 10 ;

    dec_value += last_digit * base;
  
    base = base * 8;
  }
  
   temp=dec_value;
   
   for(int i=0;temp>0;i++)
   {
     bin[i]=temp%2;
     temp=temp~/2;
     count++;
   }
   for(int i=count-1;i>=0;i--)
   {
       ans+=bin[i].toString();
   }
   count=0;
 
  if(ans==null || n==null)
  b=false;
}
  
  if(dec_value==null || n==null)
  b=false;
    setState(() 
    {
   
    
      if(text=="")
      b=false;
      if(b==true)
      {
        dec="Binary number: " +ans;
        b=false;
        n=null; 
        count=0;
        ans="";      
      }
      else if(b==false || num==null)
      {
         dec="Enter a valid octal number  (between 0 and 8)";
         n=null;  
         count=0;
         ans="";     
      }
    });
    print(dec_value);
   }

  @override

  Widget build(BuildContext context) {
  print(dec);
    return  Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        
        backgroundColor:Colors.redAccent,
        title:Text('Octal to Binary',style:TextStyle(color:Colors.white)),
        centerTitle: true,
        elevation:0,
        ),
        body:  
        Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
                TextField(
                              decoration: InputDecoration(

                              border:  OutlineInputBorder(),

                              labelText: 'Enter your Octal number',
                              labelStyle: TextStyle(color:Colors.grey[500]) ,
                              
                              
                              enabledBorder:  OutlineInputBorder(
      borderSide:  BorderSide(color: Colors.grey, width: 0.0),
    ),
    focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey) ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters:<TextInputFormatter> [FilteringTextInputFormatter.digitsOnly],
                              cursorColor:Colors.grey[500],
                              onChanged: (value) => num =int.parse(value), 
                              controller: textController_1,
                ),
                              
                            
              SizedBox(height:20),
              
              Center(
                child: Row(
                  children: [
                    RaisedButton(
                      color:Colors.redAccent,
                      textColor:Colors.white,
                      
                      onPressed: () {
                        sol(num);
                      },
                        
                      
                      child: Text('Convert'),
                    ),
                  
                
                SizedBox(width:20),
                
                
                RaisedButton(
                  color:Colors.redAccent,
                  textColor:Colors.white,
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCustomForm()),
                    );
                  },
                  
                  child: Text('Go back'),
                ),
                  ],
                ),
              ),
               SizedBox(height:20),
              
              Text('$dec'),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
            ],
          ),
        ),
      
    ),
    backgroundColor: Colors.white,
    );
  }

}
//octal to hex

class octal_hex extends StatefulWidget {
  @override
   octal_hex1 createState() {
    return octal_hex1();
  }
}

class octal_hex1 extends State<octal_hex> {
  final textController_1 = TextEditingController();
  String ans="";
  int num;
  int temp=0;
  var dec="";
  var bin=new List();
  sol(var n)
   {
bin=new List(1000);

 String text=textController_1.text;
 bool b=false;
 print(n);
  int dec_value = 0;
  int base = 1; 
  int count=0;
  temp=n;
  int temp1;
if(n==0)
{
  ans="0";
  b=true;
}
if(text=="" )
b=false;
   if(n==null)
 b=false;
 else
 {
   while (temp != 0) {
    
    int last_digit = (temp % 10);
    if(last_digit<8 )
    b=true;
    else
    {
    b=false;
    break;
    }
    temp = temp ~/ 10 ;

    dec_value += last_digit * base;
  
    base = base * 8;
  }
   temp1=dec_value;
    
   temp=0;
   for(int i=0;temp1>0;i++)
   {
     temp=temp1%16;
     if(temp<10)
     {
     bin[i]=String.fromCharCode(temp+48);
     count++;
     }
     else if(temp>=10)
     {
     bin[i]=String.fromCharCode(temp+55); 
     count++;
     }
     temp1=temp1~/16;
   }
   for(int i=count-1;i>=0;i--)
   {
       ans+=bin[i];
   }
   
   count=0;
 
  if(ans==null || n==null)
  b=false;
}
  
  if(dec_value==null || n==null)
  b=false;
    setState(() 
    {
   
    
      if(text=="")
      b=false;
      if(b==true)
      {
        dec="Hex number: " +ans;
        b=false;
        n=null; 
        count=0;
        ans="";      
      }
      else if(b==false || num==null)
      {
         dec="Enter a valid octal number  (between 0 and 8)";
         n=null;  
         count=0;
         ans="";     
      }
    });
    print(dec_value);
   }

  @override

  Widget build(BuildContext context) {
  print(dec);
    return  Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        
        backgroundColor:Colors.redAccent,
        title:Text('Octal to Hex',style:TextStyle(color:Colors.white)),
        centerTitle: true,
        elevation:0,
        ),
        body:  
        Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
                TextField(
                              decoration: InputDecoration(

                              border:  OutlineInputBorder(),

                              labelText: 'Enter your Octal number',
                              labelStyle: TextStyle(color:Colors.grey[500]) ,
                              
                              
                              enabledBorder:  OutlineInputBorder(
      borderSide:  BorderSide(color: Colors.grey, width: 0.0),
    ),
    focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey) ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters:<TextInputFormatter> [FilteringTextInputFormatter.digitsOnly],
                              cursorColor:Colors.grey[500],
                              onChanged: (value) => num =int.parse(value), 
                              controller: textController_1,
                ),
                              
                            
              SizedBox(height:20),
              
              Center(
                child: Row(
                  children: [
                    RaisedButton(
                      color:Colors.redAccent,
                      textColor:Colors.white,
                      
                      onPressed: () {
                        sol(num);
                      },
                        
                      
                      child: Text('Convert'),
                    ),
                  
                
                SizedBox(width:20),
                
                
                RaisedButton(
                  color:Colors.redAccent,
                  textColor:Colors.white,
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCustomForm()),
                    );
                  },
                  
                  child: Text('Go back'),
                ),
                  ],
                ),
              ),
               SizedBox(height:20),
              
              Text('$dec'),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
              SizedBox(height:20),
            ],
          ),
        ),
      
    ),
    backgroundColor: Colors.white,
    );
  }

}