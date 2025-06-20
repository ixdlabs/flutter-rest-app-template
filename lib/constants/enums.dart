enum AuthStatus {
  unauthenticated('UNAUTHENTICATED'),
  newPasswordRequired('NEW_PASSWORD_REQUIRED'),
  authenticated('AUTHENTICATED');

  const AuthStatus(this.value);
  final String value;
}
