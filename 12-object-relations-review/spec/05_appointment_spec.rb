require "spec_helper"

describe "Appointment" do

  describe ".all" do
    it "knows about all appointments that have been created" do
      doctor_who = Doctor.new("The Doctor")
      hevydevy = Patient.new("Devin Townsend")
      doctor_who.new_appointment(hevydevy, "Friday, January 32nd")
      appointment = doctor_who.new_appointment(hevydevy, "Caturday, January Purrty2nd")
      doctor_who.new_appointment(hevydevy, "Satunday, January 34nd")

      expect(Appointment.all).to include(appointment)
    end
  end

  describe "#new" do
    it "initializes with a patient, doctor, and date" do
      doctor_who = Doctor.new("The Doctor")
      hevydevy = Patient.new("Devin Townsend")

      expect{Appointment.new(hevydevy, doctor_who, "Friday, January 32nd")}.to_not raise_error
    end
  end

  describe "#patient" do
    it "belongs to a patient" do
      doctor_who = Doctor.new("The Doctor")
      hevydevy = Patient.new("Devin Townsend")
      appointment = doctor_who.new_appointment(hevydevy, "Friday, January 32nd")
      expect(appointment.patient).to eq(hevydevy)
    end
  end

  describe "#doctor" do
    it "belongs to a doctor" do
      doctor_who = Doctor.new("The Doctor")
      hevydevy = Patient.new("Devin Townsend")
      appointment = doctor_who.new_appointment(hevydevy, "Friday, January 32nd")
      expect(appointment.doctor).to eq(doctor_who)
    end
  end
end
