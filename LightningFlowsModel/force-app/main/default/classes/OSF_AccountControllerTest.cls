/**********************************************************************
 * @Name         : OSF_AccountControllerTest
 * @Description  : test class for OSF_AccountController.
 *
 * @Created By   : Marta Demeny
 * @Created Date : 11 jul. 2022
 * @Modification Log: 
 ********************************************************************
 * Version		Developer		Date			Description
 *___________________________________________________________________
 *
 *********************************************************************/
public with sharing class OSF_AccountControllerTest {
/**********************************************************************
 * @Name         : setup
 * @Description  : Helper method to create the testing data.
 * @Created By   : Marta Demeny
 * @Created Date : 11 jul. 2022
 *
 *********************************************************************/ 
    @testSetup 
    private static void setup() {
        Profile pf= [Select Id from profile where Name='System Administrator']; 
    
        User caseOwner = createTestempUser(pf.Id, 'Test', 'User');

        List<Case> caseList = new List<Case>();
        for ( Integer i = 0; i < 3; i++) {
            Case cs = new Case(Origin = 'Web', Status = 'New', Subject = 'Subject ' + i, OwnerId = caseOwner.Id);
            caseList.add(cs);
        }
        insert caseList;
    }
/**********************************************************************
 * @Name         : createTestempUser
 * @Description  : Create a temporary user with unique username.
 * @Created By   : Marta Demeny
 * @Created Date : 05 jul. 2022
 * 
 * @param Id - contains the profil Id
 * @param String - string contains the user first name
 * @param String - string contains the user last name
 * @return User - User object containing the created user
 *
 *********************************************************************/
    public static User createTestempUser(Id profilId, String fName, String lName) {  
    }
}
