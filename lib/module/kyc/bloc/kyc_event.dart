abstract class KycEvent {}

class InitEvent extends KycEvent {}

class RegisterEvent extends KycEvent {}

class EnterPhoneEvent extends KycEvent {}

class EnterOtpEvent extends KycEvent {}

class EnterInfoEvent extends KycEvent {}

class EnterAddressEvent extends KycEvent {}
