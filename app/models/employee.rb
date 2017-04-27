class Employee < ApplicationRecord
  enum department: [:frontend, :backend, :hr, :devops, :managers]
  enum level: [:trainee, :junior_beginner, :junior, :junior_strong, :middle_beginner, :middle, :middle_strong, :senior]
end
