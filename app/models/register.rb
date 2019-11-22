class register
    include Mongoid::Document

    field :first_name, type: string
    field :last_name, type: string
    field :email, type: string
    field :mobile_number, type: integer
end