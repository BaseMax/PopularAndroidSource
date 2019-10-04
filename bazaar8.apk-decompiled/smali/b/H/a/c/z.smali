.class public final Lb/H/a/c/z;
.super Ljava/lang/Object;
.source "WorkSpecDao_Impl.java"

# interfaces
.implements Lb/H/a/c/p;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Lb/z/e;

.field public final c:Lb/z/C;

.field public final d:Lb/z/C;

.field public final e:Lb/z/C;

.field public final f:Lb/z/C;

.field public final g:Lb/z/C;

.field public final h:Lb/z/C;

.field public final i:Lb/z/C;

.field public final j:Lb/z/C;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lb/H/a/c/q;

    invoke-direct {v0, p0, p1}, Lb/H/a/c/q;-><init>(Lb/H/a/c/z;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lb/H/a/c/z;->b:Lb/z/e;

    .line 4
    new-instance v0, Lb/H/a/c/r;

    invoke-direct {v0, p0, p1}, Lb/H/a/c/r;-><init>(Lb/H/a/c/z;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lb/H/a/c/z;->c:Lb/z/C;

    .line 5
    new-instance v0, Lb/H/a/c/s;

    invoke-direct {v0, p0, p1}, Lb/H/a/c/s;-><init>(Lb/H/a/c/z;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lb/H/a/c/z;->d:Lb/z/C;

    .line 6
    new-instance v0, Lb/H/a/c/t;

    invoke-direct {v0, p0, p1}, Lb/H/a/c/t;-><init>(Lb/H/a/c/z;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lb/H/a/c/z;->e:Lb/z/C;

    .line 7
    new-instance v0, Lb/H/a/c/u;

    invoke-direct {v0, p0, p1}, Lb/H/a/c/u;-><init>(Lb/H/a/c/z;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lb/H/a/c/z;->f:Lb/z/C;

    .line 8
    new-instance v0, Lb/H/a/c/v;

    invoke-direct {v0, p0, p1}, Lb/H/a/c/v;-><init>(Lb/H/a/c/z;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lb/H/a/c/z;->g:Lb/z/C;

    .line 9
    new-instance v0, Lb/H/a/c/w;

    invoke-direct {v0, p0, p1}, Lb/H/a/c/w;-><init>(Lb/H/a/c/z;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lb/H/a/c/z;->h:Lb/z/C;

    .line 10
    new-instance v0, Lb/H/a/c/x;

    invoke-direct {v0, p0, p1}, Lb/H/a/c/x;-><init>(Lb/H/a/c/z;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lb/H/a/c/z;->i:Lb/z/C;

    .line 11
    new-instance v0, Lb/H/a/c/y;

    invoke-direct {v0, p0, p1}, Lb/H/a/c/y;-><init>(Lb/H/a/c/z;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lb/H/a/c/z;->j:Lb/z/C;

    return-void
.end method


# virtual methods
.method public varargs a(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I
    .locals 4

    .line 191
    invoke-static {}, Lb/z/b/c;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UPDATE workspec SET state="

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE id IN ("

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    array-length v1, p2

    .line 196
    invoke-static {v0, v1}, Lb/z/b/c;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->a(Ljava/lang/String;)Lb/C/a/f;

    move-result-object v0

    .line 200
    invoke-static {p1}, Lb/H/a/c/F;->a(Landroidx/work/WorkInfo$State;)I

    move-result p1

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 201
    invoke-interface {v0, p1, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 202
    array-length p1, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v3, p2, v2

    if-nez v3, :cond_0

    .line 203
    invoke-interface {v0, v1}, Lb/C/a/d;->a(I)V

    goto :goto_1

    .line 204
    :cond_0
    invoke-interface {v0, v1, v3}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_1
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->c()V

    .line 206
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    move-result p1

    .line 207
    iget-object p2, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget-object p2, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->e()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->e()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public a(Ljava/lang/String;J)I
    .locals 2

    .line 18
    iget-object v0, p0, Lb/H/a/c/z;->h:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    const/4 v1, 0x1

    .line 20
    :try_start_0
    invoke-interface {v0, v1, p2, p3}, Lb/C/a/d;->a(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 21
    invoke-interface {v0, p2}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v0, p2, p1}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 23
    :goto_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    move-result p1

    .line 24
    iget-object p2, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object p2, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->e()V

    .line 26
    iget-object p2, p0, Lb/H/a/c/z;->h:Lb/z/C;

    invoke-virtual {p2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return p1

    :catchall_0
    move-exception p1

    .line 27
    iget-object p2, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->e()V

    .line 28
    iget-object p2, p0, Lb/H/a/c/z;->h:Lb/z/C;

    invoke-virtual {p2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    throw p1
.end method

.method public a()Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/H/a/c/o;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    .line 119
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    move-object/from16 v2, p0

    .line 120
    iget-object v3, v2, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v4, "id"

    .line 121
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "state"

    .line 122
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "worker_class_name"

    .line 123
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    .line 124
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    .line 125
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    .line 126
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    .line 127
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    .line 128
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    .line 129
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "run_attempt_count"

    .line 130
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    .line 131
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    .line 132
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v0, "period_start_time"

    .line 133
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v2, "minimum_retention_duration"

    .line 134
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "schedule_requested_at"

    .line 135
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "required_network_type"

    .line 136
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v2

    const-string v2, "requires_charging"

    .line 137
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v0

    const-string v0, "requires_device_idle"

    .line 138
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v15

    const-string v15, "requires_battery_not_low"

    .line 139
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v14

    const-string v14, "requires_storage_not_low"

    .line 140
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move/from16 v22, v13

    const-string v13, "trigger_content_update_delay"

    .line 141
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move/from16 v23, v12

    const-string v12, "trigger_max_content_delay"

    .line 142
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move/from16 v24, v11

    const-string v11, "content_uri_triggers"

    .line 143
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move/from16 v25, v10

    .line 144
    new-instance v10, Ljava/util/ArrayList;

    move/from16 v26, v9

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 146
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v27, v4

    .line 147
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v28, v6

    .line 148
    new-instance v6, Lb/H/b;

    invoke-direct {v6}, Lb/H/b;-><init>()V

    .line 149
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v30, v1

    .line 150
    invoke-static/range {v29 .. v29}, Lb/H/a/c/F;->b(I)Landroidx/work/NetworkType;

    move-result-object v1

    .line 151
    invoke-virtual {v6, v1}, Lb/H/b;->a(Landroidx/work/NetworkType;)V

    .line 152
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v29, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 153
    :goto_1
    invoke-virtual {v6, v1}, Lb/H/b;->b(Z)V

    .line 154
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 155
    :goto_2
    invoke-virtual {v6, v1}, Lb/H/b;->c(Z)V

    .line 156
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    .line 157
    :goto_3
    invoke-virtual {v6, v1}, Lb/H/b;->a(Z)V

    .line 158
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    .line 159
    :goto_4
    invoke-virtual {v6, v1}, Lb/H/b;->d(Z)V

    move/from16 v29, v0

    .line 160
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 161
    invoke-virtual {v6, v0, v1}, Lb/H/b;->a(J)V

    .line 162
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 163
    invoke-virtual {v6, v0, v1}, Lb/H/b;->b(J)V

    .line 164
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 165
    invoke-static {v0}, Lb/H/a/c/F;->a([B)Lb/H/c;

    move-result-object v0

    .line 166
    invoke-virtual {v6, v0}, Lb/H/b;->a(Lb/H/c;)V

    .line 167
    new-instance v0, Lb/H/a/c/o;

    invoke-direct {v0, v9, v4}, Lb/H/a/c/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 169
    invoke-static {v1}, Lb/H/a/c/F;->c(I)Landroidx/work/WorkInfo$State;

    move-result-object v1

    iput-object v1, v0, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    .line 170
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/H/a/c/o;->f:Ljava/lang/String;

    .line 171
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 172
    invoke-static {v1}, Lb/H/d;->a([B)Lb/H/d;

    move-result-object v1

    iput-object v1, v0, Lb/H/a/c/o;->g:Lb/H/d;

    move/from16 v1, v26

    .line 173
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 174
    invoke-static {v4}, Lb/H/d;->a([B)Lb/H/d;

    move-result-object v4

    iput-object v4, v0, Lb/H/a/c/o;->h:Lb/H/d;

    move/from16 v26, v1

    move v9, v2

    move/from16 v4, v25

    .line 175
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lb/H/a/c/o;->i:J

    move/from16 v25, v4

    move v2, v5

    move/from16 v1, v24

    .line 176
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lb/H/a/c/o;->j:J

    move/from16 v24, v1

    move v5, v2

    move/from16 v4, v23

    .line 177
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lb/H/a/c/o;->k:J

    move/from16 v1, v22

    .line 178
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lb/H/a/c/o;->m:I

    move/from16 v2, v21

    .line 179
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v22, v1

    .line 180
    invoke-static/range {v21 .. v21}, Lb/H/a/c/F;->a(I)Landroidx/work/BackoffPolicy;

    move-result-object v1

    iput-object v1, v0, Lb/H/a/c/o;->n:Landroidx/work/BackoffPolicy;

    move/from16 v23, v4

    move/from16 v1, v20

    move/from16 v20, v5

    .line 181
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lb/H/a/c/o;->o:J

    move v5, v1

    move/from16 v21, v2

    move/from16 v4, v19

    .line 182
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lb/H/a/c/o;->p:J

    move/from16 v19, v4

    move v2, v5

    move/from16 v1, v18

    .line 183
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lb/H/a/c/o;->q:J

    move/from16 v18, v1

    move v5, v2

    move/from16 v4, v17

    .line 184
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lb/H/a/c/o;->r:J

    .line 185
    iput-object v6, v0, Lb/H/a/c/o;->l:Lb/H/b;

    .line 186
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v17, v4

    move v2, v9

    move/from16 v4, v27

    move/from16 v6, v28

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v31, v20

    move/from16 v20, v5

    move/from16 v5, v31

    goto/16 :goto_0

    .line 187
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 188
    invoke-virtual/range {v16 .. v16}, Lb/z/x;->c()V

    return-object v10

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    .line 189
    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 190
    invoke-virtual/range {v16 .. v16}, Lb/z/x;->c()V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public a(I)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lb/H/a/c/o;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    .line 46
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    move/from16 v2, p1

    int-to-long v2, v2

    .line 47
    invoke-virtual {v1, v0, v2, v3}, Lb/z/x;->a(IJ)V

    move-object/from16 v2, p0

    .line 48
    iget-object v3, v2, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v4, "id"

    .line 49
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "state"

    .line 50
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "worker_class_name"

    .line 51
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    .line 52
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    .line 53
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    .line 54
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    .line 55
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    .line 56
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    .line 57
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "run_attempt_count"

    .line 58
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    .line 59
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    .line 60
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v0, "period_start_time"

    .line 61
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v2, "minimum_retention_duration"

    .line 62
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "schedule_requested_at"

    .line 63
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "required_network_type"

    .line 64
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v2

    const-string v2, "requires_charging"

    .line 65
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v0

    const-string v0, "requires_device_idle"

    .line 66
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v15

    const-string v15, "requires_battery_not_low"

    .line 67
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v14

    const-string v14, "requires_storage_not_low"

    .line 68
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move/from16 v21, v13

    const-string v13, "trigger_content_update_delay"

    .line 69
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move/from16 v22, v12

    const-string v12, "trigger_max_content_delay"

    .line 70
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move/from16 v23, v11

    const-string v11, "content_uri_triggers"

    .line 71
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move/from16 v24, v10

    .line 72
    new-instance v10, Ljava/util/ArrayList;

    move/from16 v25, v9

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 74
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v26, v4

    .line 75
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v27, v6

    .line 76
    new-instance v6, Lb/H/b;

    invoke-direct {v6}, Lb/H/b;-><init>()V

    .line 77
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move/from16 v29, v1

    .line 78
    invoke-static/range {v28 .. v28}, Lb/H/a/c/F;->b(I)Landroidx/work/NetworkType;

    move-result-object v1

    .line 79
    invoke-virtual {v6, v1}, Lb/H/b;->a(Landroidx/work/NetworkType;)V

    .line 80
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v28, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 81
    :goto_1
    invoke-virtual {v6, v1}, Lb/H/b;->b(Z)V

    .line 82
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 83
    :goto_2
    invoke-virtual {v6, v1}, Lb/H/b;->c(Z)V

    .line 84
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    .line 85
    :goto_3
    invoke-virtual {v6, v1}, Lb/H/b;->a(Z)V

    .line 86
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    .line 87
    :goto_4
    invoke-virtual {v6, v1}, Lb/H/b;->d(Z)V

    move/from16 v28, v0

    .line 88
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 89
    invoke-virtual {v6, v0, v1}, Lb/H/b;->a(J)V

    .line 90
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 91
    invoke-virtual {v6, v0, v1}, Lb/H/b;->b(J)V

    .line 92
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 93
    invoke-static {v0}, Lb/H/a/c/F;->a([B)Lb/H/c;

    move-result-object v0

    .line 94
    invoke-virtual {v6, v0}, Lb/H/b;->a(Lb/H/c;)V

    .line 95
    new-instance v0, Lb/H/a/c/o;

    invoke-direct {v0, v9, v4}, Lb/H/a/c/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 97
    invoke-static {v1}, Lb/H/a/c/F;->c(I)Landroidx/work/WorkInfo$State;

    move-result-object v1

    iput-object v1, v0, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    .line 98
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/H/a/c/o;->f:Ljava/lang/String;

    .line 99
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 100
    invoke-static {v1}, Lb/H/d;->a([B)Lb/H/d;

    move-result-object v1

    iput-object v1, v0, Lb/H/a/c/o;->g:Lb/H/d;

    move/from16 v1, v25

    .line 101
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 102
    invoke-static {v4}, Lb/H/d;->a([B)Lb/H/d;

    move-result-object v4

    iput-object v4, v0, Lb/H/a/c/o;->h:Lb/H/d;

    move/from16 v25, v1

    move v9, v2

    move/from16 v4, v24

    .line 103
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lb/H/a/c/o;->i:J

    move/from16 v24, v4

    move v2, v5

    move/from16 v1, v23

    .line 104
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lb/H/a/c/o;->j:J

    move/from16 v23, v1

    move v5, v2

    move/from16 v4, v22

    .line 105
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lb/H/a/c/o;->k:J

    move/from16 v1, v21

    .line 106
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lb/H/a/c/o;->m:I

    move/from16 v2, v20

    .line 107
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v21, v1

    .line 108
    invoke-static/range {v20 .. v20}, Lb/H/a/c/F;->a(I)Landroidx/work/BackoffPolicy;

    move-result-object v1

    iput-object v1, v0, Lb/H/a/c/o;->n:Landroidx/work/BackoffPolicy;

    move/from16 v22, v4

    move/from16 v1, v19

    move/from16 v19, v5

    .line 109
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lb/H/a/c/o;->o:J

    move v5, v1

    move/from16 v20, v2

    move/from16 v4, v18

    .line 110
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lb/H/a/c/o;->p:J

    move/from16 v18, v4

    move v2, v5

    move/from16 v1, v17

    .line 111
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lb/H/a/c/o;->q:J

    move/from16 v4, p1

    move/from16 v17, v1

    move v5, v2

    .line 112
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lb/H/a/c/o;->r:J

    .line 113
    iput-object v6, v0, Lb/H/a/c/o;->l:Lb/H/b;

    .line 114
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 p1, v4

    move v2, v9

    move/from16 v4, v26

    move/from16 v6, v27

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v30, v19

    move/from16 v19, v5

    move/from16 v5, v30

    goto/16 :goto_0

    .line 115
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 116
    invoke-virtual/range {v16 .. v16}, Lb/z/x;->c()V

    return-object v10

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    .line 117
    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 118
    invoke-virtual/range {v16 .. v16}, Lb/z/x;->c()V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lb/H/a/c/o$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 29
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    if-nez p1, :cond_0

    .line 30
    invoke-virtual {v1, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v1, v0, p1}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 32
    :goto_0
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v0, "id"

    .line 33
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v2, "state"

    .line 34
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 35
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    new-instance v4, Lb/H/a/c/o$a;

    invoke-direct {v4}, Lb/H/a/c/o$a;-><init>()V

    .line 38
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lb/H/a/c/o$a;->a:Ljava/lang/String;

    .line 39
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 40
    invoke-static {v5}, Lb/H/a/c/F;->c(I)Landroidx/work/WorkInfo$State;

    move-result-object v5

    iput-object v5, v4, Lb/H/a/c/o$a;->b:Landroidx/work/WorkInfo$State;

    .line 41
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 42
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 43
    invoke-virtual {v1}, Lb/z/x;->c()V

    return-object v3

    :catchall_0
    move-exception v0

    .line 44
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 45
    invoke-virtual {v1}, Lb/z/x;->c()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public a(Lb/H/a/c/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lb/H/a/c/z;->b:Lb/z/e;

    invoke-virtual {v0, p1}, Lb/z/e;->a(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    throw p1
.end method

.method public final a(Lb/f/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Lb/f/b;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-virtual {p1}, Lb/f/i;->size()I

    move-result v1

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    if-le v1, v2, :cond_4

    .line 212
    new-instance v0, Lb/f/b;

    invoke-direct {v0, v2}, Lb/f/b;-><init>(I)V

    .line 213
    invoke-virtual {p1}, Lb/f/i;->size()I

    move-result v1

    move-object v5, v0

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x0

    :cond_1
    if-ge v0, v1, :cond_2

    .line 214
    invoke-virtual {p1, v0}, Lb/f/i;->c(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v0}, Lb/f/i;->e(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_1

    .line 215
    invoke-virtual {p0, v5}, Lb/H/a/c/z;->a(Lb/f/b;)V

    .line 216
    new-instance v5, Lb/f/b;

    invoke-direct {v5, v2}, Lb/f/b;-><init>(I)V

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    .line 217
    invoke-virtual {p0, v5}, Lb/H/a/c/z;->a(Lb/f/b;)V

    :cond_3
    return-void

    .line 218
    :cond_4
    invoke-static {}, Lb/z/b/c;->a()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 221
    invoke-static {v1, v2}, Lb/z/b/c;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ")"

    .line 222
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v2, v3

    .line 224
    invoke-static {v1, v2}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    .line 225
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_5

    .line 226
    invoke-virtual {v1, v2}, Lb/z/x;->a(I)V

    goto :goto_2

    .line 227
    :cond_5
    invoke-virtual {v1, v2, v4}, Lb/z/x;->a(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 228
    :cond_6
    iget-object v0, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "work_spec_id"

    .line 229
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 230
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 231
    :cond_7
    :goto_3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 232
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 233
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-virtual {p1, v2}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 235
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 237
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public a(Ljava/lang/String;Lb/H/d;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lb/H/a/c/z;->d:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    const/4 v1, 0x1

    .line 7
    :try_start_0
    invoke-static {p2}, Lb/H/d;->a(Lb/H/d;)[B

    move-result-object p2

    if-nez p2, :cond_0

    .line 8
    invoke-interface {v0, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0, v1, p2}, Lb/C/a/d;->a(I[B)V

    :goto_0
    const/4 p2, 0x2

    if-nez p1, :cond_1

    .line 10
    invoke-interface {v0, p2}, Lb/C/a/d;->a(I)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {v0, p2, p1}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 12
    :goto_1
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 13
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    .line 15
    iget-object p1, p0, Lb/H/a/c/z;->d:Lb/z/C;

    invoke-virtual {p1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 16
    iget-object p2, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->e()V

    .line 17
    iget-object p2, p0, Lb/H/a/c/z;->d:Lb/z/C;

    invoke-virtual {p2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/H/a/c/o;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM workspec WHERE state=0"

    .line 24
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    move-object/from16 v2, p0

    .line 25
    iget-object v3, v2, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v4, "id"

    .line 26
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "state"

    .line 27
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "worker_class_name"

    .line 28
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    .line 29
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    .line 30
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    .line 31
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    .line 32
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    .line 33
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    .line 34
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "run_attempt_count"

    .line 35
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    .line 36
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    .line 37
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v0, "period_start_time"

    .line 38
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v2, "minimum_retention_duration"

    .line 39
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "schedule_requested_at"

    .line 40
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "required_network_type"

    .line 41
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v2

    const-string v2, "requires_charging"

    .line 42
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v0

    const-string v0, "requires_device_idle"

    .line 43
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v15

    const-string v15, "requires_battery_not_low"

    .line 44
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v14

    const-string v14, "requires_storage_not_low"

    .line 45
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move/from16 v22, v13

    const-string v13, "trigger_content_update_delay"

    .line 46
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move/from16 v23, v12

    const-string v12, "trigger_max_content_delay"

    .line 47
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move/from16 v24, v11

    const-string v11, "content_uri_triggers"

    .line 48
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move/from16 v25, v10

    .line 49
    new-instance v10, Ljava/util/ArrayList;

    move/from16 v26, v9

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 51
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v27, v4

    .line 52
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v28, v6

    .line 53
    new-instance v6, Lb/H/b;

    invoke-direct {v6}, Lb/H/b;-><init>()V

    .line 54
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v30, v1

    .line 55
    invoke-static/range {v29 .. v29}, Lb/H/a/c/F;->b(I)Landroidx/work/NetworkType;

    move-result-object v1

    .line 56
    invoke-virtual {v6, v1}, Lb/H/b;->a(Landroidx/work/NetworkType;)V

    .line 57
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v29, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 58
    :goto_1
    invoke-virtual {v6, v1}, Lb/H/b;->b(Z)V

    .line 59
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 60
    :goto_2
    invoke-virtual {v6, v1}, Lb/H/b;->c(Z)V

    .line 61
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    .line 62
    :goto_3
    invoke-virtual {v6, v1}, Lb/H/b;->a(Z)V

    .line 63
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    .line 64
    :goto_4
    invoke-virtual {v6, v1}, Lb/H/b;->d(Z)V

    move/from16 v29, v0

    .line 65
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 66
    invoke-virtual {v6, v0, v1}, Lb/H/b;->a(J)V

    .line 67
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 68
    invoke-virtual {v6, v0, v1}, Lb/H/b;->b(J)V

    .line 69
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 70
    invoke-static {v0}, Lb/H/a/c/F;->a([B)Lb/H/c;

    move-result-object v0

    .line 71
    invoke-virtual {v6, v0}, Lb/H/b;->a(Lb/H/c;)V

    .line 72
    new-instance v0, Lb/H/a/c/o;

    invoke-direct {v0, v9, v4}, Lb/H/a/c/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 74
    invoke-static {v1}, Lb/H/a/c/F;->c(I)Landroidx/work/WorkInfo$State;

    move-result-object v1

    iput-object v1, v0, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    .line 75
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/H/a/c/o;->f:Ljava/lang/String;

    .line 76
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 77
    invoke-static {v1}, Lb/H/d;->a([B)Lb/H/d;

    move-result-object v1

    iput-object v1, v0, Lb/H/a/c/o;->g:Lb/H/d;

    move/from16 v1, v26

    .line 78
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 79
    invoke-static {v4}, Lb/H/d;->a([B)Lb/H/d;

    move-result-object v4

    iput-object v4, v0, Lb/H/a/c/o;->h:Lb/H/d;

    move/from16 v26, v1

    move v9, v2

    move/from16 v4, v25

    .line 80
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lb/H/a/c/o;->i:J

    move/from16 v25, v4

    move v2, v5

    move/from16 v1, v24

    .line 81
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lb/H/a/c/o;->j:J

    move/from16 v24, v1

    move v5, v2

    move/from16 v4, v23

    .line 82
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lb/H/a/c/o;->k:J

    move/from16 v1, v22

    .line 83
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lb/H/a/c/o;->m:I

    move/from16 v2, v21

    .line 84
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v22, v1

    .line 85
    invoke-static/range {v21 .. v21}, Lb/H/a/c/F;->a(I)Landroidx/work/BackoffPolicy;

    move-result-object v1

    iput-object v1, v0, Lb/H/a/c/o;->n:Landroidx/work/BackoffPolicy;

    move/from16 v23, v4

    move/from16 v1, v20

    move/from16 v20, v5

    .line 86
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lb/H/a/c/o;->o:J

    move v5, v1

    move/from16 v21, v2

    move/from16 v4, v19

    .line 87
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lb/H/a/c/o;->p:J

    move/from16 v19, v4

    move v2, v5

    move/from16 v1, v18

    .line 88
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lb/H/a/c/o;->q:J

    move/from16 v18, v1

    move v5, v2

    move/from16 v4, v17

    .line 89
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lb/H/a/c/o;->r:J

    .line 90
    iput-object v6, v0, Lb/H/a/c/o;->l:Lb/H/b;

    .line 91
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v17, v4

    move v2, v9

    move/from16 v4, v27

    move/from16 v6, v28

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v31, v20

    move/from16 v20, v5

    move/from16 v5, v31

    goto/16 :goto_0

    .line 92
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 93
    invoke-virtual/range {v16 .. v16}, Lb/z/x;->c()V

    return-object v10

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    .line 94
    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 95
    invoke-virtual/range {v16 .. v16}, Lb/z/x;->c()V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 12
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    if-nez p1, :cond_0

    .line 13
    invoke-virtual {v1, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1, v0, p1}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 15
    :goto_0
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object p1

    .line 16
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 18
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 20
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 21
    invoke-virtual {v1}, Lb/z/x;->c()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 22
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 23
    invoke-virtual {v1}, Lb/z/x;->c()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public b(Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/H/a/c/z;->e:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-interface {v0, v1, p2, p3}, Lb/C/a/d;->a(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 4
    invoke-interface {v0, p2}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p2, p1}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 6
    :goto_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 7
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    .line 9
    iget-object p1, p0, Lb/H/a/c/z;->e:Lb/z/C;

    invoke-virtual {p1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object p2, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->e()V

    .line 11
    iget-object p2, p0, Lb/H/a/c/z;->e:Lb/z/C;

    invoke-virtual {p2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)Landroidx/work/WorkInfo$State;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "SELECT state FROM workspec WHERE id=?"

    .line 1
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, v0, p1}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 7
    invoke-static {v0}, Lb/H/a/c/F;->c(I)Landroidx/work/WorkInfo$State;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v1}, Lb/z/x;->c()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v1}, Lb/z/x;->c()V

    throw v0
.end method

.method public c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    .line 12
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object v2

    .line 14
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 16
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 19
    invoke-virtual {v1}, Lb/z/x;->c()V

    return-object v3

    :catchall_0
    move-exception v0

    .line 20
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 21
    invoke-virtual {v1}, Lb/z/x;->c()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public d()I
    .locals 3

    .line 1
    iget-object v0, p0, Lb/H/a/c/z;->i:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    move-result v1

    .line 4
    iget-object v2, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v2, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e()V

    .line 6
    iget-object v2, p0, Lb/H/a/c/z;->i:Lb/z/C;

    invoke-virtual {v2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return v1

    :catchall_0
    move-exception v1

    .line 7
    iget-object v2, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e()V

    .line 8
    iget-object v2, p0, Lb/H/a/c/z;->i:Lb/z/C;

    invoke-virtual {v2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    throw v1
.end method

.method public d(Ljava/lang/String;)Lb/H/a/c/o;
    .locals 25

    move-object/from16 v0, p1

    const/4 v1, 0x1

    const-string v2, "SELECT * FROM workspec WHERE id=?"

    .line 9
    invoke-static {v2, v1}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v2

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {v2, v1}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v2, v1, v0}, Lb/z/x;->a(ILjava/lang/String;)V

    :goto_0
    move-object/from16 v3, p0

    .line 12
    iget-object v0, v3, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    .line 13
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v5, "state"

    .line 14
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "worker_class_name"

    .line 15
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    .line 16
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    .line 17
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    .line 18
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    .line 19
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    .line 20
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    .line 21
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "run_attempt_count"

    .line 22
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    .line 23
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    .line 24
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v1, "period_start_time"

    .line 25
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v3, "minimum_retention_duration"

    .line 26
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "schedule_requested_at"

    .line 27
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "required_network_type"

    .line 28
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v3

    const-string v3, "requires_charging"

    .line 29
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v1

    const-string v1, "requires_device_idle"

    .line 30
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v15

    const-string v15, "requires_battery_not_low"

    .line 31
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v14

    const-string v14, "requires_storage_not_low"

    .line 32
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move/from16 v21, v13

    const-string v13, "trigger_content_update_delay"

    .line 33
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move/from16 v22, v12

    const-string v12, "trigger_max_content_delay"

    .line 34
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move/from16 v23, v11

    const-string v11, "content_uri_triggers"

    .line 35
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 36
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 37
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v24, v10

    .line 39
    new-instance v10, Lb/H/b;

    invoke-direct {v10}, Lb/H/b;-><init>()V

    .line 40
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 41
    invoke-static {v2}, Lb/H/a/c/F;->b(I)Landroidx/work/NetworkType;

    move-result-object v2

    .line 42
    invoke-virtual {v10, v2}, Lb/H/b;->a(Landroidx/work/NetworkType;)V

    .line 43
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 44
    :goto_1
    invoke-virtual {v10, v2}, Lb/H/b;->b(Z)V

    .line 45
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_2
    invoke-virtual {v10, v1}, Lb/H/b;->c(Z)V

    .line 47
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 48
    :goto_3
    invoke-virtual {v10, v1}, Lb/H/b;->a(Z)V

    .line 49
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    .line 50
    :cond_4
    invoke-virtual {v10, v3}, Lb/H/b;->d(Z)V

    .line 51
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 52
    invoke-virtual {v10, v1, v2}, Lb/H/b;->a(J)V

    .line 53
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 54
    invoke-virtual {v10, v1, v2}, Lb/H/b;->b(J)V

    .line 55
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 56
    invoke-static {v1}, Lb/H/a/c/F;->a([B)Lb/H/c;

    move-result-object v1

    .line 57
    invoke-virtual {v10, v1}, Lb/H/b;->a(Lb/H/c;)V

    .line 58
    new-instance v1, Lb/H/a/c/o;

    invoke-direct {v1, v0, v6}, Lb/H/a/c/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 60
    invoke-static {v0}, Lb/H/a/c/F;->c(I)Landroidx/work/WorkInfo$State;

    move-result-object v0

    iput-object v0, v1, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    .line 61
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lb/H/a/c/o;->f:Ljava/lang/String;

    .line 62
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 63
    invoke-static {v0}, Lb/H/d;->a([B)Lb/H/d;

    move-result-object v0

    iput-object v0, v1, Lb/H/a/c/o;->g:Lb/H/d;

    .line 64
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 65
    invoke-static {v0}, Lb/H/d;->a([B)Lb/H/d;

    move-result-object v0

    iput-object v0, v1, Lb/H/a/c/o;->h:Lb/H/d;

    move/from16 v0, v24

    .line 66
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lb/H/a/c/o;->i:J

    move/from16 v0, v23

    .line 67
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lb/H/a/c/o;->j:J

    move/from16 v0, v22

    .line 68
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lb/H/a/c/o;->k:J

    move/from16 v0, v21

    .line 69
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lb/H/a/c/o;->m:I

    move/from16 v0, v20

    .line 70
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 71
    invoke-static {v0}, Lb/H/a/c/F;->a(I)Landroidx/work/BackoffPolicy;

    move-result-object v0

    iput-object v0, v1, Lb/H/a/c/o;->n:Landroidx/work/BackoffPolicy;

    move/from16 v0, v19

    .line 72
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lb/H/a/c/o;->o:J

    move/from16 v0, v18

    .line 73
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lb/H/a/c/o;->p:J

    move/from16 v0, v17

    .line 74
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lb/H/a/c/o;->q:J

    move/from16 v0, p1

    .line 75
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lb/H/a/c/o;->r:J

    .line 76
    iput-object v10, v1, Lb/H/a/c/o;->l:Lb/H/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 77
    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 78
    invoke-virtual/range {v16 .. v16}, Lb/z/x;->c()V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 79
    :goto_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 80
    invoke-virtual/range {v16 .. v16}, Lb/z/x;->c()V

    throw v0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/H/a/c/z;->c:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 6
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    .line 8
    iget-object p1, p0, Lb/H/a/c/z;->c:Lb/z/C;

    invoke-virtual {p1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object v1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 10
    iget-object v1, p0, Lb/H/a/c/z;->c:Lb/z/C;

    invoke-virtual {v1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    throw p1
.end method

.method public e(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/H/a/c/z;->g:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    move-result p1

    .line 6
    iget-object v1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 8
    iget-object v1, p0, Lb/H/a/c/z;->g:Lb/z/C;

    invoke-virtual {v1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return p1

    :catchall_0
    move-exception p1

    .line 9
    iget-object v1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 10
    iget-object v1, p0, Lb/H/a/c/z;->g:Lb/z/C;

    invoke-virtual {v1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    throw p1
.end method

.method public f(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 1
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, v0, p1}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object p1

    .line 5
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v1}, Lb/z/x;->c()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v1}, Lb/z/x;->c()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public g(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lb/H/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 1
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, v0, p1}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object p1

    .line 5
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 8
    invoke-static {v2}, Lb/H/d;->a([B)Lb/H/d;

    move-result-object v2

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v1}, Lb/z/x;->c()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 12
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-virtual {v1}, Lb/z/x;->c()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public h(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/H/a/c/z;->f:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    move-result p1

    .line 6
    iget-object v1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 8
    iget-object v1, p0, Lb/H/a/c/z;->f:Lb/z/C;

    invoke-virtual {v1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return p1

    :catchall_0
    move-exception p1

    .line 9
    iget-object v1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 10
    iget-object v1, p0, Lb/H/a/c/z;->f:Lb/z/C;

    invoke-virtual {v1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    throw p1
.end method

.method public i(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lb/H/a/c/o$b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT id, state, output FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 1
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, v0, p1}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->c()V

    .line 5
    :try_start_0
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    new-instance v0, Lb/f/b;

    invoke-direct {v0}, Lb/f/b;-><init>()V

    const-string v2, "id"

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "state"

    .line 8
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "output"

    .line 9
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 10
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 12
    new-instance v6, Lb/H/a/c/o$b;

    invoke-direct {v6}, Lb/H/a/c/o$b;-><init>()V

    .line 13
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lb/H/a/c/o$b;->a:Ljava/lang/String;

    .line 14
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 15
    invoke-static {v7}, Lb/H/a/c/F;->c(I)Landroidx/work/WorkInfo$State;

    move-result-object v7

    iput-object v7, v6, Lb/H/a/c/o$b;->b:Landroidx/work/WorkInfo$State;

    .line 16
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 17
    invoke-static {v7}, Lb/H/d;->a([B)Lb/H/d;

    move-result-object v7

    iput-object v7, v6, Lb/H/a/c/o$b;->c:Lb/H/d;

    .line 18
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 19
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-virtual {v0, v7}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_1

    .line 21
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {v0, v7, v8}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_1
    iput-object v8, v6, Lb/H/a/c/o$b;->d:Ljava/util/List;

    .line 24
    :cond_2
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {p0, v0}, Lb/H/a/c/z;->a(Lb/f/b;)V

    .line 26
    iget-object v0, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 28
    invoke-virtual {v1}, Lb/z/x;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    iget-object p1, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-object v5

    :catchall_0
    move-exception v0

    .line 30
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 31
    invoke-virtual {v1}, Lb/z/x;->c()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 32
    iget-object v0, p0, Lb/H/a/c/z;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
