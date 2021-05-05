class BoardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :items
end
