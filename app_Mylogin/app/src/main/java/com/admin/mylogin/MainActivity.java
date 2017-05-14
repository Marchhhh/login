package com.admin.mylogin;

        import android.app.Activity;
        import android.os.Bundle;
        import android.view.View;
        import android.widget.Button;
        import android.widget.EditText;
        import android.widget.TextView;
        import android.widget.Toast;
        import android.widget.ImageView;
        import android.view.View.OnClickListener;

public class MainActivity extends Activity implements OnClickListener{

    private EditText  username=null;
    private EditText  password=null;
    private EditText confirmpassword;
    private EditText mail;
    private Button login;
    ImageView vc_image; // 图片
    Button update,ok;
    String getCode = null;
    EditText vc_code;
    @Override

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        username = (EditText)findViewById(R.id.edit_activity_login_username);
        password = (EditText)findViewById(R.id.edit_activity_login_password);

        login = (Button)findViewById(R.id.btn_activity_login_login);
    }

    public void login(View view){
        username = (EditText)findViewById(R.id.edit_activity_login_username);
        password = (EditText)findViewById(R.id.edit_activity_login_password);

        login = (Button)findViewById(R.id.btn_activity_login_login);
        if(username.getText().toString().equals("admin@qq.com") &&
                password.getText().toString().equals("root")){
            setContentView(R.layout.activity_testcode);
            vc_image = (ImageView) findViewById(R.id.vc_image);
            vc_image.setImageBitmap(DrawTestCode.getInstance().getBitmap());
            vc_code = (EditText) findViewById(R.id.vc_code);
            getCode = DrawTestCode.getInstance().getCode(); // 获取显示的验证码
            update = (Button) findViewById(R.id.update);
            update.setOnClickListener(this);
            ok = (Button) findViewById(R.id.ok);
            ok.setOnClickListener(this);
        }
        else {
            Toast.makeText(getApplicationContext(), "Email or Password is wrong,Please try again!",
                    Toast.LENGTH_SHORT).show();
        }
    }
    public void logout(View view){
       setContentView(R.layout.activity_main);
    }
    public void home(View view){
        setContentView(R.layout.activity_hmelogin);
    }
  public void onbutton(View view){
      setContentView(R.layout.activity_register);
  }
    public void reset(View view){

    }
    public void getRandomCheckCode(View view) {

    }
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.update:
                vc_image.setImageBitmap(DrawTestCode.getInstance().getBitmap());
                getCode = DrawTestCode.getInstance().getCode();
                break;
            case R.id.ok:
                String v_code = vc_code.getText().toString().trim();
                if (v_code == null || v_code.equals("")) {
                    Toast.makeText(MainActivity.this, "验证码为空", Toast.LENGTH_SHORT).show();
                } else if (!v_code.equals(getCode)) {
                    Toast.makeText(MainActivity.this, "验证码错误", Toast.LENGTH_SHORT).show();
                } else {
                    Toast.makeText(MainActivity.this, "验证成功", Toast.LENGTH_SHORT).show();
                    setContentView(R.layout.activity_task);
                }
                break;
        }
    }
}
