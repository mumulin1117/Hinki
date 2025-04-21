//
//  DBNDterMancner.swift
//  DiBngHink
//
//  Created by mumu on 2025/4/18.
//

import UIKit
import Alamofire

// MARK: - Dictionary 扩展（JSON 美化输出）
extension Dictionary {
    var jsonPrettyStringEncoded: String? {
        guard JSONSerialization.isValidJSONObject(self) else { return nil }
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: .prettyPrinted)
            return String(data: jsonData, encoding: .utf8)
        } catch {
            return nil
        }
    }
}




// MARK: - 网络请求工具类
final class FrealNetworking {
    static let shared = FrealNetworking()
    private let sessionManager: Session
    private init() {
           let configuration = URLSessionConfiguration.af.default
           configuration.timeoutIntervalForRequest = 30
           sessionManager = Session(configuration: configuration)
       }
    
  
     var appId: String {
        return "95959480"
    }
    
     var appBaseUrl: String {
        return "http://www.rainbow4567.xyz/backone"
    }
    
    var appBaseUrlAVoutWEB: String {
       return "http://www.rainbow4567.xyz/#"
   }
    
    
    // MARK: 核心请求方法
    func request(
           _ path: String,
           method: HTTPMethod = .post,
           parameters: Parameters? = nil,
           headers: HTTPHeaders? = nil,
           isLogin: Bool = false,
           success: ((Any?) -> Void)? = nil,
                  
           failure: ((AFError) -> Void)? = nil
    ) -> DataRequest {
           let url =  appBaseUrl + path
           let finalHeaders = processHeaders(headers, isLogin: isLogin)
           return sessionManager.request(
            url,        
            method: method,
            parameters: parameters,
            encoding: JSONEncoding.default,
            headers: finalHeaders
        )
        .validate(contentType: ["text/html", "application/json", "text/javascript", "text/json", "text/plain", "charset=UTF-8"])
        .responseJSON { response in
            switch response.result {
            case .success(let value):
               
              
                
                success?(value)
            case .failure(let error):
                failure?(error)
            }
            
        }
//           AF.request(
//               url,
//               method: method,
//               parameters: parameters,
//               encoding: JSONEncoding.default,
//               headers: finalHeaders
//           )
//           .validate()
//           .response { response in
//               switch response.result {
//               case .success(let value):
//                   break
////                   completion(.success(value))
//               case .failure(let error):
//                   completion(.failure(error))
//               }
//           }
       }
       
       private func processHeaders(_ headers: HTTPHeaders?, isLogin: Bool) -> HTTPHeaders {
           var finalHeaders = headers ?? HTTPHeaders()
           finalHeaders.add(name: "Content-Type", value: "application/json")
           
           if isLogin {
               finalHeaders.add(name: "key", value: appId)
               finalHeaders.add(name: "token", value: AppDelegate.loguserMofdal?.machineLearning ?? "")
           }
           
           return finalHeaders
       }
  
}
    



