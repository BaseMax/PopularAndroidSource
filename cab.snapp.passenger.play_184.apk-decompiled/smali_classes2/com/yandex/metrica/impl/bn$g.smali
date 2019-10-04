.class Lcom/yandex/metrica/impl/bn$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/am$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bn$g$d;,
        Lcom/yandex/metrica/impl/bn$g$c;,
        Lcom/yandex/metrica/impl/bn$g$e;,
        Lcom/yandex/metrica/impl/bn$g$b;,
        Lcom/yandex/metrica/impl/bn$g$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 281
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/bn$g;->b(Landroid/content/Context;)V

    .line 1286
    new-instance v0, Lcom/yandex/metrica/impl/ob/gg;

    .line 1287
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/fq;->e()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object v1

    .line 1288
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/gg;-><init>(Lcom/yandex/metrica/impl/ob/fr;Ljava/lang/String;)V

    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "LAST_STARTUP_CLIDS_SAVE_TIME"

    invoke-direct {p1, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object p1

    .line 1289
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/gg;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    .line 1291
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ge;->i()V

    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 8

    const-string v0, "Can not delete file"

    .line 295
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/bn$g;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/yandex/metrica/impl/bn$g$a;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/io/FilenameFilter;

    new-instance v4, Lcom/yandex/metrica/impl/bn$g$b;

    new-instance v5, Lcom/yandex/metrica/impl/bn$g$e;

    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/yandex/metrica/impl/bn$g$e;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/yandex/metrica/impl/bn$g$b;-><init>(Ljava/io/FilenameFilter;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lcom/yandex/metrica/impl/bn$g$b;

    new-instance v6, Lcom/yandex/metrica/impl/bn$g$d;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/bn$g$d;-><init>()V

    invoke-direct {v4, v6}, Lcom/yandex/metrica/impl/bn$g$b;-><init>(Ljava/io/FilenameFilter;)V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-instance v4, Lcom/yandex/metrica/impl/bn$g$b;

    new-instance v6, Lcom/yandex/metrica/impl/bn$g$c;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/bn$g$c;-><init>()V

    invoke-direct {v4, v6}, Lcom/yandex/metrica/impl/bn$g$b;-><init>(Ljava/io/FilenameFilter;)V

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 297
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/bn$g$a;-><init>(Ljava/lang/Iterable;)V

    .line 295
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 304
    array-length v2, v1

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v3, v1, v5

    .line 306
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 307
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/lm;->a(Landroid/content/Context;)Lcom/yandex/metrica/b;

    move-result-object v4

    new-instance v6, Lorg/a/c;

    invoke-direct {v6}, Lorg/a/c;-><init>()V

    const-string v7, "fileName"

    .line 309
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-interface {v4, v0, v3}, Lcom/yandex/metrica/b;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 313
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/lm;->a(Landroid/content/Context;)Lcom/yandex/metrica/b;

    move-result-object v4

    .line 314
    invoke-interface {v4, v0, v3}, Lcom/yandex/metrica/b;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method c(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const/16 v0, 0x15

    .line 322
    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 325
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    const-string v1, "databases"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
