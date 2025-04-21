//
//  SpotlightModel.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/18.
//

import UIKit

//MARK: - MeasgModel

class CDBMeaslistModal {

    var heatmapTracking:String? //sendUserImgUrl
    
    var aBTesting:String?//sendUserName
        
    var analyticsDashboard:String?//"sendUserId"
        
        
    var eventTriggers:String?//"content"
        
       
    var contentModeration:String? //messageId
    
    var leaderboardRanking:String?//title
        
    
    

    init(dic:Dictionary<String,Any>?) {
        self.heatmapTracking = dic?["heatmapTracking"] as? String
        
        self.aBTesting = dic?["aBTesting"]  as? String
        self.analyticsDashboard = dic?["analyticsDashboard"]  as? String
        self.eventTriggers = dic?["eventTriggers"] as? String
        
        self.contentModeration = dic?["contentModeration"] as? String
        
        self.leaderboardRanking = dic?["leaderboardRanking"]  as? String
       
        
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

class User {
    
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



//MARK: - EchoModel

class EchoModel: Codable {
    var streetVibe: [StreetVibe]?
    
    // 如果需要支持 MJExtension 的类似功能，可以添加自定义 CodingKeys
    private enum CodingKeys: String, CodingKey {
        case streetVibe
    }
    
    init(streetVibe: [StreetVibe]? = nil) {
        self.streetVibe = streetVibe
    }
}

class StreetVibe: Codable {
    var synthBusking: String?
    var motionCaptureDance: String?
    var digitalImprov: String?
    var streetCalligraphy: String?
    var lightPainting: String?
    
    init(synthBusking: String? = nil,
         motionCaptureDance: String? = nil,
         digitalImprov: String? = nil,
         streetCalligraphy: String? = nil,
         lightPainting: String? = nil) {
        self.synthBusking = synthBusking
        self.motionCaptureDance = motionCaptureDance
        self.digitalImprov = digitalImprov
        self.streetCalligraphy = streetCalligraphy
        self.lightPainting = lightPainting
    }
}

// 使用示例
extension EchoModel {
    static func fromJSON(_ jsonData: Data) -> EchoModel? {
        let decoder = JSONDecoder()
        do {
            return try decoder.decode(EchoModel.self, from: jsonData)
        } catch {
            print("JSON 解码错误: \(error)")
            return nil
        }
    }
    
    func toJSON() -> Data? {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        do {
            return try encoder.encode(self)
        } catch {
            print("JSON 编码错误: \(error)")
            return nil
        }
    }
}
