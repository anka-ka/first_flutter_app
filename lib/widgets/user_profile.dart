import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget{
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Настройки'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
              ),
            _AvatarWidget(),
              SizedBox(
              height: 30,
              ),
            _UserNameWidget(),
            SizedBox(height: 10,),
            _UserPhoneWidget(),
            SizedBox(height: 10,),
            _UserNicknameWidget(),
          ],
        ),
      ),
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
    fontSize: 18,
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
    return Text('User Name', 
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