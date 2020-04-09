class Trabajo < ApplicationRecord


  before_save do
    self.total = (self.q1.to_i * self.v1.to_i) + (self.q2.to_i * self.v2.to_i) + (self.q3.to_i * self.v3.to_i) +
    (self.q4.to_i * self.v4.to_i) + (self.q5.to_i * self.v5.to_i) + (self.q6.to_i * self.v6.to_i) +
    (self.q7.to_i * self.v7.to_i) + (self.q8.to_i * self.v8.to_i) + (self.q9.to_i * self.v9.to_i) +
    (self.q10.to_i * self.v10.to_i) + (self.q11.to_i * self.v11.to_i) + (self.q12.to_i * self.v12.to_i)
  end


end
