//Copyright (c) 2018 Giuseppe Travasoni <giuseppe.travasoni@gmail.com>
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in
//all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//THE SOFTWARE.

import QuartzCore
import UIKit.UIBezierPath

extension CALayer {
    struct Checkpoints {
        let width: CGFloat
        let height: CGFloat

        let startRatio: CGFloat = 256 / 87.15

        let checkpoint0Ratio: CGFloat = 256 / 219.33
        let checkpoint1Ratio: CGFloat = 256 / 198.35
        let checkpoint2Ratio: CGFloat = 256 / 206.63
        let checkpoint3Ratio: CGFloat = 256 / 251.73
        let checkpoint4Ratio: CGFloat = 256 / 234.35
        let checkpoint5Ratio: CGFloat = 256 / 246.24

        var squircleSide: CGFloat { return min(width, height) }

        var cornerDelta: CGFloat { return squircleSide / startRatio }
        var checkpoint0: CGFloat { return squircleSide / checkpoint0Ratio }
        var checkpoint1: CGFloat { return squircleSide / checkpoint1Ratio }
        var checkpoint2: CGFloat { return squircleSide / checkpoint2Ratio }
        var checkpoint3: CGFloat { return squircleSide / checkpoint3Ratio }
        var checkpoint4: CGFloat { return squircleSide / checkpoint4Ratio }
        var checkpoint5: CGFloat { return squircleSide / checkpoint5Ratio }
    }

    static func squirclePath(for bounds: CGRect) -> UIBezierPath {
        let width = bounds.width
        let height = bounds.height
        let squircleSide = min(width, height)
        CGPoint.xDelta = abs(squircleSide - width)
        CGPoint.yDelta = abs(squircleSide - height)

        let checkpoints = Checkpoints(width: bounds.width, height: bounds.height)

        let path = UIBezierPath()
        path.move(to: CGPoint(x: checkpoints.cornerDelta, y: 0))

        path.addLine(to: CGPoint(x: width - checkpoints.cornerDelta, y: 0))
        path.addCurve(
            to: CGPoint.xDeltaPoint(x: checkpoints.checkpoint0, y: squircleSide - checkpoints.checkpoint3),
            controlPoint1: CGPoint.xDeltaPoint(x: checkpoints.checkpoint1, y: 0),
            controlPoint2: CGPoint.xDeltaPoint(x: checkpoints.checkpoint2, y: 0)
        )
        path.addCurve(
            to: CGPoint.xDeltaPoint(x: checkpoints.checkpoint3, y: squircleSide - checkpoints.checkpoint0),
            controlPoint1: CGPoint.xDeltaPoint(
                x: checkpoints.checkpoint4,
                y: squircleSide - checkpoints.checkpoint5
            ),
            controlPoint2: CGPoint.xDeltaPoint(
                x: checkpoints.checkpoint5,
                y: squircleSide - checkpoints.checkpoint4
            )
        )
        path.addCurve(
            to: CGPoint.xDeltaPoint(x: squircleSide, y: checkpoints.cornerDelta),
            controlPoint1: CGPoint.xDeltaPoint(x: squircleSide, y: squircleSide - checkpoints.checkpoint2),
            controlPoint2: CGPoint.xDeltaPoint(x: squircleSide, y: squircleSide - checkpoints.checkpoint1)
        )

        path.addLine(to: CGPoint(x: width, y: height - checkpoints.cornerDelta))
        path.addCurve(
            to: CGPoint.deltaPoint(x: checkpoints.checkpoint3, y: checkpoints.checkpoint0),
            controlPoint1: CGPoint.deltaPoint(x: squircleSide, y: checkpoints.checkpoint1),
            controlPoint2: CGPoint.deltaPoint(x: squircleSide, y: checkpoints.checkpoint2)
        )
        path.addCurve(
            to: CGPoint.deltaPoint(x: checkpoints.checkpoint0, y: checkpoints.checkpoint3),
            controlPoint1: CGPoint.deltaPoint(x: checkpoints.checkpoint5, y: checkpoints.checkpoint4),
            controlPoint2: CGPoint.deltaPoint(x: checkpoints.checkpoint4, y: checkpoints.checkpoint5)
        )
        path.addCurve(
            to: CGPoint.deltaPoint(x: squircleSide - checkpoints.cornerDelta, y: squircleSide),
            controlPoint1: CGPoint.deltaPoint(x: checkpoints.checkpoint2, y: squircleSide),
            controlPoint2: CGPoint.deltaPoint(x: checkpoints.checkpoint1, y: squircleSide)
        )

        path.addLine(to: CGPoint(x: checkpoints.cornerDelta, y: height))
        path.addCurve(
            to: CGPoint.yDeltaPoint(x: squircleSide - checkpoints.checkpoint0, y: checkpoints.checkpoint3),
            controlPoint1: CGPoint.yDeltaPoint(x: squircleSide - checkpoints.checkpoint1, y: squircleSide),
            controlPoint2: CGPoint.yDeltaPoint(x: squircleSide - checkpoints.checkpoint2, y: squircleSide)
        )
        path.addCurve(
            to: CGPoint.yDeltaPoint(x: squircleSide - checkpoints.checkpoint3, y: checkpoints.checkpoint0),
            controlPoint1: CGPoint.yDeltaPoint(
                x: squircleSide - checkpoints.checkpoint4,
                y: checkpoints.checkpoint5
            ),
            controlPoint2: CGPoint.yDeltaPoint(
                x: squircleSide - checkpoints.checkpoint5,
                y: checkpoints.checkpoint4
            )
        )
        path.addCurve(
            to: CGPoint.yDeltaPoint(x: 0, y: squircleSide - checkpoints.cornerDelta),
            controlPoint1: CGPoint.yDeltaPoint(x: 0, y: checkpoints.checkpoint2),
            controlPoint2: CGPoint.yDeltaPoint(x: 0, y: checkpoints.checkpoint1)
        )

        path.addLine(to: CGPoint(x: 0, y: checkpoints.cornerDelta))
        path.addCurve(
            to: CGPoint(x: squircleSide - checkpoints.checkpoint3, y: squircleSide - checkpoints.checkpoint0),
            controlPoint1: CGPoint(x: 0, y: squircleSide - checkpoints.checkpoint1),
            controlPoint2: CGPoint(x: 0, y: squircleSide - checkpoints.checkpoint2)
        )
        path.addCurve(
            to: CGPoint(x: squircleSide - checkpoints.checkpoint0, y: squircleSide - checkpoints.checkpoint3),
            controlPoint1: CGPoint(
                x: squircleSide - checkpoints.checkpoint5,
                y: squircleSide - checkpoints.checkpoint4
            ),
            controlPoint2: CGPoint(
                x: squircleSide - checkpoints.checkpoint4,
                y: squircleSide - checkpoints.checkpoint5
            )
        )
        path.addCurve(
            to: CGPoint(x: checkpoints.cornerDelta, y: 0),
            controlPoint1: CGPoint(x: squircleSide - checkpoints.checkpoint2, y: 0),
            controlPoint2: CGPoint(x: squircleSide - checkpoints.checkpoint1, y: 0)
        )

        path.close()

        return path
    }
}
