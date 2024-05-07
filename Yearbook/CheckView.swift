import Foundation
import SwiftUI


struct CheckView: View {
    
    @ObservedObject var viewModel = CheckViewModel()
    @State var idNumbers = [
        624022, 624023, 624024, 624025, 624026, 624028, 624029, 624032, 624034, 624035, 624036, 624037, 624038, 624039, 624040, 624041, 624042, 624044, 624045, 624047, 624048, 624049, 624050, 624051, 624052, 624053, 624054, 624055, 624057, 624058, 624059, 624060, 624061, 624062, 624063, 624064, 624065, 624066, 624067, 624068, 624069, 624073, 624075, 624076, 624077, 624078, 624079, 624080, 624081, 624082, 624084, 624085, 624088, 624089, 624090, 624091, 624092, 624094, 624095, 624096, 624097, 624098, 624099, 624100, 624102, 624103, 624105, 624106, 624107, 624108, 624109, 624110, 624111, 624112, 624113, 624114, 624115, 624116, 624118, 624119, 624120, 624121, 624122, 624125, 624126, 624127, 624129, 624130, 624131, 624134, 624135, 624136, 624137, 624139, 624140, 624141, 624142, 624143, 624145, 624147, 624148, 624149, 624151, 624152, 624154, 624155, 624156, 624157, 624158, 624159, 624160, 624161, 624162, 624163, 624164, 624165, 624166, 624168, 624169, 624173, 624174, 624176, 624179, 624180, 624181, 624184, 624185, 624186, 624187, 624188, 624190, 624193, 624194, 624195, 624196, 624197, 624198, 624199, 624200, 624201, 624202, 624203, 624204, 624205, 624206, 624207, 624208, 624209, 624210, 624211, 624212, 624213, 624214, 624215, 624216, 624217, 624218, 624220, 624222, 624224, 624225, 624226, 624228, 624229, 624230, 624231, 624233, 624234, 624235, 624236, 624238, 624239, 624240, 624241, 624242, 624243, 624245, 624248, 624249, 624250, 624251, 624252, 624253, 624254, 624255, 624256, 624257, 624258, 624259, 624260, 624261, 624262, 624263, 624264, 624266, 624267, 624269, 624270, 624271, 624272, 624273, 624274, 624278, 624283, 624284, 624285, 624286, 624287, 624288, 624289, 624290, 624291, 624292, 624294, 624295, 624296, 624300, 624301, 624302, 624303, 624304, 624306, 624307, 624308, 624310, 624311, 624312, 624313, 624314, 624315, 624316, 624317, 624318, 624319, 624320, 624324, 624325, 624326, 624329, 624330, 624332, 624334, 624335, 624336, 624337, 624339, 624340, 624341, 624342, 624343, 624345, 624347, 624348, 624351, 624352, 624353, 624354, 624355, 624356, 624357, 624358, 624359, 624363, 624364, 624365, 624366, 624367, 624368, 624370, 624372, 624373, 624375, 624377, 624378, 624379, 624380, 624381, 624382, 624383, 624384, 624385, 624386, 624389, 624390, 624391, 624392, 624394, 624396, 624398, 624399, 624400, 624402, 624404, 624405, 624406, 624407, 624409, 624410, 624411, 624412, 624414, 624415, 624416, 624417, 624418, 624419, 624420, 624421, 624422, 624423, 624425, 624426, 624427, 624428, 624429, 624430, 624431, 624432, 624433, 624434, 624436, 624437, 624438, 624439, 624441, 624443, 624444, 624445, 624446, 624448, 624449, 624452, 624453, 624454, 624455, 624457, 624458, 624460, 624462, 624463, 624464, 624465, 624467, 624468, 624469, 624470, 624471, 624472, 624473, 624474, 624475, 624476, 624477, 624479, 624480, 624481, 624482, 624483, 624484, 624485, 624486, 624488, 624489, 624490, 624491, 624493, 624494, 624495, 624496, 624497, 624498, 624502, 624503, 624505, 624508, 624511, 624513, 624514, 624515, 624516, 624518, 624519, 624524, 624530, 624533, 624534, 624535, 624539, 624540, 624541, 624542, 624553, 624554, 624555, 624556, 624558, 624568, 625001, 625003, 625004, 625005, 625006, 625007, 625008, 625011, 625013, 625015, 625017, 625019, 625020, 625021, 625022, 625028, 625031, 625032, 625033, 625035, 625036, 625037, 625038, 625039, 625040, 625041, 625042, 625044, 625046, 625048, 625050, 625051, 625052, 625053, 625054, 625055, 625056, 625059, 625061, 625063, 625065, 625069, 625070, 625071, 625073, 625074, 625075, 625076, 625079, 625080, 625081, 625082, 625083, 625084, 625085, 625086, 625087, 625092, 625095, 625096, 625097, 625098, 625099, 625101, 625103, 625105, 625106, 625108, 625109, 625110, 625111, 625114, 625116, 625117, 625118, 625120, 625121, 625122, 625124, 625125, 625126, 625127, 625128, 625130, 625133, 625134, 625135, 625137, 625138, 625139, 625140, 625141, 625144, 625145, 625146, 625147, 625148, 625150, 625151, 625152, 625154, 625157, 625159, 625160, 625161, 625162, 625165, 625169, 625170, 625172, 625173, 625174, 625175, 625176, 625177, 625178, 625182, 625183, 625184, 625185, 625187, 625188, 625190, 625191, 625192, 625194, 625195, 625196, 625198, 625202, 625204, 625205, 625207, 625208, 625209, 625210, 625211, 625212, 625213, 625214, 625215, 625216, 625218, 625220, 625221, 625222, 625225, 625226, 625227, 625228, 625229, 625230, 625231, 625232, 625234, 625235, 625237, 625238, 625239, 625240, 625241, 625242, 625244, 625245, 625247, 625248, 625249, 625251, 625253, 625254, 625255, 625256, 625257, 625258, 625262, 625263, 625264, 625265, 625267, 625269, 625270, 625271, 625273, 625275, 625278, 625281, 625283, 625285, 625286, 625287, 625288, 625289, 625290, 625292, 625294, 625295, 625296, 625297, 625298, 625299, 625300, 625305, 625306, 625308, 625309, 625310, 625311, 625312, 625314, 625315, 625316, 625317, 625318, 625319, 625320, 625325, 625326, 625327, 625328, 625329, 625331, 625332, 625334, 625337, 625339, 625342, 625343, 625344, 625345, 625349, 625350, 625351, 625352, 625353, 625354, 625355, 625356, 625357, 625360, 625361, 625364, 625366, 625367, 625368, 625370, 625371, 625372, 625373, 625375, 625376, 625379, 625380, 625383, 625384, 625387, 625390, 625391, 625393, 625394, 625396, 625397, 625398, 625399, 625400, 625401, 625403, 625404, 625405, 625406, 625408, 625409, 625411, 625412, 625413, 625414, 625416, 625421, 625424, 625429, 625431, 625434, 625439, 625440, 625441, 625442, 625443, 625447, 625451, 625461, 625463, 625464, 625467, 625478, 625479, 625480, 625483, 625487, 625491, 625495, 625496, 625497, 625504, 625505, 625506, 626002, 626005, 626009, 626010, 626013, 626014, 626015, 626016, 626017, 626018, 626020, 626025, 626026, 626029, 626032, 626033, 626034, 626037, 626038, 626040, 626041, 626042, 626048, 626049, 626050, 626051, 626052, 626053, 626058, 626059, 626060, 626061, 626063, 626064, 626067, 626068, 626069, 626070, 626072, 626073, 626074, 626075, 626078, 626079, 626081, 626082, 626084, 626085, 626087, 626088, 626089, 626090, 626091, 626092, 626093, 626094, 626095, 626098, 626099, 626100, 626101, 626102, 626104, 626105, 626107, 626108, 626109, 626110, 626112, 626113, 626114, 626117, 626120, 626121, 626122, 626123, 626125, 626126, 626128, 626130, 626133, 626134, 626135, 626136, 626137, 626139, 626140, 626141, 626142, 626143, 626144, 626145, 626146, 626148, 626149, 626150, 626152, 626153, 626155, 626160, 626161, 626164, 626165, 626167, 626170, 626171, 626173, 626176, 626181, 626182, 626183, 626186, 626187, 626188, 626189, 626190, 626191, 626193, 626195, 626196, 626197, 626198, 626199, 626200, 626201, 626205, 626208, 626212, 626214, 626215, 626217, 626219, 626221, 626222, 626224, 626225, 626227, 626228, 626230, 626231, 626232, 626233, 626234, 626239, 626240, 626243, 626245, 626246, 626247, 626249, 626250, 626251, 626252, 626253, 626254, 626257, 626258, 626260, 626261, 626263, 626264, 626266, 626267, 626269, 626270, 626271, 626273, 626275, 626276, 626277, 626278, 626280, 626282, 626283, 626284, 626285, 626286, 626287, 626288, 626290, 626291, 626292, 626293, 626294, 626295, 626296, 626297, 626300, 626302, 626303, 626304, 626306, 626307, 626309, 626312, 626314, 626315, 626316, 626318, 626319, 626320, 626321, 626323, 626324, 626325, 626326, 626327, 626329, 626332, 626333, 626334, 626335, 626336, 626337, 626338, 626339, 626340, 626341, 626344, 626345, 626347, 626348, 626350, 626351, 626352, 626353, 626354, 626355, 626356, 626358, 626360, 626361, 626363, 626365, 626366, 626367, 626368, 626369, 626370, 626374, 626375, 626376, 626378, 626379, 626380, 626381, 626382, 626385, 626389, 626390, 626391, 626392, 626395, 626397, 626398, 626399, 626401, 626402, 626405, 626406, 626407, 626409, 626410, 626412, 626414, 626416, 626417, 626418, 626419, 626420, 626423, 626424, 626425, 626426, 626428, 626429, 626430, 626431, 626433, 626434, 626435, 626436, 626437, 626438, 626440, 626441, 626442, 626443, 626445, 626447, 626448, 626449, 626450, 626451, 626452, 626453, 626454, 626455, 626456,626460, 626462, 626463, 626464, 626465, 626466, 626467, 626471, 626472, 626473, 626474, 626478, 626480, 626483, 626484, 626486, 626487, 626488, 626491, 626494, 626497, 626500, 626501, 626504, 626506, 626512, 626515, 626516, 626518, 626525, 627001, 627003, 627004, 627007, 627008, 627010, 627011, 627012, 627013, 627014, 627016, 627019, 627020, 627021, 627022, 627023, 627024, 627025, 627027, 627028, 627029, 627030, 627031, 627032, 627034, 627036, 627037, 627039, 627040, 627042, 627043, 627046, 627047, 627049, 627050, 627051, 627052, 627053, 627054, 627056, 627057, 627058, 627059, 627061, 627062, 627063, 627064, 627065, 627066, 627067, 627068, 627069, 627070, 627071, 627074, 627075, 627081, 627082, 627083, 627084, 627085, 627086, 627087, 627088, 627089, 627092, 627093, 627094, 627095, 627097, 627098, 627099, 627100, 627101, 627102, 627103, 627105, 627106, 627107, 627108, 627109, 627110, 627111, 627112, 627113, 627114, 627115, 627116, 627117, 627119, 627120, 627121, 627122, 627123, 627124, 627125, 627126, 627127, 627129, 627130, 627131, 627132, 627133, 627134, 627136, 627137, 627138, 627140, 627141, 627142, 627143, 627144, 627145, 627146, 627147, 627148, 627149, 627151, 627152, 627154, 627155, 627156, 627157, 627159, 627160, 627162, 627163, 627165, 627166, 627167, 627169, 627170, 627171, 627172, 627174, 627175, 627176, 627177, 627178, 627179, 627181, 627185, 627186, 627187, 627188, 627189, 627190, 627191, 627192, 627194, 627196, 627197, 627199, 627201, 627202, 627205, 627206, 627209, 627210, 627211, 627212, 627213, 627214, 627215, 627216, 627218, 627219, 627220, 627222, 627223, 627224, 627225, 627226, 627227, 627228, 627229, 627230, 627231, 627232, 627233, 627234, 627237, 627238, 627239, 627240, 627241, 627244, 627248, 627249, 627251, 627252, 627253, 627254, 627255, 627256, 627257, 627258, 627259, 627260, 627262, 627265, 627266, 627267, 627268, 627273, 627274, 627275, 627276, 627277, 627278, 627279, 627280, 627281, 627283, 627284, 627285, 627286, 627287, 627288, 627290, 627292, 627293, 627295, 627296, 627297, 627298, 627300, 627302, 627304, 627305, 627306, 627307, 627309, 627311, 627313, 627315, 627316, 627317, 627318, 627320, 627323, 627324, 627326, 627327, 627328, 627331, 627332, 627335, 627340, 627341, 627342, 627343, 627344, 627346, 627348, 627349, 627351, 627352, 627354, 627357, 627359, 627361, 627362, 627363, 627365, 627366, 627367, 627371, 627372, 627373, 627374, 627375, 627377, 627378, 627379, 627381, 627382, 627383, 627384, 627385, 627387, 627389, 627390, 627391, 627392, 627393, 627394, 627395, 627396, 627397, 627398, 627399, 627402, 627403, 627404, 627405, 627406, 627407, 627410, 627412, 627413, 627414, 627415, 627418, 627420, 627421, 627422, 627423, 627424, 627426, 627428, 627429, 627430, 627431, 627432, 627434, 627435, 627436, 627437, 627438, 627439, 627440, 627441, 627443, 627444, 627445, 627446, 627449, 627451, 627452, 627454, 627457, 627458, 627461, 627463, 627469, 627473, 627476, 627477, 627486, 627487, 627488, 627489, 627490, 627494, 724391, 724429, 726256, 727014, 727461, 823579, 824111, 824118, 824231, 824396, 824440, 824490, 825041, 825049, 825172, 825253, 825293, 825406, 825487, 826103, 826122, 826229, 826256, 826268, 826312, 826456, 827006]
    @State var StudentID = ""
    @State var purchased:Bool = true
    @State var text = ""
    @State var showingAlert = false
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack{
                Color.gray
                    .ignoresSafeArea()
                
                VStack {
                    Group {
                        VStack() {
                            Text("Check for Yearbook")
                            Text("Purchase")
                            
                        }
                    }
                    .padding()
                    .fontWeight(.bold)
                    .font(.custom(
                        "Arial", fixedSize: 35))
                    .foregroundStyle(.white)
                    .frame(width: geometry.size.width * 0.95, height: geometry.size.height * 0.2, alignment: .center)
                    
                    
                    TextField("Enter Student ID", text: $StudentID)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: geometry.size.width * 0.875, height: geometry.size.height * 0.1)
                        .padding()
                        .onSubmit {
                            let answer = checkID(studentID: StudentID)
                            if answer == true {
                                text = "You have purchased a yearbook, thank you!"
                            } else if answer == false {
                                text = "You have not purchased a yearbook."
                            }
                            showingAlert =  true
                        }
                    Text(text)
                    //                        .alert("\(text)", isPresented: $showingAlert) {
                    //                            Button("Ok", role: .cancel) { }
                    //                            NavigationLink(destination: BuyView()
                    //                            )
                    //                            {
                    //                                Text("Buy a Yearbook")
                    //                            }
                    //                        }
                    
                    
                    VStack {
                        HStack{
                            Button {
                                let answer = checkID(studentID: StudentID)
                                if answer == true {
                                    text = "You have purchased a yearbook, thank you!"
                                } else if answer == false {
                                    text = "You have not purchased a yearbook"
                                }
                                showingAlert =  true
                                StudentID = ""
                                
                            } label: {
                                Text("Check ID")
                                    .padding()
                                    .frame(width: geometry.size.width * 0.5, height:geometry.size.height * 0.09)
                                    .font(.system(size: geometry.size.height * 0.032))
                                    .background(Color.orange)
                                    .foregroundColor(.black)
                                    .cornerRadius(10)
                            }
                        }
                        //                        .alert("\(text)", isPresented: $showingAlert) {
                        //                            Button("Ok", role: .cancel) { StudentID = "" }
                        //                            NavigationLink(destination: BuyView()) { Text("Buy a Yearbook") }
                        //                            NavigationLink(destination: BuyView()) {
                        //                            }
                        HStack {
                            NavigationLink(destination: BuyView()) {
                                HStack {
                                    Text("Buy yearbook")
                                }
                                .padding()
                                .frame(width: geometry.size.width * 0.5, height:geometry.size.height * 0.09)
                                .font(.system(size: geometry.size.height * 0.032))
                                .background(Color.orange)
                                .foregroundColor(.black)
                                .cornerRadius(10)
                            }
                        }
                    }
                }
            }
        }
    }
    func checkID(studentID: String) -> Bool {
        for idNumber in idNumbers {
            if String(idNumber) == studentID {
                return true
            }
        }
        return false
    }
}

