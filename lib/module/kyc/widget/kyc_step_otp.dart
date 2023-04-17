import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genius_bank/module/kyc/bloc/kyc_event.dart';

import '../../../Widgets/default_button.dart';
import '../../../Widgets/default_textfield.dart';
import '../../../main.dart';
import '../../../theme/app_color.dart';
import '../../../utils/dimension.dart';
import '../bloc/kyc_bloc.dart';

class KycStepOtp extends StatelessWidget {
  const KycStepOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<KycBloc>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.r),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              16.verticalSpace,
              Text(
                'Irnicsevruistcoi viliacoSdMicSe che hai ricevuto via SMS',
                style: appTheme(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: AppColor.textColor, fontSize: 18.sm),
              ),
              30.verticalSpace,
              DefaultTextField(
                controller: TextEditingController(),
                label: 'OTP',
                labelAsTitle: true,
                textInputType: TextInputType.number,
              ),
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '''invia nuovamente l' SMS dopo 5 secondi''',
                    style: appTheme(context)
                        .textTheme
                        .button!
                        .copyWith(color: AppColor.primary, fontSize: 18.sm),
                  ),
                ],
              ),
              20.verticalSpace,
              DefaultButton(
                onTap: () => bloc.add(EnterOtpEvent()),
                child: Text(
                  'avanti',
                  style: appTheme().textTheme.headline1!.copyWith(
                      color: AppColor.buttonTextColor, fontSize: 18.sm),
                ),
              ),
              Dimension.bottomSpace
            ],
          ),
        ),
      ),
    );
  }
}
