.class final Lcom/a/a/c/i$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/i;


# direct methods
.method constructor <init>(Lcom/a/a/c/i;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/a/a/c/i$5;->a:Lcom/a/a/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 751
    iget-object v0, p0, Lcom/a/a/c/i$5;->a:Lcom/a/a/c/i;

    new-instance v1, Lcom/a/a/c/i$c;

    invoke-direct {v1}, Lcom/a/a/c/i$c;-><init>()V

    invoke-static {v0, v1}, Lcom/a/a/c/i;->a(Lcom/a/a/c/i;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1762
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1767
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const-string v6, "CrashlyticsCore"

    if-ge v5, v3, :cond_0

    aget-object v7, v1, v5

    .line 1768
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Found invalid session part file: "

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v6, v9}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    invoke-static {v7}, Lcom/a/a/c/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1773
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1777
    invoke-virtual {v0}, Lcom/a/a/c/i;->g()Ljava/io/File;

    move-result-object v1

    .line 1779
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1780
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1783
    :cond_1
    new-instance v3, Lcom/a/a/c/i$6;

    invoke-direct {v3, v0, v2}, Lcom/a/a/c/i$6;-><init>(Lcom/a/a/c/i;Ljava/util/Set;)V

    .line 1793
    invoke-virtual {v0, v3}, Lcom/a/a/c/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 1794
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Moving session file: "

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1796
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Could not move session file. Deleting "

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1802
    :cond_3
    invoke-virtual {v0}, Lcom/a/a/c/i;->b()V

    :cond_4
    return-void
.end method
