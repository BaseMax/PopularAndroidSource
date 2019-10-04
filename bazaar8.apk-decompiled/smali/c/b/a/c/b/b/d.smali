.class public Lc/b/a/c/b/b/d;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"

# interfaces
.implements Lc/b/a/c/b/b/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/b/b/d$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lc/b/a/c/b/b/d$a;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/b/d$a;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lc/b/a/c/b/b/d;->a:J

    .line 3
    iput-object p1, p0, Lc/b/a/c/b/b/d;->b:Lc/b/a/c/b/b/d$a;

    return-void
.end method


# virtual methods
.method public build()Lc/b/a/c/b/b/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/b/d;->b:Lc/b/a/c/b/b/d$a;

    invoke-interface {v0}, Lc/b/a/c/b/b/d$a;->a()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object v1

    .line 3
    :cond_2
    iget-wide v1, p0, Lc/b/a/c/b/b/d;->a:J

    invoke-static {v0, v1, v2}, Lc/b/a/c/b/b/e;->a(Ljava/io/File;J)Lc/b/a/c/b/b/a;

    move-result-object v0

    return-object v0
.end method
