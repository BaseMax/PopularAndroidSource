.class public final Lc/b/a/c/a/l$a;
.super Ljava/lang/Object;
.source "InputStreamRewinder.java"

# interfaces
.implements Lc/b/a/c/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/a/e$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/b/a/b;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/a/l$a;->a:Lc/b/a/c/b/a/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lc/b/a/c/a/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lc/b/a/c/a/e<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lc/b/a/c/a/l;

    iget-object v1, p0, Lc/b/a/c/a/l$a;->a:Lc/b/a/c/b/a/b;

    invoke-direct {v0, p1, v1}, Lc/b/a/c/a/l;-><init>(Ljava/io/InputStream;Lc/b/a/c/b/a/b;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lc/b/a/c/a/e;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lc/b/a/c/a/l$a;->a(Ljava/io/InputStream;)Lc/b/a/c/a/e;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method
