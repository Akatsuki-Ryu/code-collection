#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
	@autoreleasepool {
		
	}
}


// 文字列生成例１
NSString *str = @"ほげ";
str → "ほげ"

// 文字列生成例２
NSString *str = [NSString stringWithString:@"ほげ"];
str → "ほげ"

// 置換文字列を使用した生成例
NSString *str =
	[NSString stringWithFormat:@"%@は%fkmです。", @"フルマラソン", 42.195];
str → "フルマラソンは42.195kmです。"

// 配列の生成例
NSString *strs[] = {@"あ", @"い", @"う"};
str[0] → "あ"
str[1] → "い"
str[2] → "う"


-(unsigned int)length	文字列の長さを取得する
（例）文字列"hogehoge"の長さを取得する
　int len = [@"hogehoge" length];
　len → 8
-(BOOL)isEqualToString:
(NSString*)string	同じ文字列であるか比較する
（例）
　BOOL bl = [@"hoge" isEqualToString:@"HOGE"];
　bl → FALSE
-(NSString*)stringByAppendingString:
(NSString*)string	文字列を結合する
※例は下記参照
-(NSString*)substringToIndex:
(unsigned)anIndex	文字列の切り出し
※例は下記参照
-(NSString*)
stringByTrimmingCharactersInSet:
(NSCharacterSet*)set	トリムする
※例は下記参照
-(BOOL)hasPrefix:(NSString*)string	文字列の先頭比較
※例は下記参照
-(BOOL)hasSuffix:(NSString*)string	文字列の後方比較
※例は下記参照
-(NSRange)rangeOfString:
(NSString*)aString	文字列中の文字を検索する
※例は下記参照
-(int)intValue	int型にキャストする
（例）int val = [@"123" intValue];
-(float)floatValue	float型にキャストする
（例）float val = [@"123.45" floatValue];
-(double)doubleValue	double型にキャストする
（例）double val = [@"123.45" doubleValue];
-(BOOL)boolValue	BOOL型にキャストする
（例）BOOL b = [str boolValue];



// 先頭から３文字取得
NSString *str = [@"あいうえお" substringToIndex:3];
	str → "あいう"

// ３文字目から後ろを取得
NSString *str = [@"あいうえお" substringFromIndex:3];
	str → "えお"

// ２文字目から３文字分を取得
NSString *str = [@"あいうえお" substringWithRange:NSMakeRange(1,3)];
	str → "いうえ"
	
	
	// ABCの前後にあるスペースを取り除く
	NSString *str = [@"  ABC   " stringByTrimmingCharactersInSet:
												[NSCharacterSet whitespaceCharacterSet]];
	  str → "ABC"
	
	BOOL bl = [str hasPrefix:@"hoge"];  // 文字列strが"hoge"から始まる文字列であればTRUE
	BOOL bl = [str hasSuffix:@"hoge"];  // 文字列strが"hoge"で終わる文字列であればTRUE
	
	
	
	
	// 文字列strの中に@"AAA"というパターンが存在するかどうか
	NSRange searchResult = [str rangeOfString@"AAA"];
	if(searchResult.location == NSNotFound){
		// みつからない場合の処理
	}else{
		// みつかった場合の処理
	}

 

// 文字列valの値が@"Hoge"であるかどうか比較する
	NSString *val = @"hoge";
	BOOL b = [val isEqualToString:@"Hoge"];
		b → NO


// 文字列str1とstr2を結合する
		NSString *str1 = @"ho";
		NSString *str2 = @"ge";

		NSString *val = [str1 stringByAppendingString:str2];
			val → @"hoge";
			
			
			//copy the string 
		NSString *firstName = @"aka";
				
		NSString *copy = [NSString stringWithString:firstName];
				
		NSLog(@"%@ is a copy of %@", copy, firstName);
			