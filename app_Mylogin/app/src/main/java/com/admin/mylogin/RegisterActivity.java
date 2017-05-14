package com.admin.mylogin;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import java.lang.String;

public class RegisterActivity extends MainActivity {
    private EditText  username=null;
    private EditText  password=null;
    private EditText  confirmpassword=null;
    private Button register;
    private EditText mail=null;
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);
        username = (EditText)findViewById(R.id.editText6);
        password = (EditText)findViewById(R.id.editText1);
        confirmpassword = (EditText)findViewById(R.id.editText2);
        mail = (EditText)findViewById(R.id.editText3);
    }
    public void register(View view){
        mail = (EditText)findViewById(R.id.editText6);
        username = (EditText)findViewById(R.id.editText1);
        password = (EditText)findViewById(R.id.editText2);
        confirmpassword= (EditText)findViewById(R.id.editText3);
        if(mail.getText().length() == 0){
            mail.setError("Can not be empty");
            mail.requestFocus();
        }else if(username.getText().length() == 0){
            username.setError("Can not be empty");
            username.requestFocus();
        }else if(password.getText().length() == 0){
            password.setError("Can not be empty");
            password.requestFocus();
        }else if(confirmpassword.getText().length() == 0){
            confirmpassword.setError("Can not be empty");
            confirmpassword.requestFocus();
        }else if(
            password.getText().toString().equals(confirmpassword.getText().toString())){
            Toast.makeText(getApplicationContext(), "Registered successfully!",
                    Toast.LENGTH_SHORT).show();
            setContentView(R.layout.activity_task);
        }
        else {

            password.setError("the passwords are not same! ");
            password.requestFocus();
        }

        }

    }
