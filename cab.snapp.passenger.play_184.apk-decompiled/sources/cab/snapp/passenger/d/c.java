package cab.snapp.passenger.d;

import android.content.ContentValues;
import com.raizlabs.android.dbflow.sql.language.a.a;
import com.raizlabs.android.dbflow.sql.language.u;
import com.raizlabs.android.dbflow.sql.language.x;
import com.raizlabs.android.dbflow.structure.b.g;
import com.raizlabs.android.dbflow.structure.b.i;
import com.raizlabs.android.dbflow.structure.b.j;
import com.raizlabs.android.dbflow.structure.f;

public final class c extends f<b> {
    public static final a[] ALL_COLUMN_PROPERTIES = {key, type, jsonString, lastModificationTimestamp};
    public static final com.raizlabs.android.dbflow.sql.language.a.c<String> jsonString = new com.raizlabs.android.dbflow.sql.language.a.c<>((Class<?>) b.class, "jsonString");
    public static final com.raizlabs.android.dbflow.sql.language.a.c<String> key = new com.raizlabs.android.dbflow.sql.language.a.c<>((Class<?>) b.class, "key");
    public static final com.raizlabs.android.dbflow.sql.language.a.c<Long> lastModificationTimestamp = new com.raizlabs.android.dbflow.sql.language.a.c<>((Class<?>) b.class, "lastModificationTimestamp");
    public static final com.raizlabs.android.dbflow.sql.language.a.c<Integer> type = new com.raizlabs.android.dbflow.sql.language.a.c<>((Class<?>) b.class, "type");

    public final String getCompiledStatementQuery() {
        return "INSERT INTO `GeneralDataModel`(`key`,`type`,`jsonString`,`lastModificationTimestamp`) VALUES (?,?,?,?)";
    }

    public final String getCreationQuery() {
        return "CREATE TABLE IF NOT EXISTS `GeneralDataModel`(`key` TEXT, `type` INTEGER, `jsonString` TEXT, `lastModificationTimestamp` INTEGER, PRIMARY KEY(`key`))";
    }

    public final String getDeleteStatementQuery() {
        return "DELETE FROM `GeneralDataModel` WHERE `key`=?";
    }

    public final String getTableName() {
        return "`GeneralDataModel`";
    }

    public final String getUpdateStatementQuery() {
        return "UPDATE `GeneralDataModel` SET `key`=?,`type`=?,`jsonString`=?,`lastModificationTimestamp`=? WHERE `key`=?";
    }

    public c(com.raizlabs.android.dbflow.config.c cVar) {
        super(cVar);
    }

    public final Class<b> getModelClass() {
        return b.class;
    }

    public final b newInstance() {
        return new b();
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.raizlabs.android.dbflow.sql.language.a.c getProperty(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r5 = com.raizlabs.android.dbflow.sql.c.quoteIfNeeded(r5)
            int r0 = r5.hashCode()
            r1 = 3
            r2 = 2
            r3 = 1
            switch(r0) {
                case -1435724794: goto L_0x002d;
                case -87873700: goto L_0x0023;
                case 91946561: goto L_0x0019;
                case 634027015: goto L_0x000f;
                default: goto L_0x000e;
            }
        L_0x000e:
            goto L_0x0037
        L_0x000f:
            java.lang.String r0 = "`jsonString`"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0037
            r5 = 2
            goto L_0x0038
        L_0x0019:
            java.lang.String r0 = "`key`"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0037
            r5 = 0
            goto L_0x0038
        L_0x0023:
            java.lang.String r0 = "`lastModificationTimestamp`"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0037
            r5 = 3
            goto L_0x0038
        L_0x002d:
            java.lang.String r0 = "`type`"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0037
            r5 = 1
            goto L_0x0038
        L_0x0037:
            r5 = -1
        L_0x0038:
            if (r5 == 0) goto L_0x0051
            if (r5 == r3) goto L_0x004e
            if (r5 == r2) goto L_0x004b
            if (r5 != r1) goto L_0x0043
            com.raizlabs.android.dbflow.sql.language.a.c<java.lang.Long> r5 = lastModificationTimestamp
            return r5
        L_0x0043:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Invalid column name passed. Ensure you are calling the correct table's column"
            r5.<init>(r0)
            throw r5
        L_0x004b:
            com.raizlabs.android.dbflow.sql.language.a.c<java.lang.String> r5 = jsonString
            return r5
        L_0x004e:
            com.raizlabs.android.dbflow.sql.language.a.c<java.lang.Integer> r5 = type
            return r5
        L_0x0051:
            com.raizlabs.android.dbflow.sql.language.a.c<java.lang.String> r5 = key
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.passenger.d.c.getProperty(java.lang.String):com.raizlabs.android.dbflow.sql.language.a.c");
    }

    public final a[] getAllColumnProperties() {
        return ALL_COLUMN_PROPERTIES;
    }

    public final void bindToInsertValues(ContentValues contentValues, b bVar) {
        contentValues.put("`key`", bVar.getKey());
        contentValues.put("`type`", Integer.valueOf(bVar.getType()));
        contentValues.put("`jsonString`", bVar.getJsonString());
        contentValues.put("`lastModificationTimestamp`", Long.valueOf(bVar.getLastModificationTimestamp()));
    }

    public final void bindToInsertStatement(g gVar, b bVar, int i) {
        gVar.bindStringOrNull(i + 1, bVar.getKey());
        gVar.bindLong(i + 2, (long) bVar.getType());
        gVar.bindStringOrNull(i + 3, bVar.getJsonString());
        gVar.bindLong(i + 4, bVar.getLastModificationTimestamp());
    }

    public final void bindToUpdateStatement(g gVar, b bVar) {
        gVar.bindStringOrNull(1, bVar.getKey());
        gVar.bindLong(2, (long) bVar.getType());
        gVar.bindStringOrNull(3, bVar.getJsonString());
        gVar.bindLong(4, bVar.getLastModificationTimestamp());
        gVar.bindStringOrNull(5, bVar.getKey());
    }

    public final void bindToDeleteStatement(g gVar, b bVar) {
        gVar.bindStringOrNull(1, bVar.getKey());
    }

    public final void loadFromCursor(j jVar, b bVar) {
        bVar.setKey(jVar.getStringOrDefault("key"));
        bVar.setType(jVar.getIntOrDefault("type"));
        bVar.setJsonString(jVar.getStringOrDefault("jsonString"));
        bVar.setLastModificationTimestamp(jVar.getLongOrDefault("lastModificationTimestamp"));
    }

    public final boolean exists(b bVar, i iVar) {
        return x.selectCountOf(new a[0]).from(b.class).where(getPrimaryConditionClause(bVar)).hasData(iVar);
    }

    public final u getPrimaryConditionClause(b bVar) {
        u clause = u.clause();
        clause.and(key.eq(bVar.getKey()));
        return clause;
    }
}
