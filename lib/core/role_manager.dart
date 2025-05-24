enum UserRole { operator, technician, executive, admin }

class RoleManager {
  static UserRole currentRole = UserRole.technician;

  static bool canOverride() {
    return currentRole == UserRole.executive || currentRole == UserRole.admin;
  }
}
