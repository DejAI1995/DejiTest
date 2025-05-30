import SwiftUI

struct DetailView: View {
    let title: String
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "star.circle.fill")
                .imageScale(.large)
                .font(.system(size: 60))
                .foregroundStyle(.tint)
            
            Text(title)
                .font(.title)
            
            Text("This is the detail view for \(title)")
                .foregroundStyle(.secondary)
        }
        .padding()
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        DetailView(title: "Sample Item")
    }
} 