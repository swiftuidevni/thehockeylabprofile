//
//  thejockeylabapi.swift
//  thehockeylabprofile
//
//  Created by David Buckley on 09/09/2022.
//
import Alamofire
class thehockeylabapi{
	var apiURLBase = "https://api-hockeylab.com/api/"
	init() {
			
    }
	func getFriends( ) {
		performRequest()
	}
	func   performRequest () {
		let  request =  apiURLBase
		var url =  request + "Friends/GetAllParentsFriends?parentId=1"
		AF.request(url).responseData { response in
				switch response.result {
				case .success(let value):
					print(value)
 				case .failure(let error):
					print(error)
 				}
	}
	}
    
}
