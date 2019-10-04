.class public final Lc/b/a/c/c/q$a;
.super Ljava/lang/Object;
.source "MediaStoreFileLoader.java"

# interfaces
.implements Lc/b/a/c/c/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/c/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/c/v<",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
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
    iput-object p1, p0, Lc/b/a/c/c/q$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/c/y;)Lc/b/a/c/c/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c/y;",
            ")",
            "Lc/b/a/c/c/u<",
            "Landroid/net/Uri;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lc/b/a/c/c/q;

    iget-object v0, p0, Lc/b/a/c/c/q$a;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lc/b/a/c/c/q;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
