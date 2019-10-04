package org.eclipse.paho.android.service;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Iterator;
import java.util.UUID;
import org.eclipse.paho.a.a.q;
import org.eclipse.paho.android.service.c;

final class b implements c {

    /* renamed from: a  reason: collision with root package name */
    SQLiteDatabase f8823a = null;

    /* renamed from: b  reason: collision with root package name */
    C0211b f8824b = null;
    private h c = null;

    class a implements c.a {

        /* renamed from: b  reason: collision with root package name */
        private String f8828b;
        private String c;
        private String d;
        private q e;

        a(String str, String str2, q qVar) {
            this.f8828b = str;
            this.d = str2;
            this.e = qVar;
        }

        public final String getMessageId() {
            return this.f8828b;
        }

        public final String getClientHandle() {
            return this.c;
        }

        public final String getTopic() {
            return this.d;
        }

        public final q getMessage() {
            return this.e;
        }
    }

    /* renamed from: org.eclipse.paho.android.service.b$b  reason: collision with other inner class name */
    static class C0211b extends SQLiteOpenHelper {

        /* renamed from: a  reason: collision with root package name */
        private h f8829a = null;

        public C0211b(h hVar, Context context) {
            super(context, "mqttAndroidService.db", null, 1);
            this.f8829a = hVar;
        }

        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            h hVar = this.f8829a;
            hVar.traceDebug("MQTTDatabaseHelper", "onCreate {" + "CREATE TABLE MqttArrivedMessageTable(messageId TEXT PRIMARY KEY, clientHandle TEXT, destinationName TEXT, payload BLOB, qos INTEGER, retained TEXT, duplicate TEXT, mtimestamp INTEGER);" + "}");
            try {
                sQLiteDatabase.execSQL("CREATE TABLE MqttArrivedMessageTable(messageId TEXT PRIMARY KEY, clientHandle TEXT, destinationName TEXT, payload BLOB, qos INTEGER, retained TEXT, duplicate TEXT, mtimestamp INTEGER);");
                this.f8829a.traceDebug("MQTTDatabaseHelper", "created the table");
            } catch (SQLException e) {
                this.f8829a.traceException("MQTTDatabaseHelper", "onCreate", e);
                throw e;
            }
        }

        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f8829a.traceDebug("MQTTDatabaseHelper", "onUpgrade");
            try {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS MqttArrivedMessageTable");
                onCreate(sQLiteDatabase);
                this.f8829a.traceDebug("MQTTDatabaseHelper", "onUpgrade complete");
            } catch (SQLException e) {
                this.f8829a.traceException("MQTTDatabaseHelper", "onUpgrade", e);
                throw e;
            }
        }
    }

    class c extends q {
        public c(byte[] bArr) {
            super(bArr);
        }

        public final void setDuplicate(boolean z) {
            super.setDuplicate(z);
        }
    }

    public b(MqttService mqttService, Context context) {
        this.c = mqttService;
        this.f8824b = new C0211b(this.c, context);
        this.c.traceDebug("DatabaseMessageStore", "DatabaseMessageStore<init> complete");
    }

    public final String storeArrived(String str, String str2, q qVar) {
        this.f8823a = this.f8824b.getWritableDatabase();
        h hVar = this.c;
        hVar.traceDebug("DatabaseMessageStore", "storeArrived{" + str + "}, {" + qVar.toString() + "}");
        byte[] payload = qVar.getPayload();
        int qos = qVar.getQos();
        boolean isRetained = qVar.isRetained();
        boolean isDuplicate = qVar.isDuplicate();
        ContentValues contentValues = new ContentValues();
        String uuid = UUID.randomUUID().toString();
        contentValues.put("messageId", uuid);
        contentValues.put("clientHandle", str);
        contentValues.put("destinationName", str2);
        contentValues.put("payload", payload);
        contentValues.put("qos", Integer.valueOf(qos));
        contentValues.put("retained", Boolean.valueOf(isRetained));
        contentValues.put("duplicate", Boolean.valueOf(isDuplicate));
        contentValues.put("mtimestamp", Long.valueOf(System.currentTimeMillis()));
        try {
            this.f8823a.insertOrThrow("MqttArrivedMessageTable", null, contentValues);
            int a2 = a(str);
            h hVar2 = this.c;
            hVar2.traceDebug("DatabaseMessageStore", "storeArrived: inserted message with id of {" + uuid + "} - Number of messages in database for this clientHandle = " + a2);
            return uuid;
        } catch (SQLException e) {
            this.c.traceException("DatabaseMessageStore", "onUpgrade", e);
            throw e;
        }
    }

    private int a(String str) {
        int i = 0;
        Cursor query = this.f8823a.query("MqttArrivedMessageTable", new String[]{"messageId"}, "clientHandle=?", new String[]{str}, null, null, null);
        if (query.moveToFirst()) {
            i = query.getInt(0);
        }
        query.close();
        return i;
    }

    public final boolean discardArrived(String str, String str2) {
        this.f8823a = this.f8824b.getWritableDatabase();
        h hVar = this.c;
        hVar.traceDebug("DatabaseMessageStore", "discardArrived{" + str + "}, {" + str2 + "}");
        try {
            int delete = this.f8823a.delete("MqttArrivedMessageTable", "messageId=? AND clientHandle=?", new String[]{str2, str});
            if (delete != 1) {
                h hVar2 = this.c;
                hVar2.traceError("DatabaseMessageStore", "discardArrived - Error deleting message {" + str2 + "} from database: Rows affected = " + delete);
                return false;
            }
            this.c.traceDebug("DatabaseMessageStore", "discardArrived - Message deleted successfully. - messages in db for this clientHandle ".concat(String.valueOf(a(str))));
            return true;
        } catch (SQLException e) {
            this.c.traceException("DatabaseMessageStore", "discardArrived", e);
            throw e;
        }
    }

    public final Iterator<c.a> getAllArrivedMessages(final String str) {
        return new Iterator<c.a>() {
            private Cursor c;
            private boolean d;
            private final String[] e = {str};

            {
                b bVar = b.this;
                bVar.f8823a = bVar.f8824b.getWritableDatabase();
                if (str == null) {
                    this.c = b.this.f8823a.query("MqttArrivedMessageTable", null, null, null, null, null, "mtimestamp ASC");
                } else {
                    this.c = b.this.f8823a.query("MqttArrivedMessageTable", null, "clientHandle=?", this.e, null, null, "mtimestamp ASC");
                }
                this.d = this.c.moveToFirst();
            }

            public final boolean hasNext() {
                if (!this.d) {
                    this.c.close();
                }
                return this.d;
            }

            public final c.a next() {
                Cursor cursor = this.c;
                String string = cursor.getString(cursor.getColumnIndex("messageId"));
                Cursor cursor2 = this.c;
                cursor2.getString(cursor2.getColumnIndex("clientHandle"));
                Cursor cursor3 = this.c;
                String string2 = cursor3.getString(cursor3.getColumnIndex("destinationName"));
                Cursor cursor4 = this.c;
                byte[] blob = cursor4.getBlob(cursor4.getColumnIndex("payload"));
                Cursor cursor5 = this.c;
                int i = cursor5.getInt(cursor5.getColumnIndex("qos"));
                Cursor cursor6 = this.c;
                boolean parseBoolean = Boolean.parseBoolean(cursor6.getString(cursor6.getColumnIndex("retained")));
                Cursor cursor7 = this.c;
                boolean parseBoolean2 = Boolean.parseBoolean(cursor7.getString(cursor7.getColumnIndex("duplicate")));
                c cVar = new c(blob);
                cVar.setQos(i);
                cVar.setRetained(parseBoolean);
                cVar.setDuplicate(parseBoolean2);
                this.d = this.c.moveToNext();
                return new a(string, string2, cVar);
            }

            public final void remove() {
                throw new UnsupportedOperationException();
            }

            /* access modifiers changed from: protected */
            public final void finalize() throws Throwable {
                this.c.close();
                super.finalize();
            }
        };
    }

    public final void clearArrivedMessages(String str) {
        int i;
        this.f8823a = this.f8824b.getWritableDatabase();
        String[] strArr = {str};
        if (str == null) {
            this.c.traceDebug("DatabaseMessageStore", "clearArrivedMessages: clearing the table");
            i = this.f8823a.delete("MqttArrivedMessageTable", null, null);
        } else {
            h hVar = this.c;
            hVar.traceDebug("DatabaseMessageStore", "clearArrivedMessages: clearing the table of " + str + " messages");
            i = this.f8823a.delete("MqttArrivedMessageTable", "clientHandle=?", strArr);
        }
        this.c.traceDebug("DatabaseMessageStore", "clearArrivedMessages: rows affected = ".concat(String.valueOf(i)));
    }

    public final void close() {
        SQLiteDatabase sQLiteDatabase = this.f8823a;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
        }
    }
}
