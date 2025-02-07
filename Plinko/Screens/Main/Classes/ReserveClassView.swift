import SwiftUI

struct ReserveClassView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var selectedDate: Date
    @Binding var classModel: ClassModel?
    @State private var name = ""
    @State private var phone = ""
    @State private var isReservedSuccess = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                VStack {
                    if isReservedSuccess {
                        VStack(spacing: 15) {
                            Text(AppLabels.Screens.Classes.Schedule.titleSuccessReserve.uppercased())
                                .font(.custom(AppFonts.poppinsSemiBold.name, size: 30))
                                .padding(.top)
                            Text(AppLabels.Screens.Classes.Schedule.subtitleSuccessReserve.uppercased())
                                .font(.custom(AppFonts.poppinsRegular.name, size: 20))
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    } else {
                        VStack {
                            VStack(spacing: 5) {
                                Text(AppLabels.Screens.Classes.Schedule.nameTextField.uppercased())
                                TextField("", text: $name)
                                    .background(AppColors.darkGray.color)
                                    .clipShape(Capsule())
                                    .padding(.horizontal)
                                    .multilineTextAlignment(.center)
                            }
                            
                            VStack(spacing: 5) {
                                Text(AppLabels.Screens.Classes.Schedule.phoneTextField.uppercased())
                                TextField("", text: $phone)
                                    .background(AppColors.darkGray.color)
                                    .clipShape(Capsule())
                                    .padding(.horizontal)
                                    .multilineTextAlignment(.center)
                                    .keyboardType(.phonePad)
                            }
                            
                            Spacer()
                            
                            if !name.isEmpty && !phone.isEmpty {
                                NavButton(title: AppLabels.Buttons.reserve) {
                                    isReservedSuccess = true
                                    classModel = ClassModel(classType: .yoga, date: selectedDate)
                                }
                            }
                        }
                        .foregroundStyle(.white)
                        .font(.custom(AppFonts.poppinsSemiBold.name, size: 30))
                        .padding(.top)
                    }
                }
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        HStack {
                            Spacer()
                            Button("Done") {
                                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                            }
                        }
                    }
                    ToolbarItemGroup(placement: .topBarTrailing) {
                        HStack {
                            Spacer()
                            Button {
                                dismiss()
                            } label: {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundStyle(.white)
                            }

                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ReserveClassView(selectedDate: .constant(Date()), classModel: .constant(ClassModel(classType: .yoga, date: Date())))
    }
}
