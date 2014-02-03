class HomePage
  include PageObject
  include FigNewton

  page_url("#{FigNewton.base_url}")

  def login_to_owned_board
    pending
  end
  
  def login_to_unowned_board
    pending
  end
end