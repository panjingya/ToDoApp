package webapp;

public class UserValidationService {
  public boolean isUserValid(String name,String password) {
    if(name.equals("May") && password.equals("123"))
      return true;
    return false;
  }
}
