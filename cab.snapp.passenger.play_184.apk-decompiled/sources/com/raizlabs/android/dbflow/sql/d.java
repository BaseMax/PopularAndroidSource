package com.raizlabs.android.dbflow.sql;

import android.content.ContentValues;
import android.net.Uri;
import com.pusher.java_websocket.drafts.c;
import com.raizlabs.android.dbflow.a;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.language.s;
import com.raizlabs.android.dbflow.sql.language.t;
import com.raizlabs.android.dbflow.sql.language.u;
import com.raizlabs.android.dbflow.sql.language.w;
import com.raizlabs.android.dbflow.structure.BaseModel;
import com.raizlabs.android.dbflow.structure.b.g;
import com.raizlabs.android.dbflow.structure.b.i;
import com.raizlabs.android.dbflow.structure.f;
import java.util.Map;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f5144a = "0123456789ABCDEF".toCharArray();

    @Deprecated
    public static void notifyModelChanged(Class<?> cls, BaseModel.Action action, Iterable<w> iterable) {
        FlowManager.getContext().getContentResolver().notifyChange(getNotificationUri(cls, action, iterable), null, true);
    }

    @Deprecated
    public static <TModel> void notifyModelChanged(TModel tmodel, f<TModel> fVar, BaseModel.Action action) {
        com.raizlabs.android.dbflow.d.f.get().notifyModelChanged(tmodel, fVar, action);
    }

    @Deprecated
    public static <TModel> void notifyTableChanged(Class<TModel> cls, BaseModel.Action action) {
        com.raizlabs.android.dbflow.d.f.get().notifyTableChanged(cls, action);
    }

    public static Uri getNotificationUri(Class<?> cls, BaseModel.Action action, Iterable<w> iterable) {
        Uri.Builder authority = new Uri.Builder().scheme("dbflow").authority(FlowManager.getTableName(cls));
        if (action != null) {
            authority.fragment(action.name());
        }
        if (iterable != null) {
            for (w next : iterable) {
                authority.appendQueryParameter(Uri.encode(next.columnName()), Uri.encode(String.valueOf(next.value())));
            }
        }
        return authority.build();
    }

    public static Uri getNotificationUri(Class<?> cls, BaseModel.Action action, w[] wVarArr) {
        Uri.Builder authority = new Uri.Builder().scheme("dbflow").authority(FlowManager.getTableName(cls));
        if (action != null) {
            authority.fragment(action.name());
        }
        if (wVarArr != null && wVarArr.length > 0) {
            for (w wVar : wVarArr) {
                if (wVar != null) {
                    authority.appendQueryParameter(Uri.encode(wVar.columnName()), Uri.encode(String.valueOf(wVar.value())));
                }
            }
        }
        return authority.build();
    }

    public static Uri getNotificationUri(Class<?> cls, BaseModel.Action action, String str, Object obj) {
        return getNotificationUri(cls, action, new w[]{a.isNotNullOrEmpty(str) ? t.op(new s.a(str).build()).value(obj) : null});
    }

    public static Uri getNotificationUri(Class<?> cls, BaseModel.Action action) {
        return getNotificationUri(cls, action, null, null);
    }

    public static void dropTrigger(Class<?> cls, String str) {
        FlowManager.getDatabaseForTable(cls).getWritableDatabase().execSQL(new c("DROP TRIGGER IF EXISTS ").append(str).getQuery());
    }

    public static void dropIndex(i iVar, String str) {
        iVar.execSQL(new c("DROP INDEX IF EXISTS ").append(c.quoteIfNeeded(str)).getQuery());
    }

    public static void dropIndex(Class<?> cls, String str) {
        dropIndex(FlowManager.getDatabaseForTable(cls).getWritableDatabase(), str);
    }

    public static void addContentValues(ContentValues contentValues, u uVar) {
        for (Map.Entry<String, Object> key : contentValues.valueSet()) {
            String str = (String) key.getKey();
            uVar.and(t.op(new s.a(str).build()).is(contentValues.get(str)));
        }
    }

    public static String getContentValuesKey(ContentValues contentValues, String str) {
        String quoteIfNeeded = c.quoteIfNeeded(str);
        if (contentValues.containsKey(quoteIfNeeded)) {
            return quoteIfNeeded;
        }
        String stripQuotes = c.stripQuotes(str);
        if (contentValues.containsKey(stripQuotes)) {
            return stripQuotes;
        }
        throw new IllegalArgumentException("Could not find the specified key in the Content Values object.");
    }

    public static long longForQuery(i iVar, String str) {
        g compileStatement = iVar.compileStatement(str);
        try {
            return compileStatement.simpleQueryForLong();
        } finally {
            compileStatement.close();
        }
    }

    public static double doubleForQuery(i iVar, String str) {
        g compileStatement = iVar.compileStatement(str);
        try {
            return (double) compileStatement.simpleQueryForLong();
        } finally {
            compileStatement.close();
        }
    }

    public static String byteArrayToHexString(byte[] bArr) {
        char[] cArr = new char[(bArr.length * 2)];
        for (int i = 0; i < bArr.length; i++) {
            byte b2 = bArr[i] & c.END_OF_FRAME;
            int i2 = i * 2;
            char[] cArr2 = f5144a;
            cArr[i2] = cArr2[b2 >>> 4];
            cArr[i2 + 1] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }
}
