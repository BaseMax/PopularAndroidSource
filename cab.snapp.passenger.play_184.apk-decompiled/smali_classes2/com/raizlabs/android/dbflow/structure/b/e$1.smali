.class final Lcom/raizlabs/android/dbflow/structure/b/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raizlabs/android/dbflow/structure/b/e;->backupDB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/raizlabs/android/dbflow/structure/b/e;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/e;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/e$1;->a:Lcom/raizlabs/android/dbflow/structure/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 3

    .line 284
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 285
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/e$1;->a:Lcom/raizlabs/android/dbflow/structure/b/e;

    .line 1103
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/e;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/structure/b/e;->getTempDbFileName(Lcom/raizlabs/android/dbflow/config/c;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "temp--2-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/structure/b/e$1;->a:Lcom/raizlabs/android/dbflow/structure/b/e;

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/structure/b/e;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/config/c;->getDatabaseFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 289
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 293
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 294
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/structure/b/e$1;->a:Lcom/raizlabs/android/dbflow/structure/b/e;

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/structure/b/e;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/config/c;->getDatabaseFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 300
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 301
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v2}, Lcom/raizlabs/android/dbflow/structure/b/e;->a(Ljava/io/File;Ljava/io/InputStream;)V

    .line 303
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 305
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->logError(Ljava/lang/Throwable;)V

    return-void
.end method
