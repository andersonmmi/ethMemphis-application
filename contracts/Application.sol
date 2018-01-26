pragma solidity ^0.4.18;

 contract Application {

   Guest[] public guests;

   struct Guest {
      string firstName;
      string lastName;
      string email;
      string organization;
      string gitHubUrl;
      string linkedInUrl;
      string identity;
      /* string attribute; */
   }

   function addGuest(
      string _firstName,
      string _lastName,
      string _email,
      string _organization,
      string _gitHubUrl,
      string _linkedInUrl,
      string _identity
      /* string _attribute */

   ) public returns (bool success) {

      Guest memory newGuest;
      newGuest.firstName = _firstName;
      newGuest.lastName = _lastName;
      newGuest.email = _email;
      newGuest.organization = _organization;
      newGuest.gitHubUrl = _gitHubUrl;
      newGuest.linkedInUrl = _linkedInUrl;
      newGuest.identity = _identity;
      /* newGuest.attribute = _attribute; */

      guests.push(newGuest);
      return true;
   }
}
