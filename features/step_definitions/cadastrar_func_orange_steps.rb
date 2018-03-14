Dado("que eu esteja na pagina de cadastro de funcionarios no site da orange") do
    visit "http://opensource.demo.orangehrmlive.com/"
    fill_in "txtUsername", :with=> 'Admin'
    fill_in "txtPassword", :with=> 'admin'
    page.find(:id, 'btnLogin').click
    page.find(:id, 'menu_pim_viewPimModule').click   
    page.find(:id, 'menu_pim_addEmployee').click 
  end
  
  Quando("preencher o formulario de cadastro") do
    fill_in "firstName", :with=> 'Luan'    
    fill_in "middleName", :with=> 'Felipe'   
    fill_in "lastName", :with=> 'Luan'   
    fill_in "employeeId", :with=> '0101'
#    page.find(:id, 'photofile').click 
    page.find(:checkbox, "chkLogin").set(true)
    fill_in "user_name", :with=> 'luanunesouza'
    fill_in "user_password", :with=> 'luan123'
    fill_in "re_password", :with=> 'luan123'  
    select "Enabled", from: "status"   
  end
  
  Entao("o cadastro sera realizado com sucesso") do
    page.find(:id, 'btnSave').click
  end

  Dado("que eu esteja na pagina lista de funcionarios no site da orange") do
    visit "http://opensource.demo.orangehrmlive.com/"
    fill_in "txtUsername", :with=> 'Admin'
    fill_in "txtPassword", :with=> 'admin'
    page.find(:id, 'btnLogin').click
    page.find(:id, 'menu_pim_viewPimModule').click   
    page.find(:id, 'menu_pim_viewEmployeeList').click
    page.find(:css, '#resultTable > tbody > tr:nth-child(17) > td:nth-child(3) > a').click
  end
  
  Quando("alterar o formulario de cadastro") do
    page.find(:xpath, '//*[@id="btnSave"]').click
    fill_in "personal_txtEmployeeId", :with=> '9876'      
  end
  
  Entao("o cadastro sera atualizado com sucesso") do
    page.find(:xpath, '//*[@id="btnSave"]').click
  end