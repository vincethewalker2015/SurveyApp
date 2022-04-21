class Survey < ApplicationRecord
  enum survey: {no: "No", yes: "Yes"}
end
