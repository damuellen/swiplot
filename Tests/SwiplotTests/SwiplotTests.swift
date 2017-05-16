import XCTest
@testable import Swiplot

class SwiplotTests: XCTestCase {
    #if !SWIFT_PACKAGE
    func testExample() {
        let plot = Plot()
        
        plot.setting.xrange = (-1, 10)
        plot.setting.title = "Swiplot test"
        plot.setting.xlabel = "hoge"
        plot.setting.pointsize = 2
        
        let scatter1 = Graph(x.map { (x: $0[0], y: $0[1]) })
        scatter1.lineStyle = .points
        scatter1.title = "scatter1"
        scatter1.color = .black
        scatter1.pointSize = 2
        plot.addGraph(scatter1)
        
        let scatter2 = Graph(x.map { (x: $0[2], y: $0[3]) })
        scatter2.lineStyle = .dots
        scatter2.color = .cyan
        scatter2.lineWidth = 3
        plot.addGraph(scatter2)
        
        let x2 = (0..<50).map { Double($0)/5 }
        let coss = x2.map(cos)
        let line = Graph(x: x2, y: coss)
        line.lineStyle = .linesPoints
        line.color = Color(red: 255, green: 0, blue: 0)
        plot.addGraph(line)
        
        let sins = x2.map { sin($0) }
        let line2 = Graph(x: x2, y: sins)
        line2.title = "sin"
        line2.lineWidth = 3
        plot.addGraph(line2)
        
        plot.plot()
    }
    
