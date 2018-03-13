
function area(radius) {
    return (radius*radius*3.14) ;
}
document.write("円の面積は"+area(5)+"cm2です");
document.write("<br>")
document.write("円の面積は"+area(7)+"cm2です");
document.write("<br>")
document.write("円の面積は"+area(10)+"cm2です");
document.write("<br>")

function sum(adult,child) {
    return((500*adult)+(200*child)) ;
}
document.write("合計金額は"+sum(2,4)+"円です");
document.write("<br>")
document.write("合計金額は"+sum(1,5)+"円です");
document.write("<br>")
document.write("合計金額は"+sum(3,7)+"円です");
document.write("<br>")

for(var i=1 ; i<=5 ; i++){
    document.write("★");
}
document.write("<br>")
document.write("<br>")

for(var i=1 ; i<=6 ; i++){
    document.write("★");
    if(i===3){
       document.write("<br>")
    }
}
document.write("<br>")
document.write("<br>")

for(var i=1 ; i<=10 ; i++){
    document.write("☆");
    if(i===5){
       document.write("<br>")
    }
}
document.write("<br>")
document.write("<br>")

for(var i=1 ; i<=20 ; i++){
    document.write("★");
    if(i%5===0){
       document.write("<br>")
    }
}
document.write("<br>")
document.write("<br>")

for(var i=1 ; i<=12 ; i++){
    document.write("★");
    if(i%3===0){
       document.write("<br>")
    }
}
document.write("<br>")
document.write("<br>")

for(var i=1 ; i<=3 ; i++){
    document.write("★");
    document.write("☆");
    document.write("★");
    document.write("<br>")
}
document.write("<br>")
document.write("<br>")

for(var i=1 ; i<=5 ; i++){
    document.write("★");
    document.write("☆");
    document.write("★");
    document.write("☆");
    document.write("★");
    document.write("<br>")
}
document.write("<br>")
document.write("<br>")

var i=0 ;
while(i<=5){
i++;
    switch(i){
        case 1:
        document.write("★");
        document.write("<br>")
        break;
        case 2:
        document.write("★");
        document.write("★");
        document.write("<br>")
        break;
        case 3:
        document.write("★");
        document.write("★");
        document.write("★");
        document.write("<br>")
        break;
        case 4:
        document.write("★");
        document.write("★");
        document.write("★");
        document.write("★");
        document.write("<br>")
        break;
        case 5:
        document.write("★");
        document.write("★");
        document.write("★");
        document.write("★");
        document.write("★");
        document.write("<br>")    
        break; 
     }
}
document.write("<br>")
document.write("<br>")
