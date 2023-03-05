import 'package:flutter/material.dart';
import 'package:panic_hack/home_page.dart';

class Term extends StatelessWidget {
  const Term({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25, left: 20),
              child: IconButton(
                iconSize: 40,
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(right: 90, left: 40),
              child: Container(
                child: RichText(
                  text: TextSpan(
                    text: 'Terms and conditions',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'PlusJakartaSans-Bold',
                        fontWeight: FontWeight.bold),
                    /*defining default style is optional */
                    children: <TextSpan>[
                      TextSpan(
                          text: ' of using and accessing this app',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff9C9C9C),
                              fontSize: 30,
                              fontFamily: 'PlusJakartaSans-Bold')),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(right: 90, left: 40, top: 20),
              child: Container(
                  child: Text(
                'Updated 1 January 2023',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'PlusJakartaSans-Regular',
                  color: Colors.black,
                ),
              )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 60, top: 30),
              child: Text(
                'This agreement (“Agreement”) sets out the terms of use (“Terms”) of the Panic Hack app (“App”). It constitutes a legally binding agreement between you, the user of the App, and Mindspa Limited (“Mindspa”, “us”, “we” or “our”), a company limited by liability and registered in England and Wales, concerning your use of the App.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'PlusJakartaSans-Medium',
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 60, top: 5),
              child: Text(
                'By downloading, installing, using or otherwise accessing the App, you confirm your acceptance of these Terms and acknowledge the warnings and limitations they contain.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'PlusJakartaSans-Medium',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 60),
              child: Card(
                elevation: 0,
                child: ExpansionTile(
                  title: Text(
                    'Etc...',
                    style: TextStyle(
                        fontSize: 16, fontFamily: 'PlusJakartaSans-Medium'),
                  ),
                  tilePadding: EdgeInsets.zero,
                  trailing: SizedBox(
                    width: 0,
                  ),
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 0),
                          //   child:
                          Text(
                        '1 APP AND RELATED TERMS',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    // ),
                    //   SizedBox(
                    //     height: 10,
                    //   ),
                    // Padding(
                    //    padding: EdgeInsets.only(left: 0,right: 90),
                    //    child:
                    Text(
                      'Depending on the version of the Application you have downloaded, these Terms incorporate Apple’s or Google Android’s terms and conditions and privacy policies (“Platform Terms”). If there is any conflict between these Terms and the Platform Terms, then these Terms will prevail.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    //),

                    SizedBox(
                      height: 5,
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 60),
                    //    child:
                    Text(
                        'We may from time to time vary these Terms. Please check these Terms regularly to ensure you are aware of any variations made by us. If you continue to use this App, you are deemed to have accepted such variations. If you do not agree to such variations, you should not use the App.',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    // ),

                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 60),
                          //   child:
                          Text(
                        '2   USE OF THE APP',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),

                    //  SizedBox(height: 10,),

                    // Padding(
                    //     padding: EdgeInsets.only(left: 60,right: 60),
                    //     child:
                    Text('Your use of the App is subject to the following:',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    // ),

                    // SizedBox(
                    //   height: 10,
                    // ),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //     padding: EdgeInsets.only(left: 60),
                          //     child:
                          Text(
                        '2.1  Personal Use',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),
                    //            SizedBox(
                    //              height: 10,
                    //            ),

                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 60),
                    //  child:
                    Text(
                        'You are only authorized to retain and use a copy of the App for your own personal use.',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    //),

                    // SizedBox(height: 10,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //     padding: EdgeInsets.only(left: 60),
                          //     child:
                          Text(
                        '2.2  Age restrictions',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),
                    // SizedBox(height: 10,),

                    // Padding(
                    //     padding: EdgeInsets.only(left: 60,right: 60),
                    //     child:
                    Text('You must be at least 18 years of age to use the App.',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    //),

                    //  SizedBox(height: 10,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          // padding: EdgeInsets.only(left: 60),
                          // child:
                          Text(
                        '2.3  Licence',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),

                    //SizedBox(height: 10,),

                    // Padding(
                    //     padding: EdgeInsets.only(left: 60,right: 60),
                    // child:
                    Text(
                        'Mindspa hereby grants you a non-exclusive, non-transferable, revocable licence to use the App for your personal, non-commercial use and only on an Apple or Android device (“Device”) as permitted by the applicable Platform Terms and in accordance with these Terms (“User Licence”). All other rights in the App are reserved by Mindspa.',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    // ),

                    //  SizedBox(height: 5,),

                    // Padding(
                    //     padding: EdgeInsets.only(left: 60,right: 60),
                    //   child:
                    Text(
                        'In the event of your breach of these Terms we will be entitled to terminate the User Licence immediately.',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    //),

                    //SizedBox(height: 10,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 60),
                          //   child:
                          Text(
                        '2.4  Other providers',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),
                    // SizedBox(height: 10,),

                    // Padding(
                    //     padding: EdgeInsets.only(left: 60,right: 60),
                    //     child:
                    Text(
                        'You acknowledge that your agreement with your mobile or internet network provider (“Network Provider”) will apply to your use of the App. You acknowledge that you may be charged by the Network Provider for data services while using certain features of the App or any such third-party charges as may arise and you accept responsibility for such charges. If you are not the bill payer for the Device being used to access the App, you will be assumed to have received permission from the bill payer to use the App.',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    // ),

                    SizedBox(
                      height: 5,
                    ),

                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 60),
                    //  child:
                    Text(
                        'You acknowledge that where you use services provided by Apple or Google (or any other third parties) in connection with your use of the App, you will be subject to Apple’s, Google’s (or the applicable third party’s) terms and conditions and privacy policy and you should ensure that you have read such terms.',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    // ),

                    //SizedBox(height: 10,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 60),
                          //   child:
                          Text(
                        '2.5  Prohibited Uses',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),

                    //SizedBox(height: 10,),

                    // Padding(
                    // padding: EdgeInsets.only(left: 60,right: 60),
                    // child:
                    Text('You agree not to use the App in any way that:',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 5,),

                    //  Padding(
                    // padding: EdgeInsets.only(left: 40,right: 60),
                    // child:
                    Text('•	is illegal, unlawful or unauthorised;',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 5,),

                    // Padding(
                    // padding: EdgeInsets.only(left: 40,right: 60),
                    // child:
                    Text('•	advocates or assists an illegal act;',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height:5),
                    // Padding(
                    //     padding: EdgeInsets.only(left: 40,right: 60),
                    //     child:
                    Text('•	is defamatory of any other person;',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    // SizedBox(height: 5,),

                    // Padding(
                    //   padding: EdgeInsets.only(left: 40,right: 65),
                    //   child:
                    Text('•	is obscene, indecent or offensive;',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 5,),
                    // Padding(
                    //   padding: EdgeInsets.only(left: 55,right: 60),
                    //   child:
                    Text('•	promotes discrimination of any kind;',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 5,),
                    // Padding(
                    // padding: EdgeInsets.only(left: 10,right: 60),
                    // child:
                    Text('•	threatens or harasses anyone;',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 5,),

                    // Padding(
                    // padding: EdgeInsets.only(left: 70,right: 60),
                    // child:
                    Text('•	is likely to disrupt our service in any way; or',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 5,),

                    // Padding(
                    // padding: EdgeInsets.only(left: 60,right: 60),
                    // child:
                    Text('•infringes intellectual property rights.',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 10,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 60),
                          //   child:
                          Text(
                        '3   INTELLECTUAL PROPERTY',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),

                    // SizedBox(height: 10,),

                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 60),
                    //   child:
                    Text(
                        'The App and its content are the property of Mindspa and are protected by international copyright, trademark, patent and other intellectual property laws. Such laws prohibit the unauthorized use, exploitation, reproduction, copying, transfer, selling, distribution, or exhibition of all text, photographic and graphic images, logos, music, sound and other content and the creation of derivative works therefrom. Where necessary, Mindspa will enforce its intellectual property rights to the fullest extent of the law, including seeking criminal prosecution.',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    // SizedBox(height: 5,),

                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 60),
                    //   child:
                    Text(
                        'Audio content from the App indicated as downloadable may be downloaded or copied for your personal use only and is subject to the Terms herein.',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 5,),

                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 60),
                    //   child:
                    Text(
                        'The Mindspa name and logo, the Panic Hack name and logo, and the Psyber name and logo together with other Mindspa trademarks, service marks, graphics and logos used in connection with the App are trademarks of Mindspa and Psyber Limited (collectively “Mindspa Trademarks”). Other trademarks, service marks, graphics and logos used in connection with the App are the trademarks of their respective owners (collectively “Third Party Trademarks”). The Mindspa Trademarks and Third Party Trademarks may not be copied, imitated or used, in whole or in part, without the prior written permission of the trademark holder. ',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 10,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 60),
                          //   child:
                          Text(
                        '4  NO PROMISES',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),

                    //SizedBox(height: 10,),
                    // Padding(
                    //   padding: EdgeInsets.only(left: 40,right: 60),
                    //   child:
                    Text('Use of the App is at your own risk.',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 5,),
                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 40),
                    //   child:
                    Text(
                        'The information contained in the App is for general information purposes only. Any reliance you place on such information is therefore strictly at your own risk.',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 5,),
                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 40),
                    //   child:
                    Text(
                        'Mindspa provides the App on an ‘as is’ basis without any promises, warranties or representations of any kind in respect to it. In particular, Mindspa does not warrant or make any representation regarding the completeness, efficacy, suitability, validity, accuracy or reliability of the App and its contents. ',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 5,),
                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 40),
                    //   child:
                    Text(
                        'To the fullest extent permitted by applicable law, Mindspa hereby disclaims and excludes all liability whatsoever, whether express or implied, in relation the App and your use of it, and, further, excludes any warranty or promise in relation to the results obtained from use of the App, that the App is fit for purpose, of satisfactory quality, is free of defects and is able to operate on an uninterrupted basis.',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 10,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 60,right: 40),
                          //   child:
                          Text(
                        '5  WARNINGS & DISCLAIMERS',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),

                    //SizedBox(height: 5,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 60,right: 40),
                          //   child:
                          Text(
                        'The App is for general information purposes and, as such, is not a substitute or replacement for professional mental or physical healthcare. It should not be construed as professional advice, instruction or therapy and is not intended to diagnose, prevent, manage, treat or cure any mental or physical condition.',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    // ),

                    //SizedBox(height: 5,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 60,right: 40),
                          //   child:
                          Text(
                        'If you have, or suspect you have, a physical or mental health condition you must not use this app but instead consult a suitable healthcare professional about using the App and about taking any action, or refraining from taking any action, in reliance on any information it contains.',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),

                    // SizedBox(height: 5,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 60,right: 40),
                          //   child:
                          Text(
                        'If you are working with, or plan to work with, a mental health professional, you should inform them that you are using this app or intend to use it.',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),

                    // SizedBox(height: 5,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 60,right: 40),
                          //   child:
                          Text(
                        'Do not use this app if you have, or suspect you have, any heart or lung irregularities or diseases, respiratory issues, obstructive breathing problems, asthma, thyroid disorders, inner-ear disturbances or epilepsy.',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),

                    //SizedBox(height: 5,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 60,right: 40),
                          //   child:
                          Text(
                        'Do not use this app if you are physically unwell, injured, in shock or at high altitude.',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),

                    // SizedBox(height: 5,),

                    // Padding(
                    //   padding: EdgeInsets.only(left: 70,right: 60),
                    //   child:
                    Text(
                        'Mindspa makes no claims, representations, warranties or guarantees that the App provides a physical or therapeutic benefit. In particular, to the fullest extent permitted by law, we make no representation or warranties about the accuracy, completeness, or suitability for any purpose of the advice, other materials and information published as part of the App.',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    // SizedBox(height: 10,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 60),
                          //   child:
                          Text(
                        '6  LIMITATION OF MINDSPA’S LIABILITY',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),

                    //SizedBox(height: 10,),
                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 40),
                    //   child:
                    Text(
                        "To the fullest extent permitted under applicable law, in no event will Mindspa, its subsidiaries, affiliates, directors, officers, employees, agents, partners and associates (collectively the “Protected Parties”) be liable to you, your heirs, assignees or any third party for any loss, death, damage, or bodily injury that you suffer, or that you cause to any third party, whether direct or indirect, in connection with your use of the App.",
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 5,),
                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 40),
                    //   child:
                    Text(
                        "To the fullest extent permitted under applicable law, in no event shall the Protected Parties be liable to you with respect to use of the App and/or be liable to you for any direct, indirect, special or consequential damages including, without limitation, damages for loss of goodwill, lost profits, or loss, theft or corruption of your information, the inability to use the App, device failure or malfunction.",
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    // SizedBox(height: 5,),
                    //  Padding(
                    //    padding: EdgeInsets.only(left: 60,right: 40),
                    //    child:
                    Text(
                        'The Protected Parties shall not be liable even if it they have been advised of the possibility of such damages, including without limitation damages caused by error, omission, interruption, defect, failure of performance, unauthorised use, delay in operation or transmission, line failure, computer virus, worm, Trojan horse or other harm.',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    // SizedBox(height: 5,),
                    //  Padding(
                    //    padding: EdgeInsets.only(left: 60,right: 40),
                    //    child:
                    Text(
                        'In the event that applicable law does not allow the exclusion of certain promises and/or the exclusion of liability for direct, indirect, consequential or other damages, in no event shall the Protected Parties’ liability arising under or in connection with these Terms and your use of the App exceed £100. ',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    // SizedBox(height: 5,),
                    //  Padding(
                    //    padding: EdgeInsets.only(left: 60,right: 40),
                    //    child:
                    Text(
                        'Nothing in these Terms shall exclude or in any way limit the Protected Parties liability for death or personal injury caused by its negligence or for fraud or any other liability to the extent the same may not be excluded or limited as a matter of law.',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),
                    //SizedBox(height: 10,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 60),
                          //   child:
                          Text(
                        '7  INDEMNIFICATION',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),

                    //         SizedBox(height: 10,),

                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 60),
                    //   child:
                    Text(
                        'You agree to indemnify the Protected Parties for any breach of these Terms. Mindspa reserves the right to control the defence and settlement of any third-party claim for which you indemnify the Protected Parties under these Terms and you will assist us in exercising such rights.',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 10,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 60),
                          //   child:
                          Text(
                        '8  DISPUTES',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),

                    // SizedBox(height: 10,),

                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 60),
                    //   child:
                    Text(
                        'If you have any dispute arising out of, or relating to, these Terms or from your use of the App, you agree to first try to resolve the dispute informally by contacting Mindspa.',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    //),

                    // SizedBox(height: 5,),

                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 60),
                    //   child:
                    Text(
                        'If the dispute is not settled informally within 90 days of the dispute being notified to Mindspa, or such further period as the parties shall agree in writing, the dispute shall be referred to mediation in accordance with the London Court of International Arbitration (“LCIA”) Mediation Procedure which Procedure is deemed to be incorporated by reference into this clause.',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 5,),

                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 60),
                    //   child:
                    Text(
                        'If the dispute is not settled by mediation within 90 days of the appointment of the mediator, the dispute shall be referred to and finally resolved by arbitration under the LCIA Rules, which Rules are deemed to be incorporated by reference into this clause. ',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 5,),

                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 60),
                    //   child:
                    Text(
                        'Such mediation and arbitration will take place in London, England, be governed by the laws of England and Wales and be conducted in English. The mediator and arbitrator, who need not be a member of LCIA, will be independent and their appointment agreed between the parties.',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 10,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 60),
                          //   child:
                          Text(
                        '9  GENERAL',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),

                    //  SizedBox(height: 10,),

                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 60),
                    //   child:
                    Text(
                        'These Terms shall be governed by the laws of England and Wales and the parties submit to the exclusive jurisdiction of the courts of England and Wales.',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 5,),

                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 60),
                    //   child:
                    Text(
                        'If any provision (or part of a provision) of these Terms is found by any court or administrative body of competent jurisdiction to be invalid, unenforceable or illegal, such term, condition or provision will to that extent be severed from the remaining terms, conditions and provisions which will continue to be valid to the fullest extent permitted by law.',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 10,),

                    Align(
                      alignment: Alignment.topLeft,
                      child:
                          // Padding(
                          //   padding: EdgeInsets.only(left: 60),
                          //   child:
                          Text(
                        '10  CONTACT',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //),

                    //  SizedBox(height: 10,),

                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 60),
                    //   child:
                    Text(
                        'Questions, comments, and requests regarding these Terms should be addressed to support@mindspa.co.uk or by post to:',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),

                    //SizedBox(height: 5,),

                    // Padding(
                    //   padding: EdgeInsets.only(left: 60,right: 60),
                    //   child:
                    Text(
                        'Mindspa Limited, 1 Harley Street, London W1G 9QD, United Kingdom',
                        style: TextStyle(
                          fontSize: 16,
                        )), //),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
