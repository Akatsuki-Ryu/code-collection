#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
	@autoreleasepool {
		
	}
}

NSURLRequest *urlrequest = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://api.openweathermap.org/data/2.5/weather?q=Helsinki,fi"]];
NSURLResponse *urlresponce = nil;
NSError *urlerror = nil;

NSData *urldata = [NSURLConnection sendSynchronousRequest:urlrequest returningResponse:&urlresponce error:&urlerror];

NSString *fetcheddata = [[NSString alloc] initWithData:urldata encoding:NSASCIIStringEncoding];
NSLog(fetcheddata);

//deal with the data reqired
NSMutableDictionary *alldata = [NSJSONSerialization JSONObjectWithData:urldata options:NSJSONReadingMutableContainers error:&urlerror];


NSString *currentweather = nil;
NSString *currentdiscription = nil;
NSString *citynamestr = nil;
NSArray *weatherarray = alldata[@"weather"];//find and fetch the big category
citynamestr = alldata[@"name"];

for (NSDictionary *weatherdict in weatherarray)//in big category , find small category
{
	
	currentweather = weatherdict[@"main"];
	currentdiscription = weatherdict[@"description"];
	
	
}

NSLog(currentweather);


NSString *resulttext = [citynamestr stringByAppendingString:currentweather];

self.resultlabel.text = resulttext;
self.weatherdisplaylabel.text = currentdiscription;
