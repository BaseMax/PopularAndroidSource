.class public Lc/b/a/c/c/a/d;
.super Ljava/lang/Object;
.source "MediaStoreVideoThumbLoader.java"

# interfaces
.implements Lc/b/a/c/c/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/c/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/c/u<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/c/c/a/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/c/u$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p2, p3}, Lc/b/a/c/a/a/b;->a(II)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p4}, Lc/b/a/c/c/a/d;->a(Lc/b/a/c/f;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Lc/b/a/c/c/u$a;

    new-instance p3, Lc/b/a/h/b;

    invoke-direct {p3, p1}, Lc/b/a/h/b;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Lc/b/a/c/c/a/d;->a:Landroid/content/Context;

    invoke-static {p4, p1}, Lc/b/a/c/a/a/c;->b(Landroid/content/Context;Landroid/net/Uri;)Lc/b/a/c/a/a/c;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lc/b/a/c/c/u$a;-><init>(Lc/b/a/c/c;Lc/b/a/c/a/d;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lc/b/a/c/c/a/d;->a(Landroid/net/Uri;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 0

    .line 7
    invoke-static {p1}, Lc/b/a/c/a/a/b;->c(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public final a(Lc/b/a/c/f;)Z
    .locals 4

    .line 5
    sget-object v0, Lc/b/a/c/d/a/z;->a:Lc/b/a/c/e;

    invoke-virtual {p1, v0}, Lc/b/a/c/f;->a(Lc/b/a/c/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lc/b/a/c/c/a/d;->a(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
