.class public Lc/b/a/c/c/E$a;
.super Ljava/lang/Object;
.source "UrlUriLoader.java"

# interfaces
.implements Lc/b/a/c/c/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/c/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/c/v<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/c/y;)Lc/b/a/c/c/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c/y;",
            ")",
            "Lc/b/a/c/c/u<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/c/c/E;

    const-class v1, Lc/b/a/c/c/l;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Lc/b/a/c/c/y;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/c/c/u;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/b/a/c/c/E;-><init>(Lc/b/a/c/c/u;)V

    return-object v0
.end method
