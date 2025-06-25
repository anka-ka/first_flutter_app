import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget{
   List<MenuRowData> firstMenuRaw =[
    MenuRowData(Icons.favorite,"Избранное"),
    MenuRowData(Icons.call,"Звонки"),
    MenuRowData(Icons.computer,"Устройства"),
    MenuRowData(Icons.folder,"Папка с чатами"),

  ];
   List<MenuRowData> secondMenuRaw =[
    MenuRowData(Icons.notifications,"Уведомления и звуки"),
    MenuRowData(Icons.privacy_tip,"Конфиденциальность"),
    MenuRowData(Icons.date_range,"Данные и память"),
    MenuRowData(Icons.brush,"Оформление"),
    MenuRowData(Icons.language,"Язык"),
    MenuRowData(Icons.sticky_note_2, "Стикеры")
  
  ];
  List<MenuRowData> thirdMenuRow =[
    MenuRowData(Icons.lock_clock, "Apple Watch"),
  ];
  List<MenuRowData> forthMenuRow =[
    MenuRowData(Icons.help, "Помощь"),
    MenuRowData(Icons.question_answer, "Вопросы о Telegram"),
  ];
   UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('Настройки'),
      backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
             _UserInfo(),
              SizedBox(height: 30,),
              _MenuWidget(menuRaw: firstMenuRaw,),
              SizedBox(height: 30,),
              _MenuWidget(menuRaw: secondMenuRaw,),
              SizedBox(height: 30),
             _MenuWidget(menuRaw: thirdMenuRow),
              SizedBox(height: 30),
             _MenuWidget(menuRaw: forthMenuRow),
          ],
        ),
      ),
      );
  }

}

class _MenuWidget extends StatelessWidget{
  final List<MenuRowData> menuRaw;
  const _MenuWidget ({super.key, 
  required this.menuRaw,});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRaw.map((data) => _MenuWidgetRow(data: data)).toList(),
        ),     
    );
  }
}

class MenuRowData{
  final IconData icon;
final String text;

MenuRowData(this.icon, this.text);
}

class _MenuWidgetRow extends StatelessWidget{
final MenuRowData data;
const _MenuWidgetRow ({super.key,
required this.data,});

@override
  Widget build(BuildContext context) {
    return   Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(children: [
              Icon(data.icon),
              SizedBox(width: 15,),
              Expanded (child: Text(data.text)),
              Icon(Icons.chevron_right),
            ],),
          );
    
  }

}

class _UserInfo extends StatelessWidget{
  const _UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
       Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(children: [
           SizedBox(height: 30,),
                _AvatarWidget(),
                  SizedBox(height: 30,),
                _UserNameWidget(),
                SizedBox(height: 10,),
                _UserPhoneWidget(),
                SizedBox(height: 10,),
                _UserNicknameWidget(),
        
        ],
        
        ),
      ),
      Positioned(
        
        top: 25,
      right: 25,
        child: Text("Изм.", 
        style: TextStyle(color: Colors.blue,
    fontSize: 17,), )
        )
      ],
    );
  }

}

class _UserNicknameWidget extends StatelessWidget {
  const _UserNicknameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('@user_nick',
     style: TextStyle(color: Colors.grey,
    fontSize: 17,
    ),
    );
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('+7(920) 20 46 64',
    style: TextStyle(color: Colors.grey,
    fontSize: 15,
    ),
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('User    <<Name>>    Name', 
    style: TextStyle(color: Colors.black,
    fontSize: 25,
    fontWeight: FontWeight.w600,
    ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Placeholder()
      );
  }
}