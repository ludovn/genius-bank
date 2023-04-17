import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/kyc_bloc.dart';
import '../bloc/kyc_event.dart';
import '../bloc/kyc_state.dart';
import '../enum/kyc_step.dart';
import '../widget/kyc_step_address.dart';
import '../widget/kyc_step_info.dart';
import '../widget/kyc_step_otp.dart';
import '../widget/kyc_step_phone.dart';
import '../widget/kyc_step_register.dart';

class KycPage extends StatelessWidget {
  const KycPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => KycBloc()..add(InitEvent()),
      child: BlocBuilder<KycBloc, KycState>(
          builder: (context, state) => _buildPage(context, state)),
    );
  }

  Widget _buildPage(BuildContext context, KycState state) {
    late Widget widget;
    switch (state.step) {
      case KycStep.register:
        widget = const KycStepRegister();
        break;
      case KycStep.phone:
        widget = const KycStepPhone();
        break;
      case KycStep.otp:
        widget = const KycStepOtp();
        break;
      case KycStep.info:
        widget = const KycStepInfo();
        break;
      case KycStep.address:
        widget = const KycStepAddress();
        break;
      default:
        widget = const SizedBox.shrink();
    }
    return Scaffold(
      body: SafeArea(
          child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300), child: widget)),
    );
  }
}
