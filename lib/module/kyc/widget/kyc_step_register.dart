import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genius_bank/module/kyc/bloc/kyc_bloc.dart';

import '../../../Widgets/default_button.dart';
import '../../../Widgets/default_textfield.dart';
import '../../../main.dart';
import '../../../theme/app_color.dart';
import '../../../utils/dimension.dart';
import '../bloc/kyc_event.dart';

class KycStepRegister extends StatelessWidget {
  const KycStepRegister({Key? key}) : super(key: key);

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
                'sei a 5 minuti da avere la tua Carta Reale, Iniziamo',
                style: appTheme(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: AppColor.textColor, fontSize: 18.sm),
              ),
              30.verticalSpace,
              DefaultTextField(
                controller: TextEditingController(),
                label: 'inserisci la tua email',
                labelAsTitle: true,
                textInputType: TextInputType.emailAddress,
                //validator: Validator.emailValidator,
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: AppColor.grey,
                ),
              ),
              16.verticalSpace,
              DefaultTextField(
                controller: TextEditingController(),
                label: 'inserisci la tua password',
                labelAsTitle: true,
                obscureText: true,
                prefixIcon: Icon(
                  Icons.lock_outline_rounded,
                  color: AppColor.grey,
                ),
              ),
              16.verticalSpace,
              DefaultTextField(
                controller: TextEditingController(),
                label: 'Verifica Password',
                labelAsTitle: true,
                obscureText: true,
                prefixIcon: Icon(
                  Icons.lock_outline_rounded,
                  color: AppColor.grey,
                ),
              ),
              20.verticalSpace,
              DefaultButton(
                onTap: () => bloc.add(EnterPhoneEvent()),
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
