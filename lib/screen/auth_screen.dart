import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:keykeycall_app/main.dart';

class AuthScreen extends ConsumerWidget {

  final _formKey = GlobalKey<FormState>();
  String userId = '';
  int type = 0;
  String typeNm = '';
  String userTelNo = '';
  AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(userProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 375.w,
                height: 50.h,
                color: Colors.white,
              ),
              Text(
                'KEYKEYCALL(캐치프라이즈 문구 들어갈 곳)',
                style: TextStyle(
                    color: Colors.black38,
                    fontSize: 19.sp,
                    fontFamily: "Montserrat"
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 20.h, 0, 0),
                  width: 275.w,
                  height: 300.h,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 20.h),
                        margin: EdgeInsets.only(bottom: 20.h),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12
                          ),
                          borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: Column(
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              maxLength: 11,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: InputDecoration(
                                hintText: '전화번호를 입력해주세요',
                                hintStyle: TextStyle(
                                  fontFamily: "NanumGothic",
                                  color: Colors.black26,
                                  fontSize: 13.sp,
                                )
                              ),
                              validator: (value) {
                                if(value == null) {
                                  return '전화번호가 입력되지 않았습니다.';
                                }
                                return null;
                              },
                              autovalidateMode: AutovalidateMode.always,
                              onSaved: (value) {
                                userTelNo = value as String;
                              },
                            ),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.done,
                              maxLength: 6,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: InputDecoration(
                                hintText: '아이디를 입력해주세요',
                                hintStyle: TextStyle(
                                  fontFamily: "NanumGothic",
                                  color: Colors.black26,
                                  fontSize: 13.sp,
                                )
                              ),
                              validator: (value) {
                                if(value == null) {
                                  return '아이디가 입력되지 않았습니다.';
                                }
                                return null;
                              },
                              autovalidateMode: AutovalidateMode.always,
                              onSaved: (value) {
                                userId = value as String;
                              },
                            ),
                          ],
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {
                          if(_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            if(userId == '123') {
                              type = 1;
                              typeNm = '주선사';
                            }
                            else if(userId =='345') {
                              type = 2;
                              typeNm = '화주';
                            }
                            ref.read(userProvider.notifier).login(userId: userId, type: type, typeNm: typeNm, userTelNo: userTelNo);
                            context.goNamed('main');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(375.w, 50.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r)
                          )
                        ),
                        child: Text(
                          '로그인',
                          style: TextStyle(
                            fontFamily: "NanumGothic",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700
                          ),
                        )
                      )
                    ],
                  )
              ),
              Container()
            ],
          ),

        ),
      ),
    );
  }
}
