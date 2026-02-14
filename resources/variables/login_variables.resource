*** Variables ***

&{login_page}
...     title=//*[@id="content"]/div/h2
...     description=//*[@id="content"]/div/h4
...     username_label=//*[@id="login"]/div[1]/div/label
...     password_label=//*[@id="login"]/div[2]/div/label
...     username_field=//input[@id='username']
...     password_field=//input[@id='password']
...     login_button=//button[@type='submit']
...     message=//*[@id="flash"]