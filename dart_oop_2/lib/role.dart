enum RoleStatus { admin, user, seller }

abstract class Role {
  final RoleStatus _role;
  Role(this._role);

  int get weight {
    switch (_role) {
      case RoleStatus.admin:
        return 1;
      case RoleStatus.user:
        return 2;
      case RoleStatus.seller:
        return 3;
    }
  }

  String get status {
    switch (_role) {
      case RoleStatus.admin:
        return 'Administrator';
      case RoleStatus.user:
        return 'User';
      case RoleStatus.seller:
        return 'Seller';
    }
  }
}
