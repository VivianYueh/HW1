//
//  ContentView.swift
//  HW1
//
//  Created by User06 on 2023/3/2.
//

import SwiftUI

struct ContentView: View {
    @State var num = -1
    @State var chip = 0
    @State var r1 = 0
    @State var r2 = 0
    @State var r3 = 0
    @State var c1 = 0
    @State var c2 = 0
    @State var c3 = 0
    @State var h1 = 0
    @State var h2 = 0
    @State var e = 0
    @State var o = 0
    @State var red = 0
    @State var black = 0
    @State var money = 500000
    @State var my_bet=0
    @State var winr1=0
    @State var winr2=0
    @State var winr3=0
    @State var winh1=0
    @State var winh2=0
    @State var winc1=0
    @State var winc2=0
    @State var winc3=0
    @State var wine=0
    @State var wino=0
    @State var winr=0
    @State var winb=0
    @State var cnt=0
    @State var bet=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    @State var bet_m=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var body: some View {
        let Arr=[1,0,1,0,1,0,1,0,1,0,0,1,0,1,0,1,0,1,1,0,1,0,1,0,1,0,1,0,0,1,0,1,0,1,0,1]
        ZStack{
            Image("image")
                .resizable()
                .scaledToFit()
            VStack{
                Text("My Money \(money)")
                VStack(spacing:0){
                    HStack(spacing:0){
                        VStack(spacing:0){
                            Group{
                                ZStack{
                                    Text("2to1")
                                        .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)  .background(Color.green)
                                        //.rotationEffect(.degrees(-90))
                                        .foregroundColor(.black)
                                        .font(.system(.body, design: .rounded))
                                        .border(Color(.white))
                                        .onTapGesture{
                                            r1=1
                                            winr1=chip
                                            my_bet+=chip
                                        }
                                    if r1==1{
                                        Image("bet")
                                            .resizable()
                                            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .clipShape(Circle())
                                    }
                                }
                                
                                    
                                ZStack{
                                    Text("2to1")
                                        .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)  .background(Color.green)
                                        //.rotationEffect(.degrees(-90))
                                        .foregroundColor(.black)
                                        .font(.system(.body, design: .rounded))
                                        .border(Color(.white))
                                        .onTapGesture{
                                            r2=1
                                            winr2=chip
                                            my_bet+=chip
                                        }
                                    if r2==1{
                                        Image("bet")
                                            .resizable()
                                            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .clipShape(Circle())
                                    }
                                }
                                ZStack{
                                    Text("2to1")
                                        .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)  .background(Color.green)
                                        //.rotationEffect(.degrees(-90))
                                        .foregroundColor(.black)
                                        .font(.system(.body, design: .rounded))
                                        .border(Color(.white))
                                        .onTapGesture{
                                            r3=1
                                            winr3=chip
                                            my_bet+=chip
                                        }
                                    if r3==1{
                                        Image("bet")
                                            .resizable()
                                            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .clipShape(Circle())
                                    }
                                }
                            }
                            
                            
                        }
                        HStack(spacing:0){
                            ForEach(0..<12){ i in
                                VStack(spacing:0){
                                    ForEach(1..<4){j in
                                        var x=i*3+j
                                        if Arr[x-1]==1{
                                            ZStack{
                                                Text(String(x))
                                                    .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)  .background(Color(.red))
                                                    //.rotationEffect(.degrees(-90))
                                                    .foregroundColor(.white)
                                                    .font(.system(.body, design: .rounded))
                                                    .border(Color(.white))
                                                    .onTapGesture{
                                                        bet[x]=1
                                                        bet_m[x]=chip
                                                        my_bet+=chip
                                                    }
                                                if bet[x]==1{
                                                    Image("bet")
                                                        .resizable()
                                                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                        .clipShape(Circle())
                                                }
                                            }
                                        }
                                        else{
                                            ZStack{
                                                Text(String(x))
                                                    .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)  .background(Color(.black))
                                                    //.rotationEffect(.degrees(-90))
                                                    .foregroundColor(.white)
                                                    .font(.system(.body, design: .rounded))
                                                    .border(Color(.white))
                                                    .onTapGesture{
                                                        bet[x]=1
                                                        bet_m[x]=chip
                                                        my_bet+=chip
                                                    }
                                                if bet[x]==1{
                                                    Image("bet")
                                                        .resizable()
                                                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                        .clipShape(Circle())
                                                }
                                            }
                                        }
                                    }
                                    
                                }
                            }
                        }

