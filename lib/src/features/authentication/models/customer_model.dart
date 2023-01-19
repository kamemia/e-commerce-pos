/*
    ==========
    Create Model
    ==========
*/

class CustomerModel {
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? phoneNo;
  final String? email;
  final String? addresses;

  const CustomerModel({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNo,
    required this.addresses,
  });

  toJson() {
    return {
      "FirstName": firstName,
      "LastName": lastName,
      "Phone": phoneNo,
      "Email": email,
      "Address": addresses,
    };
  }
}
