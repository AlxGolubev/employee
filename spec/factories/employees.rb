FactoryGirl.define do
  factory :employee do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }

    Employee.levels.keys.each do |level|
      factory level.to_sym do
        level level.to_sym

        Employee.departments.keys.each do |department|
          factory "#{department}_#{level}".to_sym do
            department department
          end
        end
      end
    end
  end
end