                        VStack(spacing:0){
                            Group{
                                ZStack{
                                    Text("0")
                                        .frame(width: 40, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .background(Color.green)
                                        .border(Color(.white))
                                        .onTapGesture{
                                            bet[0]=1
                                            bet_m[0]=chip
                                            my_bet+=chip
                                        }
                                    if bet[0]==1{
                                        Image("bet")
                                            .resizable()
                                            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .clipShape(Circle())
                                    }
                                }
                                ZStack{
                                    Text("00")
                                        .frame(width: 40, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .background(Color.green)
                                        .border(Color(.white))
                                        .onTapGesture{
                                            bet[37]=1
                                            bet_m[37]=chip
                                            my_bet+=chip
                                        }
                                    if bet[37]==1{
                                        Image("bet")
                                            .resizable()
                                            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .clipShape(Circle())
                                    }
                                }
                            }
                            
                        }
                        
                        
                    }
                    HStack(spacing:0){
                        Group{
                            ZStack{
                                Text("1st 12")
                                    .frame(width: 160, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)  .background(Color.green)
                                    .border(Color(.white))
                                    .onTapGesture{
                                        c1=1
                                        winc1=chip
                                        my_bet+=chip
                                    }
                                if c1==1{
                                    Image("bet")
                                        .resizable()
                                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .clipShape(Circle())
                                }
                            }
                            ZStack{
                                Text("2nd 12")
                                    .frame(width: 160, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)  .background(Color.green)
                                    .border(Color(.white))
                                    .onTapGesture{
                                        c2=1
                                        winc2=chip
                                        my_bet+=chip
                                    }
                                if c2==1{
                                    Image("bet")
                                        .resizable()
                                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .clipShape(Circle())
                                }
                            }
                            ZStack{
                                Text("3rd 12")
                                    .frame(width: 160, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)  .background(Color.green)
                                    .border(Color(.white))
                                    .onTapGesture{
                                        c3=1
                                        winc3=chip
                                        my_bet+=chip
                                    }
                                if c3==1{
                                    Image("bet")
                                        .resizable()
                                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .clipShape(Circle())
                                }
                            }
                                
                        }
                        
                    }
                    HStack(spacing:0){
                        Group{
                            ZStack{
                                Text("1 - 18")
                                    .frame(width: 80, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)  .background(Color.green)
                                    .border(Color(.white))
                                    .onTapGesture{
                                        h1=1
                                        winh1=chip
                                        my_bet+=chip
                                    }
                                if h1==1{
                                    Image("bet")
                                        .resizable()
                                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .clipShape(Circle())
                                }
                            }
                            ZStack{
                                Text("Even")
                                    .frame(width: 80, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)  .background(Color.green)
                                    .border(Color(.white))
                                    .onTapGesture{
                                        e=1
                                        wine=chip
                                        my_bet+=chip
                                    }
                                if e==1{
                                    Image("bet")
                                        .resizable()
                                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .clipShape(Circle())
                                }
                            }
                            ZStack{
                                Text("")
                                    .frame(width: 80, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)  .background(Color(.red))
                                    .border(Color(.white))
                                    .onTapGesture{
                                        red=1
                                        winr=chip
                                        my_bet+=chip
                                    }
                                if red==1{
                                    Image("bet")
                                        .resizable()
                                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .clipShape(Circle())
                                }
                            }
                            ZStack{
                                Text("")
                                    .frame(width: 80, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)  .background(Color(.black))
                                    .border(Color(.white))
                                    .onTapGesture{
                                        black=1
                                        winb=chip
                                        my_bet+=chip
                                    }
                                if black==1{
                                    Image("bet")
                                        .resizable()
                                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .clipShape(Circle())
                                }
                            }
                            ZStack{
                                Text("Odd")
                                    .frame(width: 80, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)  .background(Color.green)
                                    .border(Color(.white))
                                    .onTapGesture{
                                        o=1
                                        wino=chip
                                        my_bet+=chip
                                    }
                                if o==1{
                                    Image("bet")
                                        .resizable()
                                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .clipShape(Circle())
                                }
                            }
                            ZStack{
                                Text("19 - 36")
                                    .frame(width: 80, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)  .background(Color.green)
                                    .border(Color(.white))
                                    .onTapGesture{
                                        h2=1
                                        winh2=chip
                                        my_bet+=chip
                                    }
                                if h2==1{
                                    Image("bet")
                                        .resizable()
                                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .clipShape(Circle())
                                }
                            }
                        }
                        
                    }
                    
                    

                }
                HStack{
                    Group{
                        Text("1k")
                            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.yellow)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .onTapGesture{
                                chip=1000
                            }
                        Text("5k")
                            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color(.orange))
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .onTapGesture{
                                chip=5000
                            }
                        Text("10k")
                            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.pink)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .onTapGesture{
                                chip=10000
                            }
                        Text("50k")
                            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color(.magenta))
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .onTapGesture{
                                chip=50000
                            }
                        Text("100k")
                            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color(.purple))
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .onTapGesture{
                                chip=100000
                            }
                    }
                    if chip != 0{
                        Text("Now \(chip)")
                    }
                }
                Text("\n")
                HStack{
                    Button {
                        r1=0
                        r2=0
                        r3=0
                        c1=0
                        c2=0
                        c3=0
                        h1=0
                        h2=0
                        red=0
                        black=0
                        o=0
                        e=0
                        bet[0]=0
                        bet[1]=0
                        bet[2]=0
                        bet[3]=0
                        bet[4]=0
                        bet[5]=0
                        bet[6]=0
                        bet[7]=0
                        bet[8]=0
                        bet[9]=0
                        bet[10]=0
                        bet[11]=0
                        bet[12]=0
                        bet[13]=0
                        bet[14]=0
                        bet[15]=0
                        bet[16]=0
                        bet[17]=0
                        bet[18]=0
                        bet[19]=0
                        bet[20]=0
                        bet[21]=0
                        bet[22]=0
                        bet[23]=0
                        bet[24]=0
                        bet[25]=0
                        bet[26]=0
                        bet[27]=0
                        bet[28]=0
                        bet[29]=0
                        bet[30]=0
                        bet[31]=0
                        bet[32]=0
                        bet[33]=0
                        bet[34]=0
                        bet[35]=0
                        bet[36]=0
                        bet[37]=0
                        bet_m[0]=0
                        bet_m[1]=0
                        bet_m[2]=0
                        bet_m[3]=0
                        bet_m[4]=0
                        bet_m[5]=0
                        bet_m[6]=0
                        bet_m[7]=0
                        bet_m[8]=0
                        bet_m[9]=0
                        bet_m[10]=0
                        bet_m[11]=0
                        bet_m[12]=0
                        bet_m[13]=0
                        bet_m[14]=0
                        bet_m[15]=0
                        bet_m[16]=0
                        bet_m[17]=0
                        bet_m[18]=0
                        bet_m[19]=0
                        bet_m[20]=0
                        bet_m[21]=0
                        bet_m[22]=0
                        bet_m[23]=0
                        bet_m[24]=0
                        bet_m[25]=0
                        bet_m[26]=0
                        bet_m[27]=0
                        bet_m[28]=0
                        bet_m[29]=0
                        bet_m[30]=0
                        bet_m[31]=0
                        bet_m[32]=0
                        bet_m[33]=0
                        bet_m[34]=0
                        bet_m[35]=0
                        bet_m[36]=0
                        bet_m[37]=0
                        my_bet=0
                        num = -1
                    } label: {
                        Text("Clear Bets")
                            .fontWeight(.bold)
                            .font(.body)
                            .padding(5)
                            .background(Color.purple)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .padding(3)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.purple, lineWidth: 2)
                            )
                    }
                    Button {
                        num=Int.random(in: 0..<38)
                        
                        if r1 == 1{
                            if num%3 == 1{
                                cnt=winr1*2
                                money+=cnt
                            }
                            else{
                                money-=winr1
                            }
                        }
                        if r2 == 1{
                            if num%3 == 2{
                                cnt=winr2*2
                                money+=cnt
                            }
                            else{
                                money-=winr2
                            }
                        }
                        if r3 == 1{
                            if num%3 == 0{
                                cnt=winr3*2
                                money+=cnt
                            }
                            else{
                                money-=winr3
                            }
                        }
                        if c1==1{
                            if num<=12 && num>=1{
                                cnt=winc1*2
                                money+=cnt
                            }
                            else{
                                money-=winc1
                            }
                        }
                        if c2==1{
                            if num<=24 && num>=13{
                                cnt=winc2*2
                                money+=cnt
                            }
                            else{
                                money-=winc2
                            }
                        }
                        if c3==1{
                            if num<=36 && num>=25{
                                cnt=winc3*2
                                money+=cnt
                            }
                            else{
                                money-=winc3
                            }
                        }
                        if h1==1{
                            if num>=1&&num<=18{
                                money+=winh1
                            }
                            else{
                                money-=winh1
                            }
                        }
                        if h2==1{
                            if num>=19&&num<=36{
                                money+=winh2
                            }
                            else{
                                money-=winh2
                            }
                        }
                        if e==1{
                            if num%2==0{
                                money+=wine
                            }
                            else{
                                money-=wine
                            }
                        }
                        if o==1{
                            if num%2==1{
                                money+=wino
                            }
                            else{
                                money-=wino
                            }
                        }
                        if red==1{
                            if Arr[num-1]==1{
                                money+=winr
                            }
                            else{
                                money-=winr
                            }
                        }
                        if black==1{
                            if Arr[num-1]==0{
                                money+=winb
                            }
                            else{
                                money-=winb
                            }
                        }
                        if bet[0]==1{
                            if num == 0{
                                cnt=bet_m[0]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[0]
                            }
                        }
                        if bet[1]==1{
                            if num == 1{
                                cnt=bet_m[1]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[1]
                            }
                        }
                        if bet[2]==1{
                            if num == 2{
                                cnt=bet_m[2]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[2]
                            }
                        }
                        if bet[3]==1{
                            if num == 3{
                                cnt=bet_m[3]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[3]
                            }
                        }
                        if bet[4]==1{
                            if num == 4{
                                cnt=bet_m[4]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[4]
                            }
                        }
                        if bet[5]==1{
                            if num == 5{
                                cnt=bet_m[5]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[5]
                            }
                        }
                        if bet[6]==1{
                            if num == 6{
                                cnt=bet_m[6]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[6]
                            }
                        }
                        if bet[7]==1{
                            if num == 7{
                                cnt=bet_m[7]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[7]
                            }
                        }
                        if bet[8]==1{
                            if num == 8{
                                cnt=bet_m[8]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[8]
                            }
                        }
                        if bet[9]==1{
                            if num == 9{
                                cnt=bet_m[9]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[9]
                            }
                        }
                        if bet[10]==1{
                            if num == 10{
                                cnt=bet_m[10]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[10]
                            }
                        }
                        if bet[11]==1{
                            if num == 11{
                                cnt=bet_m[11]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[11]
                            }
                        }
                        if bet[12]==1{
                            if num == 12{
                                cnt=bet_m[12]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[12]
                            }
                        }
                        if bet[13]==1{
                            if num == 13{
                                cnt=bet_m[13]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[13]
                            }
                        }
                        if bet[14]==1{
                            if num == 14{
                                cnt=bet_m[14]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[14]
                            }
                        }
                        if bet[15]==1{
                            if num == 15{
                                cnt=bet_m[15]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[15]
                            }
                        }
                        if bet[16]==1{
                            if num == 16{
                                cnt=bet_m[16]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[16]
                            }
                        }
                        if bet[17]==1{
                            if num == 17{
                                cnt=bet_m[17]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[17]
                            }
                        }
                        if bet[18]==1{
                            if num == 18{
                                cnt=bet_m[18]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[0]
                            }
                        }
                        if bet[19]==1{
                            if num == 19{
                                cnt=bet_m[19]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[19]
                            }
                        }
                        if bet[20]==1{
                            if num == 20{
                                cnt=bet_m[20]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[20]
                            }
                        }
                        if bet[21]==1{
                            if num == 21{
                                cnt=bet_m[21]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[21]
                            }
                        }
                        if bet[22]==1{
                            if num == 22{
                                cnt=bet_m[22]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[22]
                            }
                        }
                        if bet[23]==1{
                            if num == 23{
                                cnt=bet_m[23]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[23]
                            }
                        }
                        if bet[24]==1{
                            if num == 24{
                                cnt=bet_m[24]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[24]
                            }
                        }
                        if bet[25]==1{
                            if num == 25{
                                cnt=bet_m[25]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[25]
                            }
                        }
                        if bet[26]==1{
                            if num == 26{
                                cnt=bet_m[26]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[26]
                            }
                        }
                        if bet[27]==1{
                            if num == 27{
                                cnt=bet_m[27]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[27]
                            }
                        }
                        if bet[28]==1{
                            if num == 28{
                                cnt=bet_m[28]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[28]
                            }
                        }
                        if bet[29]==1{
                            if num == 29{
                                cnt=bet_m[29]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[29]
                            }
                        }
                        if bet[30]==1{
                            if num == 30{
                                cnt=bet_m[30]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[30]
                            }
                        }
                        if bet[31]==1{
                            if num == 31{
                                cnt=bet_m[31]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[31]
                            }
                        }
                        if bet[32]==1{
                            if num == 2{
                                cnt=bet_m[32]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[32]
                            }
                        }
                        if bet[33]==1{
                            if num == 3{
                                cnt=bet_m[33]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[33]
                            }
                        }
                        if bet[34]==1{
                            if num == 4{
                                cnt=bet_m[34]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[4]
                            }
                        }
                        if bet[35]==1{
                            if num == 35{
                                cnt=bet_m[35]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[35]
                            }
                        }
                        if bet[36]==1{
                            if num == 36{
                                cnt=bet_m[36]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[36]
                            }
                        }
                        if bet[37]==1{
                            if num == 37{
                                cnt=bet_m[37]*35
                                money+=cnt
                            }
                            else{
                                money-=bet_m[37]
                            }
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            r1=0
                            r2=0
                            r3=0
                            c1=0
                            c2=0
                            c3=0
                            h1=0
                            h2=0
                            red=0
                            black=0
                            o=0
                            e=0
                            bet[0]=0
                            bet[1]=0
                            bet[2]=0
                            bet[3]=0
                            bet[4]=0
                            bet[5]=0
                            bet[6]=0
                            bet[7]=0
                            bet[8]=0
                            bet[9]=0
                            bet[10]=0
                            bet[11]=0
                            bet[12]=0
                            bet[13]=0
                            bet[14]=0
                            bet[15]=0
                            bet[16]=0
                            bet[17]=0
                            bet[18]=0
                            bet[19]=0
                            bet[20]=0
                            bet[21]=0
                            bet[22]=0
                            bet[23]=0
                            bet[24]=0
                            bet[25]=0
                            bet[26]=0
                            bet[27]=0
                            bet[28]=0
                            bet[29]=0
                            bet[30]=0
                            bet[31]=0
                            bet[32]=0
                            bet[33]=0
                            bet[34]=0
                            bet[35]=0
                            bet[36]=0
                            bet[37]=0
                            bet_m[0]=0
                            bet_m[1]=0
                            bet_m[2]=0
                            bet_m[3]=0
                            bet_m[4]=0
                            bet_m[5]=0
                            bet_m[6]=0
                            bet_m[7]=0
                            bet_m[8]=0
                            bet_m[9]=0
                            bet_m[10]=0
                            bet_m[11]=0
                            bet_m[12]=0
                            bet_m[13]=0
                            bet_m[14]=0
                            bet_m[15]=0
                            bet_m[16]=0
                            bet_m[17]=0
                            bet_m[18]=0
                            bet_m[19]=0
                            bet_m[20]=0
                            bet_m[21]=0
                            bet_m[22]=0
                            bet_m[23]=0
                            bet_m[24]=0
                            bet_m[25]=0
                            bet_m[26]=0
                            bet_m[27]=0
                            bet_m[28]=0
                            bet_m[29]=0
                            bet_m[30]=0
                            bet_m[31]=0
                            bet_m[32]=0
                            bet_m[33]=0
                            bet_m[34]=0
                            bet_m[35]=0
                            bet_m[36]=0
                            bet_m[37]=0
                            num = -1
                            my_bet=0
                        }
                    } label: {
                        Text("Spin")
                            .fontWeight(.bold)
                            .font(.body)
                            .padding(5)
                            .background(Color.purple)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .padding(3)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.purple, lineWidth: 2)
                            )
                    }
                    Text("My Bet \(my_bet)")
                }
                if num == -1{
                    Text("")
                }
                else if num==37{
                    Text("00")
                }
                else{
                    Text(String(num))
                }
                if money == 0{
                    Text("Game Over")
                        .font(.title)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
