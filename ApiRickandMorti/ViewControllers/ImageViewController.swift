//
//  ImageViewController.swift
//  ApiRickandMorti
//
//  Created by Никита Микрюков on 22.09.2020.
//  Copyright © 2020 Никита Микрюков. All rights reserved.
//

//import UIKit
//
//class ImageViewController: UIViewController {
//
//@IBOutlet var imageView: UIImageView!
//@IBOutlet var activityIndicator: UIActivityIndicatorView!
//
//override func viewDidLoad() {
//    super.viewDidLoad()
//    activityIndicator.startAnimating()
//    activityIndicator.hidesWhenStopped = true
//    fetchImage()
//        }
//
//        private func fetchImage() {
//            guard let imageURL = URL(string: URLExamples.imageURL.rawValue) else { return }
//
//            URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
//                if let error = error {
//                    print(error.localizedDescription)
//                    return
//                }
//
//                if let response = response {
//                    print(response)
//                }
//
//                if let data = data, let image = UIImage(data: data) {
//                    DispatchQueue.main.async {
//                        self.activityIndicator.stopAnimating()
//                        self.imageView.image = image
//                    }
//                }
//            }.resume()
//        }
//    }
//