//[
//  {
//    "customPath": "/wfwxcqsotz/nkqfxs",
//    "resReplace": {
//      "communityEngagement": "userBrief",
//      "multiUserWorkspace": "userPassword",
//      "physicsSimulation": "equipmentNo",
//      "patternRecognition": "vipExpireTime",
//      "brickAssembly": "userId",
//      "creativeCollaboration": "userImgUrl",
//      "cloudSaving": "userAttention",
//      "aiAssistedDesign": "userBirthday",
//      "realTimeRendering": "userEmail",
//      "dynamicTextureMapping": "userGender",
//      "userGeneratedContent": "bundleId",
//      "modularDesign": "userName",
//      "interactiveTutorials": "userVipStatus",
//      "gestureControl": "userFans",
//      "crossPlatformSync": "userStatus",
//      "designShowcase": "userBalance",
//      "proceduralGeneration": "userFriends",
//      "virtualBrickInventory": "userLocation",
//      "smartRecommendation": "userType",
//      "assetBundleManagement": "createUserId"
//    },
//    "reqReplace": {
//      "blockBuilding": "bundleId"
//    },
//    "systemPath": "/sj/user/selectUserIndexList"
//  },
//  {
//    "customPath": "/bugugeigajz/hljordzhvihcvpw",
//    "resReplace": {
//      "specularSettings": "storeNum",
//      "memoryManagement": "commentVoList",
//      "meshDeformation": "userName",
//      "constraintSolver": "dynamicId",
//      "contextualHelp": "dynamicTitle",
//      "normalMapping": "forwardNum",
//      "uvUnwrapping": "commentNum",
//      "loadBalancing": "dynamicClassify",
//      "particleEffects": "userImgUrl",
//      "ambientOcclusion": "bundleId",
//      "postProcessing": "attentionFlag",
//      "globalIllumination": "createDate",
//      "rayTracing": "dynamicImgList",
//      "animationSequencing": "dynamicContent",
//      "renderPipeline": "praiseNum",
//      "commentVoList": {
//        "protocolBuffers": "replyUserImgUrl",
//        "websocketIntegration": "praiseNum",
//        "memoryManagement": "commentId",
//        "rateLimiting": "beReplyCommentId",
//        "restfulApis": "replyContent",
//        "jwtTokens": "beReplyUserName",
//        "loadBalancing": "dynamicId",
//        "oauthAuthentication": "beReplyUserId",
//        "endToEndEncryption": "beReplyContent",
//        "networkLatency": "replyUserId",
//        "dataCompression": "replyUserName",
//        "contentModeration": "bundleId"
//      },
//      "networkLatency": "videoImgUrl",
//      "shaderCustomization": "userId",
//      "frameRateOptimization": "storeFlag"
//    },
//    "reqReplace": {
//      "perspectiveSwitching": "selectVersion",
//      "lightingOptimization": "size",
//      "parametricModeling": "bundleId",
//      "versionControl": "selectType",
//      "materialProperties": "userId",
//      "topologyOptimization": "dynamicClassify",
//      "collaborativePrototyping": "dynamicType",
//      "structuralAnalysis": "current"
//    },
//    "systemPath": "/sj/dynamic/selectDynamicList"
//  },
//  {
//    "customPath": "/vxjfgvz/zpaegqgmpjteqog",
//    "reqReplace": {
//      "dataCompression": "dynamicId"
//    },
//    "systemPath": "/sj/dynamic/updateDynamicStore"
//  },
//  {
//    "customPath": "/wnlreaohqzdez/voiztlh",
//    "reqReplace": {
//      "protocolBuffers": "beHandleUserId",
//      "websocketIntegration": "beHandleUserImg",
//      "restfulApis": "beHandleUserName",
//      "jwtTokens": "dynamicId",
//      "oauthAuthentication": "hanldeType"
//    },
//    "systemPath": "/sj/user/updateUserRelation"
//  },
//  {
//    "customPath": "/qxawynltzgfojz/pzgzwfpk",
//    "resReplace": {
//      "messageUserVoList": {
//        "heatmapTracking": "sendUserImgUrl",
//        "skillBadges": "receiveUserImg",
//        "aBTesting": "sendUserName",
//        "eventTriggers": "content",
//        "achievementSystem": "receiveUserName",
//        "analyticsDashboard": "sendUserId",
//        "userOnboarding": "createDate",
//        "contentModeration": "messageId",
//        "userReputation": "receiveUserId",
//        "leaderboardRanking": "title"
//      },
//      "contentModeration": "messageUserVoList"
//    },
//    "reqReplace": {
//      "rateLimiting": "receiveUserId",
//      "endToEndEncryption": "bundleId"
//    },
//    "systemPath": "/sj/message/selectMessageInfo"
//  },
//  {
//    "customPath": "/rrecskvpz/tfhqqpe",
//    "resReplace": {
//      "heatmapTracking": "userGender",
//      "skillBadges": "userName",
//      "aBTesting": "userBirthday",
//      "eventTriggers": "userEmail",
//      "subscriptionModel": "userFans",
//      "virtualCurrency": "userFriends",
//      "leaderboardRanking": "userImgUrl",
//      "userDynamicVoList": {
//        "groupChat": "createDate",
//        "subscriptionModel": "dynamicContent",
//        "privateMessaging": "bundleId",
//        "resolutionScaling": "dynamicClassify",
//        "voiceModulation": "dynamicImgList",
//        "virtualCurrency": "dynamicTitle",
//        "socialFeed": "praiseNum",
//        "backgroundNoiseCancellation": "attentionFlag",
//        "avatarCreation": "forwardNum",
//        "profileCustomization": "commentNum",
//        "videoCompression": "storeFlag",
//        "bandwidthAdaptation": "commentVoList",
//        "giftSharing": "userImgUrl",
//        "commentVoList": {
//          "gestureRecognition": "beReplyUserId",
//          "poseEstimation": "beReplyUserName",
//          "sceneUnderstanding": "beReplyCommentId",
//          "imageSegmentation": "bundleId",
//          "bandwidthAdaptation": "commentId",
//          "echoCancellation": "replyContent",
//          "motionPrediction": "replyUserName",
//          "resolutionScaling": "dynamicId",
//          "frameInterpolation": "replyUserId",
//          "latencyCompensation": "replyUserImgUrl",
//          "spatialAudio": "praiseNum",
//          "objectTracking": "beReplyContent"
//        },
//        "frameInterpolation": "videoImgUrl",
//        "lootBoxMechanics": "userId",
//        "rewardRedemption": "userName",
//        "friendSystem": "storeNum",
//        "inAppPurchasing": "dynamicId"
//      },
//      "achievementSystem": "userId",
//      "feedbackLoop": "attentionFlag",
//      "analyticsDashboard": "userBrief",
//      "userOnboarding": "userLocation",
//      "lootBoxMechanics": "userAttention",
//      "rewardRedemption": "historyNum",
//      "inAppPurchasing": "userDynamicVoList"
//    },
//    "reqReplace": {
//      "userReputation": "userId"
//    },
//    "systemPath": "/sj/user/selectUserInfo"
//  },
//  {
//    "customPath": "/egpmfprxz/cqaggirs",
//    "resReplace": {
//      "groupChat": "userGender",
//      "motionPrediction": "userType",
//      "privateMessaging": "userBirthday",
//      "resolutionScaling": "bundleId",
//      "voiceModulation": "userLocation",
//      "socialFeed": "userName",
//      "backgroundNoiseCancellation": "vipExpireTime",
//      "avatarCreation": "userEmail",
//      "profileCustomization": "userImgUrl",
//      "videoCompression": "equipmentNo",
//      "bandwidthAdaptation": "userStatus",
//      "giftSharing": "userId",
//      "frameInterpolation": "token",
//      "friendSystem": "userBrief"
//    },
//    "reqReplace": {},
//    "systemPath": "/sj/user/getUseInfo"
//  },
//  {
//    "customPath": "/jpezgbuxzsioz/sksuv",
//    "reqReplace": {},
//    "systemPath": "/sj/user/selectUserBalance"
//  },
//  {
//    "customPath": "/gliqjqosvikyz/yrdkpbchsbvy",
//    "resReplace": {
//      "imageSegmentation": "userEmail",
//      "edgeDetection": "userStatus",
//      "whiteBalance": "userLocation",
//      "noiseReduction": "equipmentNo",
//      "autoFocus": "userGender",
//      "featureExtraction": "bundleId",
//      "objectTracking": "userName",
//      "predictiveModeling": "userType",
//      "poseEstimation": "userId",
//      "exposureAdjustment": "userBirthday",
//      "sceneUnderstanding": "userImgUrl",
//      "machineLearning": "token",
//      "hdrProcessing": "vipExpireTime",
//      "colorCorrection": "userBrief"
//    },
//    "reqReplace": {
//      "gestureRecognition": "type",
//      "echoCancellation": "password",
//      "latencyCompensation": "userEmail",
//      "spatialAudio": "bundleId"
//    },
//    "systemPath": "/sj/user/emailLogin"
//  },
//  {
//    "customPath": "/zbwzvtatcbefvyz/bhldyfobh",
//    "resReplace": {
//      "reinforcementLearning": "userName",
//      "overfittingPrevention": "liveTime",
//      "dataAugmentation": "userId",
//      "convolutionLayers": "liveUserNum",
//      "gradientDescent": "liveTitle",
//      "batchNormalization": "liveIncome",
//      "activationFunction": "liveStatus",
//      "transferLearning": "liveId",
//      "lossFunction": "liveCoverImg",
//      "attentionMechanism": "liveLocation",
//      "generativeAdversarial": "userImgUrl"
//    },
//    "reqReplace": {
//      "neuralNetworks": "liveStatus",
//      "modelInference": "size",
//      "hyperparameterTuning": "bundleId",
//      "trainingDataset": "current"
//    },
//    "systemPath": "/sj/live/selectLivePage"
//  },
//  {
//    "customPath": "/ctbpiuvkz/wctwpb",
//    "resReplace": {
//      "semanticSegmentation": "userName",
//      "objectRecognition": "userId",
//      "instanceSegmentation": "userImgUrl",
//      "opticalFlow": "userBrief"
//    },
//    "reqReplace": {
//      "styleTransfer": "selectType"
//    },
//    "systemPath": "/sj/user/selectUserRelation"
//  }
//]
