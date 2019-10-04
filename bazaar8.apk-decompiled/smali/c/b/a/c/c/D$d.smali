.class public Lc/b/a/c/c/D$d;
.super Ljava/lang/Object;
.source "UriLoader.java"

# interfaces
.implements Lc/b/a/c/c/v;
.implements Lc/b/a/c/c/D$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/c/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/c/v<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;",
        "Lc/b/a/c/c/D$c<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/c/D$d;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lc/b/a/c/a/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lc/b/a/c/a/d<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/c/a/o;

    iget-object v1, p0, Lc/b/a/c/c/D$d;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p1}, Lc/b/a/c/a/o;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method public a(Lc/b/a/c/c/y;)Lc/b/a/c/c/u;
    .locals 0
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

    .line 2
    new-instance p1, Lc/b/a/c/c/D;

    invoke-direct {p1, p0}, Lc/b/a/c/c/D;-><init>(Lc/b/a/c/c/D$c;)V

    return-object p1
.end method
