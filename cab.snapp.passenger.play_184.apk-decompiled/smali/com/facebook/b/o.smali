.class public abstract Lcom/facebook/b/o;
.super Lcom/facebook/b/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/b/o$e;,
        Lcom/facebook/b/o$d;,
        Lcom/facebook/b/o$c;,
        Lcom/facebook/b/o$b;,
        Lcom/facebook/b/o$a;
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Landroid/content/Context;

.field protected g:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-static {p1, p2}, Lcom/facebook/b/o;->getSoStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/facebook/b/d;-><init>(Ljava/io/File;I)V

    .line 58
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/facebook/b/o;->d:Ljava/util/Map;

    .line 62
    iput-object p1, p0, Lcom/facebook/b/o;->f:Landroid/content/Context;

    return-void
.end method

.method private a(BLcom/facebook/b/o$b;Lcom/facebook/b/o$d;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "regenerating DSO store "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    const-string v2, "dso_manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 257
    :try_start_0
    invoke-static {v1}, Lcom/facebook/b/o$b;->a(Ljava/io/DataInput;)Lcom/facebook/b/o$b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    nop

    :cond_0
    :goto_0
    const/4 p1, 0x0

    if-nez v0, :cond_1

    .line 264
    :try_start_1
    new-instance v0, Lcom/facebook/b/o$b;

    new-array v4, p1, [Lcom/facebook/b/o$a;

    invoke-direct {v0, v4}, Lcom/facebook/b/o$b;-><init>([Lcom/facebook/b/o$a;)V

    .line 267
    :cond_1
    iget-object p2, p2, Lcom/facebook/b/o$b;->dsos:[Lcom/facebook/b/o$a;

    invoke-direct {p0, p2}, Lcom/facebook/b/o;->a([Lcom/facebook/b/o$a;)V

    const p2, 0x8000

    new-array p2, p2, [B

    .line 269
    :cond_2
    :goto_1
    invoke-virtual {p3}, Lcom/facebook/b/o$d;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 270
    invoke-virtual {p3}, Lcom/facebook/b/o$d;->next()Lcom/facebook/b/o$c;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 272
    :try_start_2
    iget-object v7, v0, Lcom/facebook/b/o$b;->dsos:[Lcom/facebook/b/o$a;

    array-length v7, v7

    if-ge v6, v7, :cond_4

    .line 273
    iget-object v7, v0, Lcom/facebook/b/o$b;->dsos:[Lcom/facebook/b/o$a;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/facebook/b/o$a;->name:Ljava/lang/String;

    iget-object v8, v4, Lcom/facebook/b/o$c;->dso:Lcom/facebook/b/o$a;

    iget-object v8, v8, Lcom/facebook/b/o$a;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/facebook/b/o$b;->dsos:[Lcom/facebook/b/o$a;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/facebook/b/o$a;->hash:Ljava/lang/String;

    iget-object v8, v4, Lcom/facebook/b/o$c;->dso:Lcom/facebook/b/o$a;

    iget-object v8, v8, Lcom/facebook/b/o$a;->hash:Ljava/lang/String;

    .line 274
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v5, 0x0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :cond_4
    if-eqz v5, :cond_9

    .line 1214
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "extracting DSO "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/facebook/b/o$c;->dso:Lcom/facebook/b/o$a;

    iget-object v6, v6, Lcom/facebook/b/o$a;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    iget-object v5, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-virtual {v5, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1218
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    iget-object v7, v4, Lcom/facebook/b/o$c;->dso:Lcom/facebook/b/o$a;

    iget-object v7, v7, Lcom/facebook/b/o$a;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1221
    :try_start_3
    new-instance v6, Ljava/io/RandomAccessFile;

    invoke-direct {v6, v5, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 1223
    :catch_1
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error overwriting "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " trying to delete and start over"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    invoke-static {v5}, Lcom/facebook/b/m;->dumbDeleteRecursive(Ljava/io/File;)V

    .line 1225
    new-instance v6, Ljava/io/RandomAccessFile;

    invoke-direct {v6, v5, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1229
    :goto_3
    :try_start_5
    iget-object v7, v4, Lcom/facebook/b/o$c;->content:Ljava/io/InputStream;

    .line 1230
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v7

    if-le v7, v3, :cond_5

    .line 1232
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    int-to-long v9, v7

    invoke-static {v8, v9, v10}, Lcom/facebook/b/m;->fallocateIfSupported(Ljava/io/FileDescriptor;J)V

    .line 1234
    :cond_5
    iget-object v7, v4, Lcom/facebook/b/o$c;->content:Ljava/io/InputStream;

    invoke-static {v6, v7, p2}, Lcom/facebook/b/m;->a(Ljava/io/RandomAccessFile;Ljava/io/InputStream;[B)I

    .line 1235
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 1236
    invoke-virtual {v5, v3, p1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v7, :cond_6

    .line 1243
    :try_start_6
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    .line 1237
    :cond_6
    :try_start_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "cannot make file executable: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    .line 1240
    :try_start_8
    invoke-static {v5}, Lcom/facebook/b/m;->dumbDeleteRecursive(Ljava/io/File;)V

    .line 1241
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1243
    :goto_4
    :try_start_9
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 1244
    throw p1

    .line 1216
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "cannot make directory writable for us: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 270
    :goto_5
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception p1

    if-eqz v4, :cond_8

    .line 281
    :try_start_b
    invoke-virtual {v4}, Lcom/facebook/b/o$c;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    :cond_8
    :try_start_c
    throw p1

    :cond_9
    :goto_6
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/facebook/b/o$c;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 283
    :cond_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Finished regenerating DSO store "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 253
    :goto_7
    :try_start_d
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception p1

    .line 283
    :try_start_e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method static a(Ljava/io/File;B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 173
    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 174
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 175
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 176
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 172
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    .line 177
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    throw p0
.end method

.method private a([Lcom/facebook/b/o$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 189
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 190
    aget-object v3, v0, v2

    const-string v4, "dso_state"

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "dso_lock"

    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "dso_deps"

    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "dso_manifest"

    .line 194
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-nez v4, :cond_1

    .line 199
    array-length v6, p1

    if-ge v5, v6, :cond_1

    .line 200
    aget-object v6, p1, v5

    iget-object v6, v6, Lcom/facebook/b/o$a;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    .line 206
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "deleting unaccounted-for file "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    invoke-static {v4}, Lcom/facebook/b/m;->dumbDeleteRecursive(Ljava/io/File;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 186
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to list directory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private a(Lcom/facebook/b/g;I[B)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    const-string v1, "dso_state"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v5, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 295
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    if-eq v3, v7, :cond_0

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dso store "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " regeneration interrupted: wiping clean"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 293
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 303
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    throw p1

    :catch_0
    :goto_0
    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 305
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    const-string v6, "dso_deps"

    invoke-direct {v4, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 307
    new-instance v6, Ljava/io/RandomAccessFile;

    invoke-direct {v6, v4, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 308
    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v1, v8

    new-array v1, v1, [B

    .line 309
    invoke-virtual {v6, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v8

    array-length v9, v1

    if-eq v8, v9, :cond_1

    const/4 v3, 0x0

    .line 314
    :cond_1
    invoke-static {v1, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v3, 0x0

    :cond_2
    if-eqz v3, :cond_4

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v8, v0

    goto :goto_2

    .line 321
    :cond_4
    :goto_1
    invoke-static {v5, v2}, Lcom/facebook/b/o;->a(Ljava/io/File;B)V

    .line 323
    invoke-virtual {p0}, Lcom/facebook/b/o;->a()Lcom/facebook/b/o$e;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    .line 324
    :try_start_4
    invoke-virtual {v0}, Lcom/facebook/b/o$e;->a()Lcom/facebook/b/o$b;

    move-result-object v1

    .line 325
    invoke-virtual {v0}, Lcom/facebook/b/o$e;->b()Lcom/facebook/b/o$d;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 326
    :try_start_5
    invoke-direct {p0, v3, v1, v8}, Lcom/facebook/b/o;->a(BLcom/facebook/b/o$b;Lcom/facebook/b/o$d;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 327
    :try_start_6
    invoke-virtual {v8}, Lcom/facebook/b/o$d;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 328
    :try_start_7
    invoke-virtual {v0}, Lcom/facebook/b/o$e;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    move-object v8, v1

    .line 330
    :goto_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    if-nez v8, :cond_5

    return v2

    .line 338
    :cond_5
    new-instance v9, Lcom/facebook/b/o$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v4

    move-object v3, p3

    move-object v4, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/b/o$1;-><init>(Lcom/facebook/b/o;Ljava/io/File;[BLcom/facebook/b/o$b;Ljava/io/File;Lcom/facebook/b/g;)V

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_6

    .line 375
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SoSync:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v9, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_3

    .line 377
    :cond_6
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    :goto_3
    return v7

    :catchall_3
    move-exception p1

    .line 325
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    .line 327
    :try_start_9
    invoke-virtual {v8}, Lcom/facebook/b/o$d;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception p1

    .line 323
    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception p1

    .line 328
    :try_start_c
    invoke-virtual {v0}, Lcom/facebook/b/o$e;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :catchall_8
    :try_start_d
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :catchall_9
    move-exception p1

    .line 307
    :try_start_e
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    :catchall_a
    move-exception p1

    .line 330
    :try_start_f
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    :catchall_b
    throw p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/facebook/b/o;->d:Ljava/util/Map;

    monitor-enter v0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/facebook/b/o;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 440
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 441
    iget-object v2, p0, Lcom/facebook/b/o;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 444
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getSoStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 71
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected abstract a()Lcom/facebook/b/o$e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final a(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "releasing dso store lock for "

    const-string v1, " (syncer thread started)"

    const-string v2, "not releasing dso store lock for "

    .line 415
    iget-object v3, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    .line 2148
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 2149
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cannot mkdir: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 416
    :cond_1
    :goto_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    const-string v5, "dso_lock"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 417
    invoke-static {v3}, Lcom/facebook/b/g;->lock(Ljava/io/File;)Lcom/facebook/b/g;

    move-result-object v3

    .line 419
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "locked dso store "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {p0}, Lcom/facebook/b/o;->b()[B

    move-result-object v4

    invoke-direct {p0, v3, p1, v4}, Lcom/facebook/b/o;->a(Lcom/facebook/b/g;I[B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    .line 423
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "dso store is up-to-date: "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v3, :cond_3

    .line 427
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v3}, Lcom/facebook/b/g;->close()V

    return-void

    .line 430
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catchall_0
    move-exception p1

    if-eqz v3, :cond_4

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v3}, Lcom/facebook/b/g;->close()V

    goto :goto_2

    .line 430
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :goto_2
    throw p1
.end method

.method protected final declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 450
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/b/o;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 451
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 453
    :try_start_1
    iput-object p1, p0, Lcom/facebook/b/o;->g:Ljava/lang/String;

    const/4 p1, 0x2

    .line 454
    invoke-virtual {p0, p1}, Lcom/facebook/b/o;->a(I)V

    .line 455
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected b()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 396
    invoke-virtual {p0}, Lcom/facebook/b/o;->a()Lcom/facebook/b/o$e;

    move-result-object v1

    .line 397
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/b/o$e;->a()Lcom/facebook/b/o$b;

    move-result-object v2

    iget-object v2, v2, Lcom/facebook/b/o$b;->dsos:[Lcom/facebook/b/o$a;

    const/4 v3, 0x1

    .line 398
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 399
    array-length v3, v2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    .line 400
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 401
    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/facebook/b/o$a;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/facebook/b/o$a;->hash:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/b/o$e;->close()V

    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v0

    .line 396
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 404
    :try_start_2
    invoke-virtual {v1}, Lcom/facebook/b/o$e;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getSoSourceAbis()[Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/facebook/b/o;->a:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    invoke-super {p0}, Lcom/facebook/b/d;->getSoSourceAbis()[Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    invoke-direct {p0, p1}, Lcom/facebook/b/o;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 462
    monitor-enter v0

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/facebook/b/o;->a(Ljava/lang/String;ILjava/io/File;Landroid/os/StrictMode$ThreadPolicy;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 466
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSoSourceAbis([Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/facebook/b/o;->a:[Ljava/lang/String;

    return-void
.end method
