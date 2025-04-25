//
//  SpotlightModel.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/18.
//

import UIKit

//MARK: - MeasgModel

class CDBMeaslistModal {

    var achievementSystem:String? //iser name
    
    var aBTesting:String?//sendUserName
        
    var analyticsDashboard:String?//"sendUserId"
    var userReputation:String? //receiveUserId
    
        
    var eventTriggers:String?//"content"
        
       
    var contentModeration:String? //messageId
    
    var leaderboardRanking:String?//title
        
    var skillBadges:String? //img
    
    

    init(dic:Dictionary<String,Any>?) {
        self.achievementSystem = dic?["achievementSystem"] as? String
        
        self.aBTesting = dic?["aBTesting"]  as? String
        self.analyticsDashboard = dic?["analyticsDashboard"]  as? String
        self.eventTriggers = dic?["eventTriggers"] as? String
        
        self.contentModeration = dic?["contentModeration"] as? String
        
        self.leaderboardRanking = dic?["leaderboardRanking"]  as? String
       
        self.skillBadges = dic?["skillBadges"]  as? String
        
        self.userReputation = "\(dic?["userReputation"]  as? Int ?? 0)"
    }
    
    
}

//MARK: - 动态Model

class HomeDymModal {
  
    var shaderCustomization:String? //userId
    
    var constraintSolver:String?//动态ID dynamicId
    var meshDeformation:String?//"userName"
    var particleEffects:String?//"userImgUrl"
    
    var animationSequencing:String?//dynamicContent
    var rayTracing:Array<String>?// dynamicImgList
    
    
    var globalIllumination:Int? //createDate
    var postProcessing:Int?//attentionFlag
    
    var frameRateOptimization:Int? //storeFlag
    
    var networkLatency:String? //videoImgUrl
    
    

    init(dic:Dictionary<String,Any>?) {
        self.shaderCustomization = dic?["shaderCustomization"] as? String
        
        self.constraintSolver = "\(dic?["constraintSolver"]  as? Int ?? 0)"
        self.meshDeformation = dic?["meshDeformation"]  as? String
        self.particleEffects = dic?["particleEffects"] as? String
        
        self.animationSequencing = dic?["animationSequencing"] as? String
        
        self.globalIllumination = dic?["globalIllumination"]  as? Int
        self.postProcessing = dic?["postProcessing"]  as? Int
        self.networkLatency = dic?["networkLatency"] as? String
        self.rayTracing = dic?["rayTracing"] as? Array<String>
        frameRateOptimization = dic?["frameRateOptimization"] as? Int
        
    }
    
    
}


//MARK: - User

class DBHUs_er {
    
    //登陆user
    var objectTracking:String?//"userName"
    var poseEstimation:String?//"userId"
    var sceneUnderstanding:String?//"userImgUrl"
    var machineLearning:String?//"token"
    //用户列表
    var brickAssembly:String?//userId
    var creativeCollaboration:String?//userImgUrl
    var modularDesign:String?//userName
    //用户详细情况
    var skillBadges:String?//"userName"
    var achievementSystem:String?//"userId"
    var leaderboardRanking:String?//"userImgUrl"
    
    var subscriptionModel:String?//"userFans"
    var virtualCurrency:String?//"userFriends"
    var lootBoxMechanics:String?//"lootBoxMechanics"
    
    
    

    init(dic:Dictionary<String,Any>?,isfromLocal:Bool = false) {
        self.machineLearning = dic?["machineLearning"] as? String
        if isfromLocal {
            self.poseEstimation =  dic?["poseEstimation"] as? String
        }else{
            self.poseEstimation =  "\(dic?["poseEstimation"] as? Int ?? 0)"
        }
        self.sceneUnderstanding = dic?["sceneUnderstanding"]  as? String
        
        self.objectTracking = dic?["objectTracking"] as? String
        
        ///
        self.brickAssembly = "\(dic?["brickAssembly"] as? Int ?? 0)"
        self.creativeCollaboration = dic?["creativeCollaboration"]  as? String
        self.modularDesign = dic?["modularDesign"] as? String
        
        //
        
        self.achievementSystem = "\(dic?["achievementSystem"] as? Int ?? 0)"
        self.skillBadges = dic?["skillBadges"]  as? String
        self.leaderboardRanking = dic?["leaderboardRanking"] as? String
        self.subscriptionModel = "\(dic?["subscriptionModel"] as? Int ?? 0)"
        self.virtualCurrency = "\(dic?["virtualCurrency"] as? Int ?? 0)"
        self.lootBoxMechanics = "\(dic?["lootBoxMechanics"] as? Int ?? 0)"
       
        
       
    }
    
    func modoalTRansforDic() -> Dictionary<String,String> {
        var dic = Dictionary<String,String>()
        dic["machineLearning"] = self.machineLearning
        dic["sceneUnderstanding"] = self.sceneUnderstanding
        dic["poseEstimation"] = self.poseEstimation
        dic["objectTracking"] = self.objectTracking
        return dic
    }
}

