.class public final Lorg/eclipse/paho/a/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/m;


# static fields
.field private static d:Ljava/io/FilenameFilter;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/File;

.field private c:Lorg/eclipse/paho/a/a/a/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "user.dir"

    .line 64
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/paho/a/a/c/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    .line 51
    iput-object v0, p0, Lorg/eclipse/paho/a/a/c/b;->c:Lorg/eclipse/paho/a/a/a/j;

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/c/b;->a:Ljava/io/File;

    return-void
.end method

.method private static a()Ljava/io/FilenameFilter;
    .locals 2

    .line 57
    sget-object v0, Lorg/eclipse/paho/a/a/c/b;->d:Ljava/io/FilenameFilter;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/eclipse/paho/a/a/c/d;

    const-string v1, ".msg"

    invoke-direct {v0, v1}, Lorg/eclipse/paho/a/a/c/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/paho/a/a/c/b;->d:Ljava/io/FilenameFilter;

    .line 60
    :cond_0
    sget-object v0, Lorg/eclipse/paho/a/a/c/b;->d:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method private static a(Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 277
    new-instance v0, Lorg/eclipse/paho/a/a/c/c;

    const-string v1, ".bup"

    invoke-direct {v0, v1}, Lorg/eclipse/paho/a/a/c/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 283
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    return-void

    .line 284
    :cond_0
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    aget-object v4, v0, v2

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 287
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 288
    aget-object v4, v0, v2

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    :cond_2
    new-instance p0, Lorg/eclipse/paho/a/a/s;

    invoke-direct {p0}, Lorg/eclipse/paho/a/a/s;-><init>()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static a(C)Z
    .locals 1

    .line 266
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    new-instance v0, Lorg/eclipse/paho/a/a/s;

    invoke-direct {v0}, Lorg/eclipse/paho/a/a/s;-><init>()V

    throw v0
.end method

.method private c()[Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 257
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/c/b;->b()V

    .line 258
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    invoke-static {}, Lorg/eclipse/paho/a/a/c/b;->a()Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 260
    :cond_0
    new-instance v0, Lorg/eclipse/paho/a/a/s;

    invoke-direct {v0}, Lorg/eclipse/paho/a/a/s;-><init>()V

    throw v0
.end method


# virtual methods
.method public final clear()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 300
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/c/b;->b()V

    .line 301
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/c/b;->c()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 302
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 305
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    .line 303
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 146
    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/b;->c:Lorg/eclipse/paho/a/a/a/j;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/b;->c:Lorg/eclipse/paho/a/a/a/j;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/j;->release()V

    .line 152
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/c/b;->c()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final containsKey(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 294
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/c/b;->b()V

    .line 295
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".msg"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public final get(Ljava/lang/String;)Lorg/eclipse/paho/a/a/r;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/c/b;->b()V

    .line 210
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 212
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v6

    .line 213
    new-array v4, v6, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v6, :cond_0

    .line 218
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 219
    new-instance v0, Lorg/eclipse/paho/a/a/a/m;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lorg/eclipse/paho/a/a/a/m;-><init>(Ljava/lang/String;[BII[BII)V

    return-object v0

    :cond_0
    sub-int v2, v6, v0

    .line 216
    invoke-virtual {v1, v4, v0, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    new-instance v0, Lorg/eclipse/paho/a/a/s;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/a/a/s;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final keys()Ljava/util/Enumeration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/c/b;->b()V

    .line 246
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/c/b;->c()[Ljava/io/File;

    move-result-object v0

    .line 247
    new-instance v1, Ljava/util/Vector;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 248
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_0

    .line 253
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 249
    :cond_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 251
    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance p1, Lorg/eclipse/paho/a/a/s;

    invoke-direct {p1}, Lorg/eclipse/paho/a/a/s;-><init>()V

    throw p1

    .line 79
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 81
    :cond_2
    new-instance p1, Lorg/eclipse/paho/a/a/s;

    invoke-direct {p1}, Lorg/eclipse/paho/a/a/s;-><init>()V

    throw p1

    .line 84
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 90
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_8

    const-string p1, "-"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lt v1, p1, :cond_6

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    if-nez p1, :cond_4

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/b;->a:Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    .line 109
    iget-object p1, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    .line 110
    iget-object p1, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_4
    :try_start_1
    iget-object p1, p0, Lorg/eclipse/paho/a/a/c/b;->c:Lorg/eclipse/paho/a/a/a/j;

    if-eqz p1, :cond_5

    .line 117
    iget-object p1, p0, Lorg/eclipse/paho/a/a/c/b;->c:Lorg/eclipse/paho/a/a/a/j;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/j;->release()V

    .line 120
    :cond_5
    new-instance p1, Lorg/eclipse/paho/a/a/a/j;

    iget-object p2, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    const-string v0, ".lck"

    invoke-direct {p1, p2, v0}, Lorg/eclipse/paho/a/a/a/j;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/eclipse/paho/a/a/c/b;->c:Lorg/eclipse/paho/a/a/a/j;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :catch_0
    :try_start_2
    iget-object p1, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    invoke-static {p1}, Lorg/eclipse/paho/a/a/c/b;->a(Ljava/io/File;)V

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 98
    :cond_6
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 99
    invoke-static {p1}, Lorg/eclipse/paho/a/a/c/b;->a(C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 91
    :cond_8
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 92
    invoke-static {v3}, Lorg/eclipse/paho/a/a/c/b;->a(C)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 85
    :cond_a
    new-instance p1, Lorg/eclipse/paho/a/a/s;

    invoke-direct {p1}, Lorg/eclipse/paho/a/a/s;-><init>()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final put(Ljava/lang/String;Lorg/eclipse/paho/a/a/r;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/c/b;->b()V

    .line 167
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".msg.bup"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 174
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 175
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 179
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 180
    invoke-interface {p2}, Lorg/eclipse/paho/a/a/r;->getHeaderBytes()[B

    move-result-object v2

    invoke-interface {p2}, Lorg/eclipse/paho/a/a/r;->getHeaderOffset()I

    move-result v3

    invoke-interface {p2}, Lorg/eclipse/paho/a/a/r;->getHeaderLength()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 181
    invoke-interface {p2}, Lorg/eclipse/paho/a/a/r;->getPayloadBytes()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 182
    invoke-interface {p2}, Lorg/eclipse/paho/a/a/r;->getPayloadBytes()[B

    move-result-object v2

    invoke-interface {p2}, Lorg/eclipse/paho/a/a/r;->getPayloadOffset()I

    move-result v3

    invoke-interface {p2}, Lorg/eclipse/paho/a/a/r;->getPayloadLength()I

    move-result p2

    invoke-virtual {p1, v2, v3, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 184
    :cond_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V

    .line 185
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 186
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 197
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 200
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 192
    :try_start_1
    new-instance p2, Lorg/eclipse/paho/a/a/s;

    invoke-direct {p2, p1}, Lorg/eclipse/paho/a/a/s;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 197
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 200
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 203
    :cond_4
    throw p1
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/c/b;->b()V

    .line 233
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/c/b;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".msg"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method
