.class public Lc/b/a/c/c/z$d;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Lc/b/a/c/c/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/c/v<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/c/z$d;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/c/y;)Lc/b/a/c/c/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c/y;",
            ")",
            "Lc/b/a/c/c/u<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lc/b/a/c/c/z;

    iget-object v0, p0, Lc/b/a/c/c/z$d;->a:Landroid/content/res/Resources;

    invoke-static {}, Lc/b/a/c/c/C;->a()Lc/b/a/c/c/C;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lc/b/a/c/c/z;-><init>(Landroid/content/res/Resources;Lc/b/a/c/c/u;)V

    return-object p1
.end method
