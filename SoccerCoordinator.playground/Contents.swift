// melisadlg - SoccerCoordinator

let player1: [String : Any] = ["Name":"Joe Smith",
                               "Height":42,
                               "Experience":true,
                               "Guardians":"Jim and Jan Smith"]

let player2: [String : Any] = ["Name":"Jill Tanner",
                               "Height":36,
                               "Experience":true,
                               "Guardians":"Clara Tanner"]

let player3: [String : Any] = ["Name":"Bill Bon",
                               "Height":43,
                               "Experience":true,
                               "Guardians":"Sara and Jenny Bon"]

let player4: [String : Any] = ["Name":"Eva Gordon",
                               "Height":45,
                               "Experience":false,
                               "Guardians":"Wendy and Mike Gordon"]

let player5: [String : Any] = ["Name":"Matt Gill",
                               "Height":40,
                               "Experience":false,
                               "Guardians":"Charles and Sylvia Gill"]

let player6: [String : Any] = ["Name":"Kimmy Stein",
                               "Height":41,
                               "Experience":false,
                               "Guardians":"Bill and Hillary Stein"]

let player7: [String : Any] = ["Name":"Sammy Adams",
                               "Height":45,
                               "Experience":false,
                               "Guardians":"Jeff Adams"]

let player8: [String : Any] = ["Name":"Karl Saygan",
                               "Height":42,
                               "Experience":true,
                               "Guardians":"Heather Bledsoe"]

let player9: [String : Any] = ["Name":"Suzane Greenberg",
                               "Height":44,
                               "Experience":true,
                               "Guardians":"Henrietta Dumas"]

let player10: [String : Any] = ["Name":"Sal Dali",
                               "Height":41,
                               "Experience":false,
                               "Guardians":"Gala Dali"]

let player11: [String : Any] = ["Name":"Joe Kavalier",
                                "Height":39,
                                "Experience":false,
                                "Guardians":"Sam and Elaine Kavalier"]

let player12: [String : Any] = ["Name":"Ben Finkelstein",
                                "Height":44,
                                "Experience":false,
                                "Guardians":"Aaron and Jill Finkelstein"]

let player13: [String : Any] = ["Name":"Diego Soto",
                                "Height":41,
                                "Experience":true,
                                "Guardians":"Robin and Sarika Soto"]

let player14: [String : Any] = ["Name":"Chloe Alaska",
                                "Height":47,
                                "Experience":false,
                                "Guardians":"David and Jamie Alaska"]

let player15: [String : Any] = ["Name":"Arnold Willis",
                                "Height":43,
                                "Experience":false,
                                "Guardians":"Claire Willis"]

let player16: [String : Any] = ["Name":"Phillip Helm",
                                "Height":44,
                                "Experience":true,
                                "Guardians":"Thomas Helm and Eva Jones"]

let player17: [String : Any] = ["Name":"Les Clay",
                                "Height":42,
                                "Experience":true,
                                "Guardians":"Wynonna Brown"]

let player18: [String : Any] = ["Name":"Herschel Krustofski",
                                "Height":45,
                                "Experience":true,
                                "Guardians":"Hyman and Rachel Krustofski"]

var leaguePlayers = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]


var totalLeaguePlayers = leaguePlayers.count

var sharksTeam = [[String : Any]]()
var dragonsTeam = [[String : Any]]()
var raptorsTeam = [[String : Any]]()

var sharksExp = 0
var dragonsExp = 0
var raptorsExp = 0

for i in 0...totalLeaguePlayers-1{
    
    if ((leaguePlayers[i]["Experience"] as? Bool) == true) {
        //if ((leaguePlayers[i]["Height"] as? Int) <= 40){}
        if sharksTeam.count == dragonsTeam.count && dragonsTeam.count == raptorsTeam.count{
            sharksExp = sharksExp + 1
            sharksTeam.append(leaguePlayers[i])
        }
        else if sharksTeam.count != dragonsTeam.count && dragonsTeam.count == raptorsTeam.count{
            dragonsExp = dragonsExp + 1
            dragonsTeam.append(leaguePlayers[i])
        }
        else {
            raptorsExp = raptorsExp + 1
            raptorsTeam.append(leaguePlayers[i])
        }
    }
    else {
        if sharksTeam.count == dragonsTeam.count && dragonsTeam.count == raptorsTeam.count{
            sharksTeam.append(leaguePlayers[i])
        }
        else if sharksTeam.count != dragonsTeam.count && dragonsTeam.count == raptorsTeam.count{
            dragonsTeam.append(leaguePlayers[i])
        }
        else {
            raptorsTeam.append(leaguePlayers[i])
        }
    }
}

//print("\n\nSharks\nTotal players: \(sharksTeam.count)\nTotal Experienced: \(sharksExp)\n\(sharksTeam)")
//print("\n\nDragons\nTotal players: \(dragonsTeam.count)\nTotal Experienced: \(dragonsExp)\n\(dragonsTeam)")
//print("\n\nRaptors\nTotal players: \(raptorsTeam.count)\nTotal Experienced: \(raptorsExp)\n\(raptorsTeam)")

for player in sharksTeam {
    print("\nDear \(player["Guardians"]!):\n   \(player["Name"]!) has been assigned to the Sharks Team! Their first practice will be next Saturday May 8th at 9:00 a.m. at the school soccer field.")
}

for player in dragonsTeam {
    print("\nDear \(player["Guardians"]!):\n   \(player["Name"]!) has been assigned to the Dragons Team! Their first practice will be next Saturday May 8th at 9:00 a.m. at the school soccer field.")
}

for player in raptorsTeam {
    print("\nDear \(player["Guardians"]!):\n   \(player["Name"]!) has been assigned to the Raptors Team! Their first practice will be next Saturday May 8th at 9:00 a.m. at the school soccer field.")
}

