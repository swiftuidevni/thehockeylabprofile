//
//  PlayerRanking.swift
//  thehockeylabprofile
//
//  Created by David Buckley on 27/09/2022.
//

import SwiftUI

struct PlayerRankingViewModel : Identifiable {
	var id: UUID
	var PlayerId : Int
	var RankingTitleText : String
	var RankingType : Int
	var RankingTypeImage : String
	var FirstName:String
	var LastName : String
	var Reps: Decimal
	var Weight: Decimal
	var UOM : String
	var Seconds:Decimal
	var DistanceFt:Decimal
	var DistanceInches:Decimal
	
	enum RankingTypes :Int{
		case BAH = 1
		case PU 	= 2
		case TB = 3
		case BP = 4
		case OP = 5
		case PUH = 6
		case Bike = 7
		case TwentyFiveYard = 8
		case OneFiftyYard = 9
		case Jumps = 10
		case VJ = 11
		case BroadJump = 12
		case FrontSquat = 13
		case HangClean = 14
		
		var stringValue : String {
			switch self {
			case .BAH     :return "bicycle"
			case .PU 	 :return "bicycle"
			case .TB  :return "dumbbell"
			case .BP  :return "dumbbell"
			case .OP  :return "dumbbell"
			case .PUH  :return "bicycle"
			case .Bike  :return "bicycle"
			case .TwentyFiveYard  :return "bicycle"
			case .OneFiftyYard  :return "bicycle"
			case .Jumps  :return "bicycle"
			case .VJ  :return "bicycle"
			case .BroadJump  :return "bicycle"
			case .FrontSquat  :return "bicycle"
			case .HangClean  :return "bicycle"
				
				
			}
		}
		
		
		enum RankingTitleText :Int{
			case BAH = 1
			case PU 	= 2
			case TB = 3
			case BP = 4
			case OP = 5
			case PUH = 6
			case Bike = 7
			case TwentyFiveYard = 8
			case OneFiftyYard = 9
			case Jumps = 10
			case VJ = 11
			case BroadJump = 12
			case FrontSquat = 13
			case HangClean = 14
			
			var textValue : String {
				switch self {
				case .BAH :return "bicycle"
				case .PU :return "Pull Ups"
				case .TB :return "Trap Bar"
				case .BP :return "Bench Press"
				case .OP :return "Overhead Press"
				case .PUH :return "Pull up Hold"
				case .Bike :return "Bike"
				case .TwentyFiveYard :return "25 Yard Run"
				case .OneFiftyYard :return "One Fity Yard Run"
				case .Jumps :return "bicycle"
				case .VJ :return "Vertical Jump"
				case .BroadJump :return "Broad Jump"
				case .FrontSquat :return "Front Sqaut"
				case .HangClean :return "Hang Clean"
					
					
				}
			}
			
			
		}
	}
	
	
	init(id: UUID = UUID() ,PlayerId:Int, RankingTitleText:String, RankingType:Int,RankingTypeImage:String,FirstName:String,LastName:String,UOM:String,Reps:Decimal, Weight:Decimal,Seconds:Decimal,DistanceFt:Decimal,DistanceInches:Decimal){
		
		self.id = id
		self.PlayerId = PlayerId
		self.RankingTitleText = RankingTitleText
		self.RankingType = RankingType
		self.RankingTypeImage =  RankingTypeImage
		self.FirstName = FirstName
		self.LastName = LastName
		self.Reps = Reps
		self.UOM = UOM
		self.Weight = Weight
		self.Seconds = Seconds
		self.DistanceFt = DistanceFt
		self.DistanceInches = DistanceInches
		
	}
}
 

extension PlayerRankingViewModel {
	static var sampleData : [PlayerRankingViewModel] {
	[
		PlayerRankingViewModel(PlayerId:1,RankingTitleText:"Bench Press",RankingType:RankingTypes.BP.rawValue,RankingTypeImage:  RankingTypes.BP.stringValue,FirstName: "Rock",LastName: "Johnstone" ,UOM:"KG", Reps: 56.39, Weight: 125.00,Seconds:0.00,DistanceFt:0.00,DistanceInches:0.00),
		PlayerRankingViewModel(PlayerId:2,RankingTitleText: "Trap Bar",RankingType:RankingTypes.TB.rawValue,RankingTypeImage: RankingTypes.TB.stringValue,FirstName: "Paul",LastName: "+Johnstone" ,UOM:"KG", Reps: 56.39,Weight: 125.00,Seconds:0.00,DistanceFt:0.00,DistanceInches:0.00),
		PlayerRankingViewModel(PlayerId:3,RankingTitleText: "Bike",RankingType:RankingTypes.Bike.rawValue,RankingTypeImage: RankingTypes.Bike.stringValue,FirstName: "Dazy",LastName: "Johnstone" ,UOM:"seconds", Reps: 23.39, Weight:12.00,Seconds:0.00,DistanceFt:0.00,DistanceInches:0.00)
	]
}
							   
}

