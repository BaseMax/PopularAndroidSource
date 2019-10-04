package com.raizlabs.android.dbflow.structure.b;

import android.content.res.AssetManager;
import android.database.sqlite.SQLiteException;
import com.raizlabs.android.dbflow.config.FlowLog;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.a.a;
import com.raizlabs.android.dbflow.structure.f;
import com.raizlabs.android.dbflow.structure.g;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.paho.a.a.w;

public class c {
    public static final String MIGRATION_PATH = "migrations";

    /* renamed from: a  reason: collision with root package name */
    private final com.raizlabs.android.dbflow.config.c f5228a;

    public c(com.raizlabs.android.dbflow.config.c cVar) {
        this.f5228a = cVar;
    }

    public com.raizlabs.android.dbflow.config.c getDatabaseDefinition() {
        return this.f5228a;
    }

    public void onCreate(i iVar) {
        a(iVar);
        b(iVar);
        a(iVar, -1, iVar.getVersion());
        c(iVar);
    }

    public void onUpgrade(i iVar, int i, int i2) {
        a(iVar);
        b(iVar);
        a(iVar, i, i2);
        c(iVar);
    }

    public void onOpen(i iVar) {
        a(iVar);
    }

    public void onDowngrade(i iVar, int i, int i2) {
        a(iVar);
    }

    private void a(i iVar) {
        if (this.f5228a.isForeignKeysSupported()) {
            iVar.execSQL("PRAGMA foreign_keys=ON;");
            FlowLog.log(FlowLog.Level.I, "Foreign Keys supported. Enabling foreign key features.");
        }
    }

    private void b(i iVar) {
        try {
            iVar.beginTransaction();
            for (f next : this.f5228a.getModelAdapters()) {
                if (next.createWithDatabase()) {
                    iVar.execSQL(next.getCreationQuery());
                }
            }
            iVar.setTransactionSuccessful();
            iVar.endTransaction();
        } catch (SQLiteException e) {
            FlowLog.logError(e);
        } catch (Throwable th) {
            iVar.endTransaction();
            throw th;
        }
    }

    private void c(i iVar) {
        try {
            iVar.beginTransaction();
            for (g next : this.f5228a.getModelViewAdapters()) {
                iVar.execSQL(new com.raizlabs.android.dbflow.sql.c().append("CREATE VIEW IF NOT EXISTS").appendSpaceSeparated(next.getViewName()).append("AS ").append(next.getCreationQuery()).getQuery());
            }
            iVar.setTransactionSuccessful();
            iVar.endTransaction();
        } catch (SQLiteException e) {
            FlowLog.logError(e);
        } catch (Throwable th) {
            iVar.endTransaction();
            throw th;
        }
    }

    private void a(i iVar, int i, int i2) {
        try {
            AssetManager assets = FlowManager.getContext().getAssets();
            List<String> asList = Arrays.asList(assets.list("migrations/" + this.f5228a.getDatabaseName()));
            Collections.sort(asList, new com.raizlabs.android.dbflow.config.f());
            HashMap hashMap = new HashMap();
            for (String str : asList) {
                try {
                    Integer valueOf = Integer.valueOf(str.replace(".sql", ""));
                    List list = (List) hashMap.get(valueOf);
                    if (list == null) {
                        list = new ArrayList();
                        hashMap.put(valueOf, list);
                    }
                    list.add(str);
                } catch (NumberFormatException e) {
                    FlowLog.log(FlowLog.Level.W, "Skipping invalidly named file: ".concat(String.valueOf(str)), e);
                }
            }
            Map<Integer, List<a>> migrations = this.f5228a.getMigrations();
            iVar.beginTransaction();
            for (int i3 = i + 1; i3 <= i2; i3++) {
                List<String> list2 = (List) hashMap.get(Integer.valueOf(i3));
                if (list2 != null) {
                    for (String str2 : list2) {
                        a(iVar, str2);
                        FlowLog.Level level = FlowLog.Level.I;
                        FlowLog.log(level, str2 + " executed successfully.");
                    }
                }
                List<a> list3 = migrations.get(Integer.valueOf(i3));
                if (list3 != null) {
                    for (a aVar : list3) {
                        aVar.onPreMigrate();
                        aVar.migrate(iVar);
                        aVar.onPostMigrate();
                        FlowLog.Level level2 = FlowLog.Level.I;
                        FlowLog.log(level2, aVar.getClass() + " executed successfully.");
                    }
                }
            }
            iVar.setTransactionSuccessful();
            iVar.endTransaction();
        } catch (IOException e2) {
            FlowLog.log(FlowLog.Level.E, "Failed to execute migrations.", e2);
        } catch (Throwable th) {
            iVar.endTransaction();
            throw th;
        }
    }

    private void a(i iVar, String str) {
        try {
            AssetManager assets = FlowManager.getContext().getAssets();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(assets.open("migrations/" + getDatabaseDefinition().getDatabaseName() + w.TOPIC_LEVEL_SEPARATOR + str)));
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                String trim = readLine.trim();
                boolean endsWith = trim.endsWith(";");
                if (!trim.startsWith("--")) {
                    if (endsWith) {
                        trim = trim.substring(0, trim.length() - 1);
                    }
                    stringBuffer.append(" ");
                    stringBuffer.append(trim);
                    if (endsWith) {
                        iVar.execSQL(stringBuffer.toString());
                        stringBuffer = new StringBuffer();
                    }
                }
            }
            String stringBuffer2 = stringBuffer.toString();
            if (stringBuffer2.trim().length() > 0) {
                iVar.execSQL(stringBuffer2);
            }
        } catch (IOException e) {
            FlowLog.log(FlowLog.Level.E, "Failed to execute ".concat(String.valueOf(str)), e);
        }
    }
}
