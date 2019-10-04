.class public Lc/b/a/c/c/i;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lc/b/a/c/c/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/c/i$b;,
        Lc/b/a/c/c/i$e;,
        Lc/b/a/c/c/i$a;,
        Lc/b/a/c/c/i$c;,
        Lc/b/a/c/c/i$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/c/u<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/c/i$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/c/i$d<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/c/c/i$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c/i$d<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/c/i;->a:Lc/b/a/c/c/i$d;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/c/u$a<",
            "TData;>;"
        }
    .end annotation

    .line 3
    new-instance p2, Lc/b/a/c/c/u$a;

    new-instance p3, Lc/b/a/h/b;

    invoke-direct {p3, p1}, Lc/b/a/h/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lc/b/a/c/c/i$c;

    iget-object v0, p0, Lc/b/a/c/c/i;->a:Lc/b/a/c/c/i$d;

    invoke-direct {p4, p1, v0}, Lc/b/a/c/c/i$c;-><init>(Ljava/io/File;Lc/b/a/c/c/i$d;)V

    invoke-direct {p2, p3, p4}, Lc/b/a/c/c/u$a;-><init>(Lc/b/a/c/c;Lc/b/a/c/a/d;)V

    return-object p2
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lc/b/a/c/c/i;->a(Ljava/io/File;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lc/b/a/c/c/i;->a(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
