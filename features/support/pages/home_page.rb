class HomePage
  include PageObject
  include FigNewton

  page_url("#{FigNewton.base_url}")
  link(:login, :id => "ui-id-3")
  text_field(:name, :name => "board")
  text_field(:password, :name => "password")
  button(:submit, :type => "submit")

  def login_to_owned_board
    #login
    #set name
    #set password
    #submit
  end
  
  def login_to_unowned_board
    #login
    #set name
    #set password
    #submit
  end
end