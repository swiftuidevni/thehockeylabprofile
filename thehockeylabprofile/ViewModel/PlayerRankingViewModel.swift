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
	var RankingType : Int
	var FirstName:String
	var LastName : String
	var Reps: Decimal
	var Weight: Decimal
	var Seconds:Decimal
	var DistanceFt:Decimal
	var DistanceInches:Decimal
	
	enum RankingTypes :Int{
		case BP = 1
		case OP = 2
		case VJ = 3
		case PUH = 4
 	}
	
	init(id: UUID = UUID() ,PlayerId:Int,RankingType:Int,FirstName:String,LastName:String,Reps:Decimal, Weight:Decimal,Seconds:Decimal,DistanceFt:Decimal,DistanceInches:Decimal){
		
		self.id = id
		self.PlayerId = PlayerId
		self.RankingType = RankingType
		self.FirstName = FirstName
		self.LastName = LastName
		self.Reps = Reps
		self.Weight = Weight
		self.Seconds=Seconds
		self.DistanceFt = DistanceFt
		self.DistanceInches = DistanceInches
		
		
	}
}

extension PlayerRankingViewModel {
	static var sampleData : [PlayerRankingViewModel] {
	[
		PlayerRankingViewModel(PlayerId:2,RankingType:RankingTypes.BP.rawValue,FirstName: "Dazy",LastName: "Johnstone" ,Reps: 56.39, Weight: 125.00,Seconds:0.00,DistanceFt:0.00,DistanceInches:0.00),
		PlayerRankingViewModel(PlayerId:2,RankingType:RankingTypes.OP.rawValue,FirstName: "Dazy",LastName: "Johnstone" ,Reps: 56.39, Weight: 125.00,Seconds:0.00,DistanceFt:0.00,DistanceInches:0.00),
		PlayerRankingViewModel(PlayerId:2,RankingType:3,FirstName: "Dazy",LastName: "Johnstone" ,Reps: 56.39, Weight: 125.00,Seconds:0.00,DistanceFt:0.00,DistanceInches:0.00)
	]
}
							   
}

