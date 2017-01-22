require 'json'

def get_config
  f = File.open('config.json', 'r')
  config = JSON.load(f)
end

def get_speed(speed)
  speed_setting = get_config['speed'][speed]
end

def get_browser
  browser = get_config['settings']['browser']
end

def get_host
  host = get_config['settings']['host']
end

def loadpage(page)
  f = File.open('dom.json')
  outhash = JSON.load(f)
  outhash2 = outhash[page]
end

def xclick(selector)
  xwait(selector)
  find(:xpath, selector).click
end

def xclick2(selector)
  xwait(selector)
  find(:xpath, selector).send_keys('')
  find(:xpath, selector).send_keys(:enter)
end

def xset(selector, text)
  xwait(selector)
  find(:xpath, selector).set(text)
end

def xwait(selector)
  done = false
  times = 0
  while done == false
    done = true
    begin
      find(:xpath,selector)
    rescue Capybara::ElementNotFound
      if times < 10
        sleep(1)
        done = false
        times = times + 1
      else
        raise "Timeout error waiting for #{selector}"
      end
    end
  end
end