    let x = [
        [6.0, 3.3999999999999999, 4.5, 1.6000000000000001],
        [4.7999999999999998, 3.1000000000000001, 1.6000000000000001, 0.20000000000000001],
        [5.7999999999999998, 2.7000000000000002, 5.0999999999999996, 1.8999999999999999],
        [5.5999999999999996, 2.7000000000000002, 4.2000000000000002, 1.3],
        [5.5999999999999996, 2.8999999999999999, 3.6000000000000001, 1.3],
        [5.5, 2.5, 4.0, 1.3],
        [6.0999999999999996, 3.0, 4.5999999999999996, 1.3999999999999999],
        [7.2000000000000002, 3.2000000000000002, 6.0, 1.8],
        [5.2999999999999998, 3.7000000000000002, 1.5, 0.20000000000000001],
        [4.2999999999999998, 3.0, 1.1000000000000001, 0.10000000000000001],
        [6.4000000000000004, 2.7000000000000002, 5.2999999999999998, 1.8999999999999999],
        [5.7000000000000002, 3.0, 4.2000000000000002, 1.2],
        [5.4000000000000004, 3.3999999999999999, 1.7, 0.20000000000000001],
        [5.7000000000000002, 4.4000000000000004, 1.5, 0.40000000000000002],
        [6.9000000000000004, 3.1000000000000001, 4.9000000000000004, 1.5],
        [4.5999999999999996, 3.1000000000000001, 1.5, 0.20000000000000001],
        [5.9000000000000004, 3.0, 5.0999999999999996, 1.8],
        [5.0999999999999996, 2.5, 3.0, 1.1000000000000001],
        [4.5999999999999996, 3.3999999999999999, 1.3999999999999999, 0.29999999999999999],
        [6.2000000000000002, 2.2000000000000002, 4.5, 1.5],
        [7.2000000000000002, 3.6000000000000001, 6.0999999999999996, 2.5],
        [5.7000000000000002, 2.8999999999999999, 4.2000000000000002, 1.3],
        [4.7999999999999998, 3.0, 1.3999999999999999, 0.10000000000000001],
        [7.0999999999999996, 3.0, 5.9000000000000004, 2.1000000000000001],
        [6.9000000000000004, 3.2000000000000002, 5.7000000000000002, 2.2999999999999998],
        [6.5, 3.0, 5.7999999999999998, 2.2000000000000002],
        [6.4000000000000004, 2.7999999999999998, 5.5999999999999996, 2.1000000000000001],
        [5.0999999999999996, 3.7999999999999998, 1.6000000000000001, 0.20000000000000001],
        [4.7999999999999998, 3.3999999999999999, 1.6000000000000001, 0.20000000000000001],
        [6.5, 3.2000000000000002, 5.0999999999999996, 2.0],
        [6.7000000000000002, 3.2999999999999998, 5.7000000000000002, 2.1000000000000001],
        [4.5, 2.2999999999999998, 1.3, 0.29999999999999999],
        [6.2000000000000002, 3.3999999999999999, 5.4000000000000004, 2.2999999999999998],
        [4.9000000000000004, 3.0, 1.3999999999999999, 0.20000000000000001],
        [5.7000000000000002, 2.5, 5.0, 2.0],
        [6.9000000000000004, 3.1000000000000001, 5.4000000000000004, 2.1000000000000001],
        [4.4000000000000004, 3.2000000000000002, 1.3, 0.20000000000000001],
        [5.0, 3.6000000000000001, 1.3999999999999999, 0.20000000000000001],
        [7.2000000000000002, 3.0, 5.7999999999999998, 1.6000000000000001],
        [5.0999999999999996, 3.5, 1.3999999999999999, 0.29999999999999999],
        [4.4000000000000004, 3.0, 1.3, 0.20000000000000001],
        [5.4000000000000004, 3.8999999999999999, 1.7, 0.40000000000000002],
        [5.5, 2.2999999999999998, 4.0, 1.3],
        [6.7999999999999998, 3.2000000000000002, 5.9000000000000004, 2.2999999999999998],
        [7.5999999999999996, 3.0, 6.5999999999999996, 2.1000000000000001],
        [5.0999999999999996, 3.5, 1.3999999999999999, 0.20000000000000001],
        [4.9000000000000004, 3.1000000000000001, 1.5, 0.10000000000000001],
        [5.2000000000000002, 3.3999999999999999, 1.3999999999999999, 0.20000000000000001],
        [5.7000000000000002, 2.7999999999999998, 4.5, 1.3],
        [6.5999999999999996, 3.0, 4.4000000000000004, 1.3999999999999999],
        [5.0, 3.2000000000000002, 1.2, 0.20000000000000001],
        [5.0999999999999996, 3.2999999999999998, 1.7, 0.5],
        [6.4000000000000004, 2.8999999999999999, 4.2999999999999998, 1.3],
        [5.4000000000000004, 3.3999999999999999, 1.5, 0.40000000000000002],
        [7.7000000000000002, 2.6000000000000001, 6.9000000000000004, 2.2999999999999998],
        [4.9000000000000004, 2.3999999999999999, 3.2999999999999998, 1.0],
        [7.9000000000000004, 3.7999999999999998, 6.4000000000000004, 2.0],
        [6.7000000000000002, 3.1000000000000001, 4.4000000000000004, 1.3999999999999999],
        [5.2000000000000002, 4.0999999999999996, 1.5, 0.10000000000000001],
        [6.0, 3.0, 4.7999999999999998, 1.8],
        [5.7999999999999998, 4.0, 1.2, 0.20000000000000001],
        [7.7000000000000002, 2.7999999999999998, 6.7000000000000002, 2.0],
        [5.0999999999999996, 3.7999999999999998, 1.5, 0.29999999999999999],
        [4.7000000000000002, 3.2000000000000002, 1.6000000000000001, 0.20000000000000001],
        [7.4000000000000004, 2.7999999999999998, 6.0999999999999996, 1.8999999999999999],
        [5.0, 3.2999999999999998, 1.3999999999999999, 0.20000000000000001],
        [6.2999999999999998, 3.3999999999999999, 5.5999999999999996, 2.3999999999999999],
        [5.7000000000000002, 2.7999999999999998, 4.0999999999999996, 1.3],
        [5.7999999999999998, 2.7000000000000002, 3.8999999999999999, 1.2],
        [5.7000000000000002, 2.6000000000000001, 3.5, 1.0],
        [6.4000000000000004, 3.2000000000000002, 5.2999999999999998, 2.2999999999999998],
        [6.7000000000000002, 3.0, 5.2000000000000002, 2.2999999999999998],
        [6.2999999999999998, 2.5, 4.9000000000000004, 1.5],
        [6.7000000000000002, 3.0, 5.0, 1.7],
        [5.0, 3.0, 1.6000000000000001, 0.20000000000000001],
        [5.5, 2.3999999999999999, 3.7000000000000002, 1.0],
        [6.7000000000000002, 3.1000000000000001, 5.5999999999999996, 2.3999999999999999],
        [5.7999999999999998, 2.7000000000000002, 5.0999999999999996, 1.8999999999999999],
        [5.0999999999999996, 3.3999999999999999, 1.5, 0.20000000000000001],
        [6.5999999999999996, 2.8999999999999999, 4.5999999999999996, 1.3],
        [5.5999999999999996, 3.0, 4.0999999999999996, 1.3],
        [5.9000000000000004, 3.2000000000000002, 4.7999999999999998, 1.8],
        [6.2999999999999998, 2.2999999999999998, 4.4000000000000004, 1.3],
        [5.5, 3.5, 1.3, 0.20000000000000001],
        [5.0999999999999996, 3.7000000000000002, 1.5, 0.40000000000000002],
        [4.9000000000000004, 3.1000000000000001, 1.5, 0.10000000000000001],
        [6.2999999999999998, 2.8999999999999999, 5.5999999999999996, 1.8],
        [5.7999999999999998, 2.7000000000000002, 4.0999999999999996, 1.0],
        [7.7000000000000002, 3.7999999999999998, 6.7000000000000002, 2.2000000000000002],
        [4.5999999999999996, 3.2000000000000002, 1.3999999999999999, 0.20000000000000001]
    ]
    #endif
}
