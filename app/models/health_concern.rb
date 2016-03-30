class HealthConcern < ActiveRecord::Base
    belongs_to :user
    def self.all_concerns
        ['BMI over 25', 'High Cholesterol', 'High Blood Pressure', 'Celiac/Gluten Intolerance', 'Diabetes']
    end
end
