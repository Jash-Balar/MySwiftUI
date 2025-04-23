//
//  CarromStikerEffectView.swift
//  ImageToPDF
//
//  Created by Jash Balar on 12/04/25.
//

import SwiftUI

struct CarromStrikerEffectView: View {
    var body: some View {
        PhysicsStrikerView()
            .edgesIgnoringSafeArea(.all)
    }
}

struct PhysicsStrikerView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let container = UIView()
        container.backgroundColor = .white

        let striker = UIView(frame: CGRect(x: 150, y: 600, width: 80, height: 80))
        striker.layer.cornerRadius = 40
        striker.backgroundColor = .red
        container.addSubview(striker)

        let animator = UIDynamicAnimator(referenceView: container)

        let collision = UICollisionBehavior(items: [striker])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)

        let elasticity = UIDynamicItemBehavior(items: [striker])
        elasticity.elasticity = 0.7
        animator.addBehavior(elasticity)

        // Pan Gesture for Swipe to Shoot
        let panGesture = UIPanGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.handlePan(_:)))
        striker.addGestureRecognizer(panGesture)
        striker.isUserInteractionEnabled = true

        context.coordinator.setup(striker: striker, animator: animator)

        return container
    }

    func updateUIView(_ uiView: UIView, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    class Coordinator: NSObject {
        var striker: UIView?
        var animator: UIDynamicAnimator?
        var snap: UISnapBehavior?

        func setup(striker: UIView, animator: UIDynamicAnimator) {
            self.striker = striker
            self.animator = animator
        }

        @objc func handlePan(_ gesture: UIPanGestureRecognizer) {
            guard let striker = striker, let animator = animator else { return }

            switch gesture.state {
            case .began:
                animator.removeAllBehaviors()

            case .changed:
                let translation = gesture.translation(in: striker.superview)
                striker.center = CGPoint(x: striker.center.x + translation.x,
                                         y: striker.center.y + translation.y)
                gesture.setTranslation(.zero, in: striker.superview)

            case .ended:
                animator.removeAllBehaviors()
                
                // Ensure striker is inside screen bounds before applying physics
                if let superview = striker.superview {
                    let safeFrame = superview.bounds.insetBy(dx: striker.bounds.width / 2, dy: striker.bounds.height / 2)
                    if !safeFrame.contains(striker.center) {
                        striker.center = CGPoint(x: min(max(striker.center.x, safeFrame.minX), safeFrame.maxX),
                                                 y: min(max(striker.center.y, safeFrame.minY), safeFrame.maxY))
                    }
                }
                
                let velocity = gesture.velocity(in: striker.superview)
                let velocityMagnitude = sqrt(velocity.x * velocity.x + velocity.y * velocity.y) / 1000
                
                let push = UIPushBehavior(items: [striker], mode: .instantaneous)
                push.pushDirection = CGVector(dx: velocity.x / 1000, dy: velocity.y / 1000)
                push.magnitude = velocityMagnitude
                animator.addBehavior(push)
                
                let collision = UICollisionBehavior(items: [striker])
                collision.translatesReferenceBoundsIntoBoundary = true
                animator.addBehavior(collision)
                
                let elasticity = UIDynamicItemBehavior(items: [striker])
                elasticity.elasticity = 0.7
                elasticity.resistance = 0.8
                animator.addBehavior(elasticity)


            default:
                break
            }
        }
    }
}

#Preview {
    CarromStrikerEffectView()
}
