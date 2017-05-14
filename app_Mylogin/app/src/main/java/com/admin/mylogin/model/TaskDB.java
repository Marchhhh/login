package com.admin.mylogin.model;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class TaskDB extends SQLiteOpenHelper {

    public static final String TABLE_NAME="tasks";//表名
    public static final String CONTENT="content";//内容
    public static final String ID="id";         //标识每一条数据
    public static final String TASK="task";
    public static final String TIME="time";    //存放添加数据时的时间

    public TaskDB(Context context) {
        super(context, "notes", null, 1);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE " + TABLE_NAME + " ("
                + ID+ " INTEGER PRIMARY KEY AUTOINCREMENT,"
                + CONTENT+" TEXT NOT NULL,"
                + TASK +" TEXT NOT NULL,"
                + TIME +" TEXT NOT NULL)");
    }
    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

    }
}