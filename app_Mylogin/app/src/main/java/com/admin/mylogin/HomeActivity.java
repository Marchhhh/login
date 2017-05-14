
package com.admin.mylogin;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

public class HomeActivity extends RegisterActivity{
    private Button login;
    private Button register;
    private EditText  username=null;
    private EditText  password=null;
    private EditText  confirmpassword=null;
    private EditText mail=null;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);
        login= (Button) findViewById(R.id.btn_activity_login_login);
        register= (Button) findViewById(R.id.btn_activity_login_register);
    }
    public void onCli(View v) {
        switch (v.getId()) {
            case R.id.btn_activity_login_login:
                setContentView(R.layout.activity_main);
                break;
            case R.id.btn_activity_login_register:
                setContentView(R.layout.activity_register);
                break;
        }
    }


}