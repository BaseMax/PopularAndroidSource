.class public Lc/b/a/c/c/a/a$a;
.super Ljava/lang/Object;
.source "HttpGlideUrlLoader.java"

# interfaces
.implements Lc/b/a/c/c/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/c/v<",
        "Lc/b/a/c/c/l;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/c/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/c/t<",
            "Lc/b/a/c/c/l;",
            "Lc/b/a/c/c/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/c/c/t;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lc/b/a/c/c/t;-><init>(J)V

    iput-object v0, p0, Lc/b/a/c/c/a/a$a;->a:Lc/b/a/c/c/t;

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
            "Lc/b/a/c/c/l;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lc/b/a/c/c/a/a;

    iget-object v0, p0, Lc/b/a/c/c/a/a$a;->a:Lc/b/a/c/c/t;

    invoke-direct {p1, v0}, Lc/b/a/c/c/a/a;-><init>(Lc/b/a/c/c/t;)V

    return-object p1
.end method
