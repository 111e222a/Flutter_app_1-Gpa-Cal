

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
        backgroundColor:Colors.redAccent,
        title:Text('Gpa-Cal',style:TextStyle(color:Colors.white)),
        centerTitle: true,
        elevation:0,
     

        ),
        body: MyCustomForm(),
        backgroundColor: Colors.white,
      ),
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
  
  
  
    
    var x=new List();
    var x1=new List();
    var x2=new List();
    var y;
    var sum;
    var sum1;
    var gpa;
    var gpa1;
    bool open=false;
    bool btn=true;
     
    
    String text="hello";
    var a=0;
    bool n;
    change()
    {
      setState(() {
              text="7";
              y=int.parse(y);
              x=new List(y);
              x1=new List(y);
              x2=new List(y);
              a++;
              if(y!=null)
              open=true;
              n=false;
              gpa=null;
              if(y>0)
              btn=false;
            });
    }
    solve()
    {
   
      sum=0;
      sum1=0;
         for(var i=0;i<y;i++)
          {
             
            x2[i]= int.parse(x1[i])*x[i];
            sum=sum+ x2[i];
            sum1= sum1+ int.parse(x1[i]);
            
             
          }
          gpa=sum/sum1;
            print(gpa);
            for(var i=0;i<y;i++)
            {
              if(x[i]==Null || x1[i]==Null)
              gpa="Null";
            }
          
            print(gpa);
           
             
          
    }
    change11()
    {
       setState((){
              gpa=sum/sum1;
              gpa=gpa.toStringAsFixed(2);
              gpa1=gpa;
              btn=true;
              y=0;
              open=false;
              n=false;

            });

    }
    change1(String A){
    if(A=="A")
    return 4.0;
    else if(A=="A-")
    return 3.7;
    else if(A=="B+")
    return 3.33;
    else if(A=="B")
    return 3.0;
    else if(A=="B-")
    return 2.7;
    else if(A=="C+")
    return 2.33;
    else if(A=="C")
    return 2.0;
    else if(A=="C-")
    return 1.7;
    else if(A=="D+")
    return 1.33;
    else if(A=="D")
    return 1.0;
    else if(A=="F")
    return 0;

    
    }
  @override

  Widget build(BuildContext context) {
    
print(1);
    return  Scrollbar(
      child: Container(
        
        child:  SingleChildScrollView(

child:Padding(
  padding: const EdgeInsets.all(15.0),
  child:   Column(
  
    children: [
      SizedBox(height:10),
      if(btn==true) 
      TextField(
  
                              onChanged: (value) => y = value, 
                              decoration: InputDecoration(
                              border:  OutlineInputBorder(),
                              enabledBorder: const OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey, width: 0.0),
    ),
    focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey[500]) ),
                              labelText: 'Enter no of subjects',
                              labelStyle: TextStyle(color:Colors.grey[500]) 
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters:<TextInputFormatter> [FilteringTextInputFormatter.digitsOnly],
                              cursorColor:Colors.grey[500],
                            ),
  
                    
      SizedBox(height:20),
      if(btn==true)
      RaisedButton( 
      color:Colors.redAccent,
      textColor:Colors.white,
    onPressed: () {   

            change();
  
    },
  
    child: Text('Enter'),),
      SizedBox(height:20),

      if(btn==false)
     
      Text('Try with capitals while entering your grades.'),
    
      SizedBox(height:20),
      
        Row(

        children: [

          Expanded(
  
  
  
            child: Padding(

              padding: const EdgeInsets.symmetric(horizontal:5,vertical:5),

              child: Wrap(
  
              spacing:20,
              runSpacing: 20,
  
                children: [
  
      
  
                  if(y!=null)
  
      
  
                        for(var i=0;i<y;i++)

                   TextField(
                              decoration: InputDecoration(

                              border:  OutlineInputBorder(),

                              labelText: 'Enter your grade',
                              labelStyle: TextStyle(color:Colors.grey[500]) ,
                              
                              
                                        enabledBorder:  OutlineInputBorder(
      borderSide:  BorderSide(color: Colors.grey[300], width: 0.0),
    ),
    focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey[500]) ),
                              ),
                              cursorColor:Colors.grey[500],
                              onChanged: (value) => x[i] =change1(value), 

                            ),
                             
            
                ],
                
      
  
              ),
  
      
  
            ),
  
      
  
          ),
  
      
  
          SizedBox(height:30),
  
      
  
          Expanded(
  
      
  
            child: Padding(
  
              padding: const EdgeInsets.symmetric(horizontal:5,vertical:5),

  
                child:  Wrap(
  
                spacing:20,
                runSpacing:20,
  
                  children: [
  
      
  
                    if(y!=null)
  
      
  
                            for(var i=0;i<y;i++) 
  
      
  
                            TextField(

                                decoration: InputDecoration(
 
                                border:  OutlineInputBorder(),

                                labelText: 'Enter your credit hr',
  
      
  
                                   labelStyle: TextStyle(color:Colors.grey[500]) ,
                              
                              
                                        enabledBorder:  OutlineInputBorder(
      borderSide:  BorderSide(color: Colors.grey[300], width: 0.0),
    ),
    focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey[500]) ),
                              ),
                              cursorColor:Colors.grey[500],
                            
  
      
  
                                onChanged: (value) => x1[i] = value, 

                              ), 
                                  
     
                              ],
                              ),

            ),
  
      
  
          ),

        ],
  
      
  
      ),
      SizedBox(height:20),
  if(y!=null && y!=0 && open!=false)  
  RaisedButton( 
    color: Colors.redAccent,
    textColor: Colors.white,
   
    onPressed: () {   
      
         solve();
         change11();


    },
    
    child: Text('Calculate'),),
      SizedBox(height:20),
    
    if(gpa!=null)
    Text('Your gpa : $gpa1',style:TextStyle(fontSize:30))
    
    else if(n==false)
    Text('Fill up all the fields correctly'),
      SizedBox(height:20),
    
    
    ],
  
  ),
),

        ),
      ),
    );
        
       
          
      
    
  }
  
}
