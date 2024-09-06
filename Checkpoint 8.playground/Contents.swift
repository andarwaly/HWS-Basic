import Cocoa


protocol Building {
    var roomCount: Int { get set }
    var cost: Int { get }
    var agentName: String { get }
    func salesSummary()
    func buildingType() -> String
}
extension Building {
    func salesSummary(){
        let totalSales = roomCount*cost
        print("Total sales for your \(buildingType()) are $\(totalSales)")
    }
    func buildingType() -> String{
        return "Building" // default return type
    }
}

func getSalesSummary(for buildings: [Building]){
    for building in buildings {
        let totalSales = building.roomCount*building.cost
        print("\(building.buildingType()): Your sales are $\(totalSales)")
    }
}

struct House: Building{
    var roomCount: Int
    var cost: Int
    var agentName: String
    func buildingType() -> String {
        "House"
    }
}

struct Office: Building{
    var roomCount: Int
    var cost: Int
    var agentName: String
    func buildingType() -> String {
        "Office"
    }
}



var base = House(roomCount: 20, cost: 500000, agentName: "Utopia")
base.salesSummary()

getSalesSummary(for: [base])
