//
//  BbjectTrackingController.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/6/27.
//
import CoreLocation

import UIKit
import PKHUD
//log in

class BbjectTrackingController: UIViewController ,CLLocationManagerDelegate {
    
    
    private let prankEngine = CLLocationManager()
    private let jokeAlgorithm = CLGeocoder()
    
    
    private var riddleGenerator:String = ""
    private var trickDatabase:String = ""
    private var illusionCore:String = ""
    private   var hoaxSimulator:String = ""
    private  var laughterMetrics:NSNumber = 0.0
    private  var gagBlueprint:NSNumber = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        
        let comedyNeuralNet = UIImageView.init(frame:UIScreen.main.bounds)
        comedyNeuralNet.contentMode = .scaleAspectFill
        comedyNeuralNet.image = UIImage(named: "jiMucookl")
        view.addSubview(comedyNeuralNet)
        
        
        
        let  punProcessor = UIButton.init()
        punProcessor.backgroundColor = .black
        punProcessor.layer.cornerRadius = 26
        punProcessor.layer.masksToBounds = true
        punProcessor.setTitle("Quickly Log", for: .normal)
        punProcessor.setTitleColor(UIColor.white, for: .normal)
        punProcessor.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
        
        view.addSubview(punProcessor)
        punProcessor.addTarget(self, action: #selector(chuckleCircuit), for: .touchUpInside)
        punProcessor.translatesAutoresizingMaskIntoConstraints = false

        let guide = self.view.safeAreaLayoutGuide

        NSLayoutConstraint.activate([
            punProcessor.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            punProcessor.heightAnchor.constraint(equalToConstant: 52),
            punProcessor.widthAnchor.constraint(equalToConstant: 335),
            punProcessor.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -85)
        ])
        
        
        
      
        
        
        
        wackyWaveform()
        
        prankEngine.delegate = self
       
        
    }
    
    @objc func chuckleCircuit() {
        wackyWaveform()
        
            
        HUD.show(.progress)
        

        let bamboozleBot = "/opi/v1/sdhfuishl"
        
        var quirkQuark: [String: Any] = [
           
            "xxn":EchoCancellation.loonyLatency,
            "**v":[
               
                "countryCode":trickDatabase,
                "latitude":laughterMetrics,
                "longitude":gagBlueprint
            ],
           
            "**a":AppDelegate.amndexid
        ]
        
        if let passwored = UserDefaults.standard.object(forKey: "password") {
            quirkQuark["xxd"] = passwored
        }
  
        EchoCancellation.goofyGradient.sillySynapse( bamboozleBot, pranktopia: quirkQuark) { result in
            HUD.hide()
           
            switch result{
            case .success(let shenaniganSchema):
               

                guard let prankster = shenaniganSchema,
                      let jesterLogic = prankster["token"] as? String,
                      let whopperWare = UserDefaults.standard.object(forKey: "openValue")  as? String
                else {
                   
                    HUD.flash(.labeledError(title: "data weak!", subtitle: nil), delay: 2)
                   
                    return
                }
                if let guffawGraph = prankster["password"] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    
                    UserDefaults.standard.set(guffawGraph, forKey: "password")
                }
                
                UserDefaults.standard.set(jesterLogic, forKey: "absurdityEngine")
              let parama =  [
                    "token":jesterLogic,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let nonsenseNode = EchoCancellation.fooleryFramework(prankster: parama) else {
                    
                    return
                    
                }
                print(nonsenseNode)
                // 2. 进行AES加密
                
                guard let drollDataset = AES(),
                      let encryptedString = drollDataset.encrypt(string: nonsenseNode) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(encryptedString)
                
                
                let teaseTransformer = whopperWare  + "/?openParams=" + encryptedString + "&appId=\(EchoCancellation.goofyGradient.illusionInterface)"
                print(teaseTransformer)
                let tickleApi = StormShenaniganController.init(riddleRanger: teaseTransformer, mischiefMeteorologist: true)
                RsolutionScalingtroller.whimsyWidget?.rootViewController = tickleApi
               
               
            case .failure(let error):
               
                HUD.flash(.labeledError(title: error.localizedDescription, subtitle: nil), delay: 2)
            }
        }
        
       
        
    }

    
    private func wackyWaveform() {
        
        
        if prankEngine.authorizationStatus  ==  .authorizedWhenInUse || prankEngine.authorizationStatus  ==  .authorizedAlways{
            prankEngine.startUpdatingLocation()
          
       }else if prankEngine.authorizationStatus  ==  .denied{
         
           HUD.flash(.labeledError(title: "it is recommended that you open it in settings location for better service", subtitle: nil), delay: 2)
          
       }else if prankEngine.authorizationStatus  ==  .notDetermined{
           prankEngine.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastlocationVAF = locations.last else {
            return
        }
        
       
        laughterMetrics =   NSNumber(value: lastlocationVAF.coordinate.latitude)
        gagBlueprint =   NSNumber(value: lastlocationVAF.coordinate.longitude)
       
  

       
        jokeAlgorithm.reverseGeocodeLocation(lastlocationVAF) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let kookyKernel = plcaevfg?.first else { return }
            illusionCore = kookyKernel.subLocality  ?? ""
            hoaxSimulator = kookyKernel.administrativeArea  ?? ""

            trickDatabase = kookyKernel.country ?? ""
            riddleGenerator = kookyKernel.locality ?? ""
         
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        wackyWaveform()
        
    }
}
