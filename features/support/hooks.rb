
After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')
    foto = "reports/screenshots/#{scenario_name}.png"
    page.save_screenshot(foto)
    attach(foto, 'image/png')
end