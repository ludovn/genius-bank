import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:genius_bank/module/kyc/enum/kyc_step.dart';

import 'kyc_event.dart';
import 'kyc_state.dart';

class KycBloc extends Bloc<KycEvent, KycState> {
  KycBloc() : super(KycState(step: KycStep.register)) {
    on<InitEvent>(_init);
    on<EnterPhoneEvent>(_onEnterPhone);
    on<EnterOtpEvent>(_onEnterOtp);
  }

  void _init(InitEvent event, Emitter<KycState> emit) async {
    emit(KycState(step: KycStep.register));
  }

  void _onEnterPhone(EnterPhoneEvent event, Emitter<KycState> emit) {
    emit(KycState(step: KycStep.phone));
  }

  void _onEnterOtp(EnterOtpEvent event, Emitter<KycState> emit) {
    emit(KycState(step: KycStep.otp));
  }
}
