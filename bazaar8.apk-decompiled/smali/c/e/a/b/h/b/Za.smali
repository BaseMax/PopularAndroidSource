.class public final Lc/e/a/b/h/b/Za;
.super Lc/e/a/b/h/b/va;


# instance fields
.field public final c:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Y;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/b/h/b/va;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    new-instance p1, Lc/e/a/b/h/b/dc;

    invoke-direct {p1}, Lc/e/a/b/h/b/dc;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lc/e/a/b/h/b/Za;->c:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method


# virtual methods
.method public final r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
