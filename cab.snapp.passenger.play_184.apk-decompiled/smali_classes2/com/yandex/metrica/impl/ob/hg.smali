.class public Lcom/yandex/metrica/impl/ob/hg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/hg$c;,
        Lcom/yandex/metrica/impl/ob/hg$a;,
        Lcom/yandex/metrica/impl/ob/hg$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/yandex/metrica/impl/ob/hg$a;

.field private final c:Lcom/yandex/metrica/impl/ob/hi;

.field private d:Lcom/yandex/metrica/impl/ob/hf;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hg;->a:Ljava/lang/Object;

    .line 70
    new-instance v0, Lcom/yandex/metrica/impl/ob/hg$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/hg$a;-><init>(Lcom/yandex/metrica/impl/ob/hg;B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hg;->b:Lcom/yandex/metrica/impl/ob/hg$a;

    .line 71
    new-instance v0, Lcom/yandex/metrica/impl/ob/hi;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/hi;-><init>(Lcom/yandex/metrica/impl/ob/hg;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hg;->c:Lcom/yandex/metrica/impl/ob/hi;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/hg;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/yandex/metrica/impl/ob/hf;
    .locals 2

    .line 147
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    .line 149
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1185
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/hg;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/hf;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/hg;
    .locals 1

    .line 65
    invoke-static {}, Lcom/yandex/metrica/impl/ob/hg$b;->a()Lcom/yandex/metrica/impl/ob/hg;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/hb;
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hg;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hg;->c()Lcom/yandex/metrica/impl/ob/hf;

    move-result-object v1

    if-nez v1, :cond_4

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/yandex/metrica/impl/ob/hg;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/hf;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 254
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hg;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/yandex/metrica/impl/ob/hg;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/hf;

    move-result-object v2

    .line 256
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/hf;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/hf;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ob/hg;->a(Lcom/yandex/metrica/impl/ob/hf;)V

    .line 258
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/hf;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v1

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hg;->b()Lcom/yandex/metrica/impl/ob/hg$a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hf;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/yandex/metrica/impl/ob/hg$a;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v1

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hf;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ob/hg;->a(Lcom/yandex/metrica/impl/ob/hf;)V

    .line 266
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hf;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v1

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hg;->b()Lcom/yandex/metrica/impl/ob/hg$a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hf;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/yandex/metrica/impl/ob/hg$a;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v1

    goto :goto_0

    .line 273
    :cond_3
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hg;->b()Lcom/yandex/metrica/impl/ob/hg$a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/yandex/metrica/impl/ob/hg$a;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v1

    goto :goto_0

    .line 276
    :cond_4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hg;->c()Lcom/yandex/metrica/impl/ob/hf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hf;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v1

    .line 278
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    .line 1293
    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/hb;->b:Ljava/lang/String;

    .line 1294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/hb;->b:Ljava/lang/String;

    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/hb;->b:Ljava/lang/String;

    .line 1295
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    .line 1296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1298
    :cond_5
    new-instance v0, Lcom/yandex/metrica/impl/ob/hb;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/hb;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/yandex/metrica/impl/ob/hb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/hg;->b(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)V

    return-object v0

    :cond_6
    return-object v1

    :catchall_0
    move-exception p1

    .line 278
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/hf;
    .locals 5

    const/4 v0, 0x0

    .line 165
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 167
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/hg;->a:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :try_start_1
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/w;->a(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 169
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    return-object v0

    .line 170
    :cond_0
    :try_start_2
    new-instance p2, Lcom/yandex/metrica/impl/ob/hf;

    new-instance v2, Lorg/a/c;

    invoke-direct {v2, p1}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {p2, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/hf;-><init>(Lorg/a/c;J)V
    :try_end_2
    .catch Lorg/a/b; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p2

    :catchall_0
    move-exception p1

    .line 169
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Lorg/a/b; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hb;
    .locals 2

    .line 242
    new-instance v0, Lcom/yandex/metrica/impl/ob/hb;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/yandex/metrica/impl/ob/hb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/hg;->d(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/hb;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/hb;
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/hg;->d(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/hb;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/hf;
    .locals 1

    const-string v0, "credentials.dat"

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 130
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/hg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/yandex/metrica/impl/ob/hf;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/yandex/metrica/impl/ob/hf;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hg;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hg;->d:Lcom/yandex/metrica/impl/ob/hf;

    .line 99
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hg;->d:Lcom/yandex/metrica/impl/ob/hf;

    if-eqz p1, :cond_0

    .line 100
    invoke-static {}, Lcom/yandex/metrica/impl/ob/h;->a()Lcom/yandex/metrica/impl/ob/h;

    move-result-object p1

    new-instance v1, Lcom/yandex/metrica/impl/ob/o;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hg;->d:Lcom/yandex/metrica/impl/ob/hf;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/hf;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/h;->b(Lcom/yandex/metrica/impl/ob/j;)V

    .line 102
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/hf;
    .locals 3

    .line 138
    new-instance v0, Ljava/io/File;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "credentials.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/hg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/yandex/metrica/impl/ob/hf;

    move-result-object p1

    return-object p1
.end method

.method b()Lcom/yandex/metrica/impl/ob/hg$a;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hg;->b:Lcom/yandex/metrica/impl/ob/hg$a;

    return-object v0
.end method

.method b(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)V
    .locals 5

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hg;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :try_start_1
    new-instance v1, Lcom/yandex/metrica/impl/ob/hf;

    new-instance v2, Lcom/yandex/metrica/impl/ob/hh;

    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/ob/hh;-><init>(Landroid/content/Context;)V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, p2, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/hf;-><init>(Lcom/yandex/metrica/impl/ob/hb;Lcom/yandex/metrica/impl/ob/hh;J)V

    .line 209
    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ob/hg;->a(Lcom/yandex/metrica/impl/ob/hf;)V

    .line 212
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/hg;->d:Lcom/yandex/metrica/impl/ob/hf;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/hf;->a()Ljava/lang/String;

    move-result-object p2

    .line 213
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hg;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/hg;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const-string v1, "credentials.dat"

    .line 1191
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hg;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1192
    :try_start_2
    invoke-static {p1, v1, p2}, Lcom/yandex/metrica/impl/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 1193
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 217
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catch Lorg/a/b; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    return-void
.end method

.method c()Lcom/yandex/metrica/impl/ob/hf;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hg;->d:Lcom/yandex/metrica/impl/ob/hf;

    return-object v0
.end method

.method c(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)V
    .locals 2

    .line 233
    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/lm;->a(Landroid/content/Context;)Lcom/yandex/metrica/b;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/hg$c;

    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2}, Lcom/yandex/metrica/impl/ob/hg$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "saving_empty_device_id"

    .line 235
    invoke-interface {v0, p1, v1}, Lcom/yandex/metrica/b;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 237
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/hg;->b(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)V

    return-void
.end method

.method c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hg;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "credentials.dat"

    .line 227
    invoke-static {p1, v1, p2}, Lcom/yandex/metrica/impl/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d()Lcom/yandex/metrica/impl/ob/hb;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hg;->c()Lcom/yandex/metrica/impl/ob/hf;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hf;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v0

    return-object v0
.end method

.method d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".MetricaContentProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 311
    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 315
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    const-string p2, "content://%s.MetricaContentProvider/DEVICE_ID"

    invoke-static {v0, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 320
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 321
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "DEVICE_ID"

    .line 322
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v1

    .line 329
    :goto_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    .line 330
    throw p2

    :catch_0
    move-object p1, v1

    .line 329
    :catch_1
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    :cond_2
    :goto_2
    return-object v1
.end method

.method e()Z
    .locals 1

    const/16 v0, 0x15

    .line 202
    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a(I)Z

    move-result v0

    return v0
.end method

.method f()Lcom/yandex/metrica/impl/ob/hi;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hg;->c:Lcom/yandex/metrica/impl/ob/hi;

    return-object v0
.end method
