
struct FooView: View {
    var country: Country

    var body: some View {
        HStack {
            Spacer()
            Text(String(country.name))
        }
    }
}
