.class public final Lc/b/a/c/c/g;
.super Ljava/lang/Object;
.source "DataUrlLoader.java"

# interfaces
.implements Lc/b/a/c/c/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/c/g$c;,
        Lc/b/a/c/c/g$b;,
        Lc/b/a/c/c/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/c/u<",
        "TModel;TData;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/c/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/c/g$a<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/c/c/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c/g$a<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/c/g;->a:Lc/b/a/c/c/g$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/c/u$a<",
            "TData;>;"
        }
    .end annotation

    .line 1
    new-instance p2, Lc/b/a/c/c/u$a;

    new-instance p3, Lc/b/a/h/b;

    invoke-direct {p3, p1}, Lc/b/a/h/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lc/b/a/c/c/g$b;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lc/b/a/c/c/g;->a:Lc/b/a/c/c/g$a;

    invoke-direct {p4, p1, v0}, Lc/b/a/c/c/g$b;-><init>(Ljava/lang/String;Lc/b/a/c/c/g$a;)V

    invoke-direct {p2, p3, p4}, Lc/b/a/c/c/u$a;-><init>(Lc/b/a/c/c;Lc/b/a/c/a/d;)V

    return-object p2
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
