#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
	@autoreleasepool {
		
	}
}


// button trigger is informationpassbtn.
//informationpasslabel is the one display the information that use input.
//inforamtionpasstxtfld is the textfield that use input the information
- (IBAction)informationpassbtn:(id)sender {
	self.informationpasslabel.text = self.informationpasstxtfld.text;
	NSString *userdefaultstring = self.informationpasstxtfld.text;
	
	//creating app sharing protocol 
	NSUserDefaults *myuserdefault = [[NSUserDefaults alloc]initWithSuiteName:@"group.datasharingforwatchtestingaka"];
	[myuserdefault setObject:userdefaultstring forKey:@"saveduserinput"];
	[myuserdefault synchronize];
	
	
	
}


//watch side
//informationpaswatchbtn is the button trigger the sync
- (IBAction)inforamationpasswatchbtn {
	//setting up the protocol to sync the information in the apple server. 
	NSUserDefaults *myuserdefault = [[NSUserDefaults alloc] initWithSuiteName:@"group.datasharingforwatchtestingaka"];
	[myuserdefault synchronize];
	self.informationpasswatchlabel.text = [myuserdefault stringForKey:@"saveduserinput"];
	
}

//dont forget to turn on the app group in project properties
