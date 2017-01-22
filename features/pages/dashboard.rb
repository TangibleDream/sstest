class Dashboard
  attr_accessor :SS_BTN_MESSAGES
  def initialize
    @SS_BTN_MESSAGES = './/span[text()="messages"]/..'
  end

  def get_menu_item(item)
    return ".//span[text()=\"#{item}\"]/.."
  end
end