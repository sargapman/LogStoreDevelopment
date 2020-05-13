//
//  SceneDelegate.swift
//  LogStoreDevelopment
//
//  Created by Monty Boyer on 5/4/20.
//  Copyright © 2020 Monty Boyer. All rights reserved.
//

import UIKit
import LogStore

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let _ = (scene as? UIWindowScene) else { return }
                
        // Create a trigger window and assign its rootViewCtrl to the the rVC of the existing window.
        let triggerWindow = TriggerWindow(frame: UIScreen.main.bounds)
        triggerWindow.rootViewController = window?.rootViewController
        
        // must set the window scene for the window
        triggerWindow.windowScene = scene as? UIWindowScene
        
        // make this window the key window to receive all non-touch related events
        triggerWindow.makeKeyAndVisible()
        
        // set the new trigger window to the scene's window prop
        window = triggerWindow
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

