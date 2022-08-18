//
//  ViewController.swift
//  FoodApp
//
//  Created by Marvellous Dirisu on 21/07/2022.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextBtn: UIButton!
    
    var slides : [OnboardingSlide] = []
    
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1 {
                nextBtn.setTitle("Get Started", for: .normal)
            } else {
                nextBtn.setTitle("Next", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        slides = [OnboardingSlide(title: "Delicious dishes", description: "Home delivery and Online Reservation system for restaurants and cafes", image: UIImage(imageLiteralResourceName: "food1")),
                  OnboardingSlide(title: "Amazing Taste", description: "Home delivery and Online Reservation system for restaurants and cafes", image: UIImage(imageLiteralResourceName: "food2")),
                  OnboardingSlide(title: "Excellent Delivery", description: "Home delivery and Online Reservation system for restaurants and cafes", image: UIImage(imageLiteralResourceName: "food3")),
        ]
        
        pageControl.numberOfPages = slides.count
        
    }
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        
        if currentPage == slides.count - 1 {
            let VC = storyboard?.instantiateViewController(withIdentifier: "home") as! UINavigationController
            VC.modalPresentationStyle = .fullScreen
            VC.modalTransitionStyle = .flipHorizontal
            present(VC, animated: true, completion: nil)
            
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
    
}

extension OnboardingViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCollectionViewCell", for: indexPath) as! OnboardingCollectionViewCell
        
        cell.setUp(slides[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
        
    }
    
}

