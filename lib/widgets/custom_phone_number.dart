import 'package:akanksha_s_application1/core/app_export.dart';
import 'package:akanksha_s_application1/widgets/custom_text_form_field.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8.h,
        ),
        border: Border.all(
          color: appTheme.blueGray50,
          width: 1.h,
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 12.v,
                      bottom: 10.v,
                    ),
                    child: Text(
                      "+${country.phoneCode}",
                      style: TextStyle(
                        color: appTheme.blueGray90001,
                        fontSize: 17.fSize,
                        fontFamily: 'Actor',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDownB,
                    height: 5.v,
                    width: 9.h,
                    margin: EdgeInsets.fromLTRB(12.h, 19.v, 13.h, 19.v),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 21.h,
                right: 4.h,
              ),
              child: CustomTextFormField(
                width: 190.h,
                controller: controller,
                hintText: "905070017",
                textInputType: TextInputType.phone,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 13.v, 4.h, 12.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 43.v,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 8.v),
                borderDecoration: TextFormFieldStyleHelper.underLineBlueGrayB,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: 14.fSize)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
