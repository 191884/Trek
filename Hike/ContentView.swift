import SwiftUI

struct ContentView: View {
    let hikes = [
        Hike(name: "Valley of Flowers Trek", photo: "valley_of_flowers", distance: 8, about: "A picturesque trek through the Himalayan valley blooming with flowers."),
        Hike(name: "Roopkund Trek", photo: "roopkund", distance: 15, about: "An adventurous trek to the mysterious Roopkund Lake, also known as the Skeleton Lake."),
        Hike(name: "Har Ki Dun Trek", photo: "har_ki_dun", distance: 12, about: "A scenic trek through the beautiful Har Ki Dun valley, rich in flora and fauna."),
        Hike(name: "Kedarkantha Trek", photo: "kedarkantha", distance: 10, about: "A popular winter trek known for its stunning views and accessible trails."),
        Hike(name: "Chadar Trek", photo: "chadar", distance: 13, about: "A thrilling trek across the frozen Zanskar River in Ladakh."),
        Hike(name: "Hampta Pass Trek", photo: "hampta_pass", distance: 14, about: "A moderate trek that takes you through contrasting landscapes of Kullu and Lahaul valleys."),
        Hike(name: "Sandakphu Trek", photo: "sandakphu", distance: 32, about: "Known as the trek to the highest peak in West Bengal with views of the Himalayan ranges."),
        Hike(name: "Goechala Trek", photo: "goechala", distance: 18, about: "A challenging trek offering close views of the Kanchenjunga range."),
        Hike(name: "Tarsar Marsar Trek", photo: "tarsar_marsar", distance: 16, about: "A beautiful trek in Kashmir, known for its alpine lakes and scenic landscapes."),
        Hike(name: "Brahmatal Trek", photo: "brahmatal", distance: 11, about: "A winter trek offering stunning views of snow-clad peaks and frozen lakes."),
        Hike(name: "Pin Parvati Pass Trek", photo: "pin_parvati", distance: 100, about: "A challenging trek that connects the lush Parvati Valley with the barren Pin Valley in Spiti."),
        Hike(name: "Dzongri Trek", photo: "dzongri", distance: 21, about: "A short trek in Sikkim with panoramic views of the Kanchenjunga range."),
        Hike(name: "Kuari Pass Trek", photo: "kuari_pass", distance: 10, about: "Also known as the Lord Curzon Trail, this trek offers stunning views of the Himalayan peaks."),
        Hike(name: "Nag Tibba Trek", photo: "nag_tibba", distance: 8, about: "An easy trek near Mussoorie, perfect for a weekend getaway."),
        Hike(name: "Dayara Bugyal Trek", photo: "dayara_bugyal", distance: 9, about: "Known for its vast alpine meadows and stunning Himalayan views.")
    ]
    
    var body: some View {
        NavigationStack{
            Text("Choose your Trek").font( .system(size: 24)).bold()
            List(hikes) { hike in
                NavigationLink(value: hike){
                    HikeCellView(hike: hike)
                }
            }
        .navigationDestination(for: Hike.self) { hike in
                    TrekDetailScreen(hike: hike)
                }
        }
    }
}

#Preview {
    ContentView()
}

struct HikeCellView: View {
    let hike: Hike
    var body: some View {
        HStack{
            Image(hike.photo).resizable().frame(width: 100, height: 60).clipShape(RoundedRectangle(cornerRadius: 6))
            VStack(alignment: .leading){
                Text(hike.name).font(.headline).lineLimit(1)
                Text("\(hike.distance) km")
            }.padding(.leading, 10)
        }
    }
}
