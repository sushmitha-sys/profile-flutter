
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
   const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tasks=[]; 

  void addTask(task){
    tasks.add(task);
    setState(() {
      
    });

  } 
  TextEditingController taskcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
       backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        leading: const Icon(Icons.ac_unit_sharp),
        title: Text(
          "My Profile",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w900),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "SUSHMITHA",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                      color: Colors.blueGrey),
                ),
                Center(
                  heightFactor: 1.5,
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(60),
                      child: Image.network(
                        'image.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Name:Sushmitha",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w800,
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Email:sushmitha.20.2001@gmail.com",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w800,
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "USN:4MT19CS165",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w800,
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Age:20",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w800,fontSize: 20, color: Colors.blueGrey),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        
      


            //comment section        
          
          Positioned(
            
            bottom:0 ,
            child: Container(
              color: Colors.grey.shade400,
              height: 80,
              width: MediaQuery.of(context).size.width,
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                  children: [
                    Container(
                      height: 50,
                      width:MediaQuery.of(context).size.width-75,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color:Colors.blueGrey,
                          width:2.0
                          ),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: TextFormField(
                        controller: taskcontroller ,
                        decoration: const InputDecoration(
                          
                          border:InputBorder.none,hintText: "Comment",contentPadding: EdgeInsets.all(20.0)
                         ),

                      ),
                    ),
                    InkWell(
                      onTap: (){
                        if(taskcontroller.text.isNotEmpty){
                        addTask(taskcontroller.text);
                        taskcontroller.text="";
                  
                        }
                      },
                      child: Container(
                       height: 50,
                       width: 50,
                       
                       decoration:BoxDecoration(
                         borderRadius: BorderRadius.circular(25),
                         color: Colors.blueGrey,
                        ),
                        child:const Icon(Icons.send,
                        color: Colors.white)
                      
                    
                    
                      ),
                    )
                  ],
                ),
              )
            ),
          ),
          
        ],
      ),
      
      
    );
  }
}