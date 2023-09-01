import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/presentation/settings_screen/user_image.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_image.dart';
import 'package:dinesh_s_application42/widgets/app_bar/custom_app_bar.dart';
import 'package:dinesh_s_application42/widgets/custom_icon_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../menubar_draweritem/menubar_draweritem.dart';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dinesh_s_application42/presentation/settings_screen/ProfileBloc.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key? key})
      : super(
          key: key,
        );
   @override
  State<StatefulWidget> createState() {
    
    return Settings1_screen();
  }}

  // ignore: camel_case_types
  class Settings1_screen extends State<SettingsScreen>{

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state is ProfileUpdated) {
          return _buildSettingsScreen(context, state.newName);
        }
        return _buildSettingsScreen(context, "Dinesh");
      },
    );
  }

  Widget _buildSettingsScreen(BuildContext context, String profileName) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        key: _scaffoldKey,
        drawer: MenubarDraweritem(),
        appBar: CustomAppBar(
          leadingWidth: double.maxFinite,
          leading: AppbarImage(
              svgPath: ImageConstant.imgMenu,
              margin: getMargin(
                left: 19,
                top: 15,
                right: 331,
                bottom: 15,
              ),
              onTap: () {
                navigatetomenu(context);
              }),
        ),
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup188,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 18,
                right: 125,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  UserImagePicker(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        top: 2,
                        right: 31,
                      ),
                      child: Text(
                        profileName,
                        style: CustomTextStyles.titleLargeJostExtraBold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 29,
                      right: 67,
                    ),
                    child: Row(
                      children: [
                        CustomIconButton(
                          height: 50,
                          width: 50,
                          padding: getPadding(
                            all: 9,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgTicket,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 19,
                            top: 14,
                            bottom: 6,
                          ),
                          child: Text(
                            "Edit profile",
                            style: CustomTextStyles.titleLargeJostExtraBold,
                          ),
                        ),
                        SizedBox(
                            width:
                                10), // Add a little space between the text and the TextField
                        Expanded(
                          child: TextField(
                            onChanged: (newName) {
                              context
                                  .read<ProfileBloc>()
                                  .add(UpdateProfileName(newName));
                            },
                            decoration: InputDecoration(
                              hintText: "Enter your name",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
  onPressed: () async {
    final newName = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) => EditProfileBottomSheet(),
    );

    if (newName != null && newName.isNotEmpty) {
      // Update the name
      setState(() {
        profileName = newName;
      });
    }
  },
  child: Text("Edit Profile"),
),
Text(
  profileName,
  style: CustomTextStyles.titleLargeJostExtraBold,
),
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 35,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          onTap: () {
                            FirebaseAuth.instance.signOut();
                            onTaplogoutof(context);
                          },
                          height: 50,
                          width: 50,
                          padding: getPadding(
                            all: 9,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgIconlogout,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 22,
                            top: 6,
                            bottom: 14,
                          ),
                          child: Text(
                            "Logout",
                            style: CustomTextStyles.titleLargeJostExtraBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 37,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          onTap: () {
                            showAboutDialog(context: context);
                          },
                          height: 50,
                          width: 50,
                          padding: getPadding(
                            all: 8,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgShare,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 18,
                            top: 7,
                            bottom: 13,
                          ),
                          child: Text(
                            "Update",
                            style: CustomTextStyles.titleLargeJostExtraBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  navigatetomenu(BuildContext context) {
    _scaffoldKey.currentState?.openDrawer();
  }

  onTaplogoutof(BuildContext context) {
  Navigator.popAndPushNamed(context, AppRoutes.startPageScreen);
}

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}



class EditProfileBottomSheet extends StatefulWidget {
  @override
  _EditProfileBottomSheetState createState() => _EditProfileBottomSheetState();
}

class _EditProfileBottomSheetState extends State<EditProfileBottomSheet> {
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: "Enter your name",
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, _nameController.text);
            },
            child: Text("Save"),
          ),
        ],
      ),
    );
  }
}







