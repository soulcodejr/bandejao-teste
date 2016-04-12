$(document).ready(function(){

//FUNCTIONS

function getSelectOptionValue(divSelect) {
    //var x = document.getElementById("selectDinner");
    var x = document.getElementById(divSelect);
    //var txt = "All options: "; 
    var i;
    for (i = 0; i < x.length; i++) {
        //txt = txt + "\n" + x.options[i].value; 
       var item = $("#" + divSelect + " option[value='" + x.options[i].value + "']").text();
       $("#" + divSelect + " option[value='" + x.options[i].value + "']").text(breakDate(item));

    }
    //alert(txt);
}




  function getWeekDay(day, month, year){
     var date = new Date(year, month - 1, day);
     var days = ["Domingo", "Segunda-Feira", "Terça-Feira", "Quarta-Feira", "Quinta-Feira", "Sexta-Feira", "Sábado" ]
     return days[ date.getDay() ];
  }

  function breakDate(date){
    newDate  = date.split("-");
    year     = newDate[0];
    month    = newDate[1];
    day      = newDate[2];

    return getWeekDay(day, month, year);

  }

  function daysOfWeek( dayOfWeek ){
     switch(dayOfWeek){
      case "Monday":
        return "Segunda-Feira";
      case "Tuesday":
        return "Terça-Feira";
      case "Wednesday":
        return "Quarta-Feira";
      case "Thursday":
        return "Quinta-Feira";
      case "Friday":
        return "Sexta-Feira";
      case "Saturday":
        return "Sábado";
      case "Sunday":
        return "Domingo";
      default:
       return "Não existe";
     }
  }





 //Select Dinners

  function getJSONdinner(){
        var id_dinner = $('#selectDinner').val();

      var dinner = $.getJSON("/dinners/"+ id_dinner +".json", function(json){

        var date           = json.date;
        var soup           = json.soup;
        var accompaniment1 = json.accompaniment1;
        var accompaniment2 = json.accompaniment2;
        var accompaniment3 = json.accompaniment3;
        var garnish        = json.garnish;
        var protein1       = json.protein1;
        var protein2       = json.protein2;
        var dessert        = json.dessert;
        var juice          = json.juice;
        var updated_at     = json.updated_at;
 
        $(".soup").text(soup);
        $(".accompaniment1").text(accompaniment1);
        $(".accompaniment2").text(accompaniment2);
        $(".accompaniment3").text(accompaniment3);
        $(".garnish").text(garnish.toUpperCase());
        $(".protein1").text(protein1.toUpperCase());
        $(".protein2").text(protein2.toUpperCase());
        $(".dessert").text(dessert.toUpperCase());
        $(".juice").text(juice.toUpperCase());
       // $(".updated_at").text(updated_at);


      });
     }




//Select Lunches

  function getJSONlunch(){
        var id_lunch = $('#selectLunch').val();

      var lunch = $.getJSON("/lunches/"+ id_lunch +".json", function(json){

        var date           = json.date;
        var salad1         = json.salad1;
        var salad2         = json.salad2;
        var accompaniment1 = json.accompaniment1;
        var accompaniment2 = json.accompaniment2;
        var accompaniment3 = json.accompaniment3;
        var garnish        = json.garnish;
        var protein1       = json.protein1;
        var protein2       = json.protein2;
        var protein3       = json.protein3;
        var dessert        = json.dessert;
        var juice          = json.juice;
        var updated_at     = json.updated_at;


        $(".salad1").text(salad1);
        $(".salad2").text(salad2.toUpperCase());
        $(".accompaniment1").text(accompaniment1);
        $(".accompaniment2").text(accompaniment2);
        $(".accompaniment3").text(accompaniment3);
        $(".garnish").text(garnish.toUpperCase());
        $(".protein1").text(protein1.toUpperCase());
        $(".protein2").text(protein2.toUpperCase());
        $(".protein3").text(protein3.toUpperCase());
        $(".dessert").text(dessert.toUpperCase());
        $(".juice").text(juice.toUpperCase());
       // $(".updated_at").text(updated_at);


      });
     }




//FUNCTIONS


//Dashboard


//Dashboard
  $("a#lunchID").click(function(){
    getJSONlunch();
     $("#selectLunch").show();
     $("#selectDinner").hide();
  });

  $("a#dinnerID").click(function(){
    getJSONdinner();
    $("#selectDinner").show();
    $("#selectLunch").hide();
  });
//Dashboard

//Select button

  	
  	$("button[name$='menu']").click(function(){
       var test = $(this).val();
 
       $("div.desc").hide();
       $("#Menu" + test).show();
  	});

//END select button

 
 //Register dinners


  $("#registerDinner").submit(function(){

      var valueFormDinner = $("#registerDinner").serialize();
   $.ajax({
 
      type: "POST",
      url: '/dinners/create',
      data: valueFormDinner,
      success: function(){
        swal("O Jantar foi cadastrado com sucesso.");
      } ,
    error: function(xhr, textStatus, errorThrown){
       sweetAlert("Oops...", "O Jantar não foi cadastrado! O campo data é obrigatório.", "error");
    }
      
   });


 });


 //Register Dinners

 //Register Lunches


 $("#registerLunches").submit(function(){

      var valueFormLunch = $("#registerLunches").serialize();
   $.ajax({
 
      type: "POST",
      url: '/lunches/create',
      data: valueFormLunch,
      success: function(){
      	swal("O Almoço foi cadastrado com sucesso.");
      } ,
    error: function(xhr, textStatus, errorThrown){
       sweetAlert("Oops...", "O Almoço não foi cadastrado! O campo data é obrigatório.", "error");
    }
      
   });


 });
 
 //Register Lunches



  // var dataT = new Date();
   //var month = dataT.getMonth() + 1;

   //if( month < 10){
    // month = "0" + month
   //}

   //var day   = dataT.getDate();
   //var year  = dataT.getFullYear();
   //var data_today = year + "-" + month  + "-" + day;
  
   $("select#selectDinner").change(function(){
      getJSONdinner();
      getSelectOptionValue("selectDinner");
   });

   $("#selectDinner option:selected").each(function(){
      getJSONdinner();
      getSelectOptionValue("selectDinner");
   });

   //getSelectOptionValue("selectDinner");
   //getSelectOptionValue("selectLunch");
 //Select Dinners

 

 //Select Dinners




    
   $("select#selectLunch").change(function(){
      getJSONlunch();
      getSelectOptionValue("selectLunch");
   });

   $("#selectLunch option:selected").each(function(){
      //data_today.text();
      getJSONlunch();
      getSelectOptionValue("selectLunch");
   });

 //Select Lunches


  });



//Change color button


 