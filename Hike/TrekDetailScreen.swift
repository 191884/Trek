import SwiftUI

struct TrekDetailScreen: View {
    let hike: Hike
    var body: some View {
        VStack(alignment: .leading){
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(hike.name).font(.title)
            
            Text(hike.about).font(.body)

            Spacer()
        }.padding().navigationTitle(hike.name).navigationBarTitleDisplayMode(.inline)
            
    }
}

#Preview {
    NavigationStack{
        TrekDetailScreen(hike: Hike(name: "Roopkund Trek", photo: "roopkund", distance: 15, about: "A picturesque trek through the Himalayan valley blooming with flowers."))
    }
}
