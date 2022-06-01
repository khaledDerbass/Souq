import 'package:country_picker/country_picker.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

class myCountry extends StatefulWidget {
  const myCountry({Key? key}) : super(key: key);

  @override
  _myCountryState createState() => _myCountryState();
}


class _myCountryState extends State<myCountry> {
  /*
  String country ='Jordan';
  String city ='Amman';

  // List of items in our dropdown menu
  var countries = [
    'United Arab Emirates',
    'QATAR',
    'KSA',
    'KUWAIT ',
    'Bahrain'
  ];
  // List of items in our dropdown menu
  var cities = [
    'AL-Zarqa',
    'Irbid'
  ];
*/

  @override
  void initState() {
    super.initState();
  }
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";
  @override
  Widget build(BuildContext context) {
    GlobalKey<CSCPickerState> _cscPickerKey = GlobalKey();
    return SafeArea(
        child: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage(
        'assets/register.png',
           ),
        fit: BoxFit.cover,
       ),
        ),

          child: Scaffold(
           backgroundColor: Colors.transparent,
             body: Center(
               child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 150,
                child: Column(
                children: [
                  CSCPicker(
                    ///Enable disable state dropdown [OPTIONAL PARAMETER]
                    showStates: true,

                    /// Enable disable city drop down [OPTIONAL PARAMETER]
                    showCities: true,

                    ///Enable (get flat with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
                    flagState: CountryFlag.SHOW_IN_DROP_DOWN_ONLY,

                    ///Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
                    dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300, width: 1)),

                    ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
                        disabledDropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.grey.shade300,
                        border: Border.all(color: Colors.grey.shade300, width: 1)),

                    ///selected item style [OPTIONAL PARAMETER]
                    selectedItemStyle: TextStyle(color: Colors.black, fontSize: 14,),

                    ///DropdownDialog Heading style [OPTIONAL PARAMETER]
                    dropdownHeadingStyle: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),

                    ///DropdownDialog Item style [OPTIONAL PARAMETER]
                    dropdownItemStyle: TextStyle(color: Colors.black,fontSize: 14, ),

                    ///Dialog box radius [OPTIONAL PARAMETER]
                    dropdownDialogRadius: 10.0,

                    ///Search bar radius [OPTIONAL PARAMETER]
                    searchBarRadius: 10.0,

                    ///triggers once country selected in dropdown
                    onCountryChanged: (value) {
                      setState(() {
                        ///store value in country variable
                        countryValue = value;
                      });
                    },

                    ///triggers once state selected in dropdown
                    onStateChanged: (value) {
                      setState(() {
                        ///store value in state variable
                        if(value != null)
                        stateValue = value;
                      });
                    },

                    ///triggers once city selected in dropdown
                    onCityChanged: (value) {
                      setState(() {
                        ///store value in city variable
                        if(value != null)
                        cityValue = value;
                      });
                    },
                  ),


                   TextButton(
                      onPressed: () {
                      setState(() {
                      address = "$cityValue, $stateValue, $countryValue";
                      });
                      },
                    child: Text("")),

/*
           ElevatedButton(
             onPressed: () {
                         showCountryPicker(
              context: context,
              //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
              exclude: <String>[
                'AU',
                'AD',
                'AF',
                'AG',
                'AI',
                'AL',
                'AM',
                'AO',
                'AQ',
                'AR',
                'AS',
                'AT',
                'AW',
                'AX',
                'AZ',
                'BA',
                'BB',
                'BD',
                'BE',
                'BF',
                'BG',
                'BH',
                'BI',
                'BJ',
                'BL',
                'BM',
                'BN',
                'BO',
                'BQ',
                'BR',
                'BS',
                'BT',
                'BV',
                'BW',
                'BY',
                'BZ',
                'CA',
                'CC',
                'CD',
                'CF',
                'CG',
                'CH',
                'CI',
                'CK',
                'CL',
                'CM',
                'CN',
                'CO',
                'CR',
                'CU',
                'CV',
                'CW',
                'CX',
                'CY',
                'CZ',
                'DE',
                'DJ',
                'DK',
                'DM',
                'DO',
                'DZ',
                'EC',
                'EE',
                'EH',
                'ER',
                'ES',
                'ET',
                'FI',
                'FJ',
                'FK',
                'FM',
                'FO',
                'FR',
                'GA',
                'GB',
                'GD',
                'GE',
                'GF',
                'GG',
                'GH',
                'GI',
                'GL',
                'GM',
                'GN',
                'GP',
                'GQ',
                'GR',
                'GS',
                'GT',
                'GU',
                'GW',
                'GY',
                'HK',
                'HM',
                'HN',
                'HR',
                'HT',
                'HU',
                'ID',
                'IE',
                'IL',
                'IM',
                'IN',
                'IO',
                'IR',
                'IS',
                'IT',
                'JE',
                'JM',
                'JP',
                'KE',
                'KG',
                'KH',
                'KI',
                'KM',
                'KN',
                'KP',
                'KR',
                'KY',
                'KZ',
                'LA',
                'LC',
                'LI',
                'LK',
                'LR',
                'LS',
                'LT',
                'LU',
                'LV',
                'LY',
                'MA',
                'MC',
                'MD',
                'ME',
                'MF',
                'MG',
                'MH',
                'MK',
                'ML',
                'MM',
                'MN',
                'MO',
                'MP',
                'MQ',
                'MR',
                'MS',
                'MT',
                'MU',
                'MV',
                'MW',
                'MX',
                'MY',
                'MZ',
                'NA',
                'NC',
                'NE',
                'NF',
                'NG',
                'NI',
                'NL',
                'NO',
                'NP',
                'NR',
                'NU',
                'NZ',
                'OM',
                'PA',
                'PE',
                'PF',
                'PG',
                'PH',
                'PK',
                'PL',
                'PM',
                'PN',
                'PR',
                'PS',
                'PT',
                'PW',
                'PY',
                'RE',
                'RO',
                'RS',
                'RU',
                'RW',
                'SA',
                'SB',
                'SC',
                'SD',
                'SE',
                'SG',
                'SH',
                'SI',
                'SJ',
                'SK',
                'SL',
                'SM',
                'SN',
                'SO',
                'SR',
                'SS',
                'ST',
                'SV',
                'SX',
                'SY',
                'SZ',
                'TC',
                'TD',
                'TF',
                'TG',
                'TH',
                'TJ',
                'TK',
                'TL',
                'TM',
                'TN',
                'TO',
                'TR',
                'TT',
                'TV',
                'TW',
                'TZ',
                'UA',
                'UG',
                'UM',
                'US',
                'UY',
                'UZ',
                'VA',
                'VC',
                'VE',
                'VG',
                'VI',
                'VN',
                'VU',
                'WF',
                'WS',
                'YT',
                'ZA',
                'ZM',
                'ZW',],
              favorite: <String>['JO','QA'],
              //Optional. Shows phone code before the country name.
              showPhoneCode: true,
              onSelect: (Country country) {
                print('Select country: ${country.displayName}');
              },
              // Optional. Sets the theme for the country list picker.
              countryListTheme: CountryListThemeData(
                // Optional. Sets the border radius for the bottomsheet.
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
                // Optional. Styles the search field.
                inputDecoration: InputDecoration(
                  labelText: 'Search',
                  hintText: 'Start typing to search',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xFF6E6E8C),
                    ),
                  ),
                ),
              ),
            );
            },
             child: Row(
              // mainAxisSize: MainAxisSize.max,
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text('Select country'),
               ],
             ),

           ),
*/

          ],
        )),
    ),
    ),),);
  }
}