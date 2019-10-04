.class public final Lc/f/a/z;
.super Ljava/lang/Object;
.source "OkHttp3Downloader.java"

# interfaces
.implements Lc/f/a/r;


# instance fields
.field public final a:Lj/i$a;

.field public final b:Lj/f;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lc/f/a/P;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/f/a/z;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lj/I;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lc/f/a/z;->c:Z

    .line 7
    iput-object p1, p0, Lc/f/a/z;->a:Lj/i$a;

    .line 8
    invoke-virtual {p1}, Lj/I;->b()Lj/f;

    move-result-object p1

    iput-object p1, p0, Lc/f/a/z;->b:Lj/f;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lc/f/a/P;->a(Ljava/io/File;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lc/f/a/z;-><init>(Ljava/io/File;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 2

    .line 3
    new-instance v0, Lj/I$a;

    invoke-direct {v0}, Lj/I$a;-><init>()V

    new-instance v1, Lj/f;

    invoke-direct {v1, p1, p2, p3}, Lj/f;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v1}, Lj/I$a;->a(Lj/f;)Lj/I$a;

    invoke-virtual {v0}, Lj/I$a;->a()Lj/I;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/f/a/z;-><init>(Lj/I;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lc/f/a/z;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lj/L;)Lj/P;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/f/a/z;->a:Lj/i$a;

    invoke-interface {v0, p1}, Lj/i$a;->a(Lj/L;)Lj/i;

    move-result-object p1

    invoke-interface {p1}, Lj/i;->execute()Lj/P;

    move-result-object p1

    return-object p1
.end method
