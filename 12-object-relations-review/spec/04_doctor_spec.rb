require 'spec_helper'

describe 'Doctor' do
  describe '#name' do
    it 'has a name' do
      doctor_who = Doctor.new('The Doctor')
      expect(doctor_who.name).to eq('The Doctor')
    end
  end

  describe '#new' do
    it 'initializes with a name and adds itself to an array of all doctors' do
      doctor_smith = Doctor.new('John Smith')
      expect { Doctor.new('Martha Jones') }.to_not raise_error
      expect(Doctor.all).to include(doctor_smith)
    end
  end

  describe '#new_appointment' do
    it 'given a date and a patient, creates a new appointment' do
      doctor_who = Doctor.new('The Doctor')
      hevydevy = Patient.new('Devin Townsend')
      appointment = doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')
      expect(doctor_who.appointments).to include(appointment)
      expect(appointment.doctor).to eq(doctor_who)
    end
  end

  describe '#appointments' do
    it 'has many appointments' do
      doctor_who = Doctor.new('The Doctor')
      hevydevy = Patient.new('Devin Townsend')
      doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')
      appointment = doctor_who.new_appointment(hevydevy, 'Saturday, January 33rd')
      doctor_who.new_appointment(hevydevy, 'Rootenskadootenday, January 315th')
      expect(doctor_who.appointments).to include(appointment)
    end
  end

  describe '#patients' do
    it 'has many patients, through appointments' do
      doctor_who = Doctor.new('The Doctor')
      hevydevy = Patient.new('Devin Townsend')
      doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')

      expect(doctor_who.patients).to include(hevydevy)
    end
  end
end
