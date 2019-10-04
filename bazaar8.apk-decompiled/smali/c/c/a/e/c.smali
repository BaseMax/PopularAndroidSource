.class public final Lc/c/a/e/c;
.super Ljava/lang/Object;
.source "StorageManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/c$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/e/c$a;


# instance fields
.field public final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/e/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/e/c$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/e/c;->a:Lc/c/a/e/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/e/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    iget-object v1, p0, Lc/c/a/e/c;->b:Landroid/content/Context;

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lc/c/a/c/h/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Z)Ljava/io/File;
    .locals 1

    const-string v0, "entryId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->g(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->c(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/lang/String;
    .locals 1

    .line 4
    sget-object v0, Lc/c/a/e/d;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "_diff"

    :goto_0
    return-object p1
.end method

.method public final a(Ljava/io/File;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lc/c/a/c/b/d;->a(Ljava/io/File;)V

    return-void
.end method

.method public final a(Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    .line 9
    invoke-static {p1, p2}, Lc/c/a/c/b/d;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/io/File;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Z
    .locals 1

    const-string v0, "sourceFile"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destinationEntityID"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p2, p3}, Lc/c/a/e/c;->b(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Z
    .locals 1

    const-string v0, "destinationEntityID"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->e(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object v0

    .line 7
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->d(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p1, v0}, Lc/c/a/c/b/d;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;
    .locals 4

    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lc/c/a/e/c;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/EntityType;->getStorageFolderPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->h(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lc/c/a/e/c;->a(Ljava/io/File;)V

    return-object v0
.end method

.method public final b(Ljava/io/File;)Ljava/math/BigInteger;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lc/c/a/c/b/d;->b(Ljava/io/File;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lc/c/a/e/c;->b:Landroid/content/Context;

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lc/c/a/e/c/c;->a(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lc/c/a/e/c;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/EntityType;->getStorageFolderPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->i(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Lc/c/a/e/c;->a(Ljava/io/File;)V

    return-object v0
.end method

.method public final d(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;
    .locals 2

    const-string v0, "entryId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->j(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->f(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->b(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final e(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "icm"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "bazaar"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->h(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lc/c/a/e/c;->a(Ljava/io/File;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->d(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final f(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lc/c/a/e/c;->b:Landroid/content/Context;

    const-string v3, "applicationContext"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/EntityType;->getStorageFolderPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->h(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lc/c/a/e/c;->a(Ljava/io/File;)V

    return-object v0
.end method

.method public final g(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lc/c/a/e/c;->b:Landroid/content/Context;

    const-string v3, "applicationContext"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/EntityType;->getStorageFolderPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->i(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lc/c/a/e/c;->a(Ljava/io/File;)V

    return-object v0
.end method

.method public final h(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/EntityType;->getStorageFileExtension()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_temp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lc/c/a/e/c;->a(Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/EntityType;->getStorageFileExtension()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Z
    .locals 1

    const-string v0, "entryId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->f(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->b(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final k(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)V
    .locals 1

    const-string v0, "entryId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/c;->d(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method
