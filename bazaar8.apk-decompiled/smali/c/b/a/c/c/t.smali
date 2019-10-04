.class public Lc/b/a/c/c/t;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/c/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/i/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/i/f<",
            "Lc/b/a/c/c/t$a<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/c/c/s;

    invoke-direct {v0, p0, p1, p2}, Lc/b/a/c/c/s;-><init>(Lc/b/a/c/c/t;J)V

    iput-object v0, p0, Lc/b/a/c/c/t;->a:Lc/b/a/i/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lc/b/a/c/c/t$a;->a(Ljava/lang/Object;II)Lc/b/a/c/c/t$a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lc/b/a/c/c/t;->a:Lc/b/a/i/f;

    invoke-virtual {p2, p1}, Lc/b/a/i/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lc/b/a/c/c/t$a;->a()V

    return-object p2
.end method

.method public a(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .line 4
    invoke-static {p1, p2, p3}, Lc/b/a/c/c/t$a;->a(Ljava/lang/Object;II)Lc/b/a/c/c/t$a;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lc/b/a/c/c/t;->a:Lc/b/a/i/f;

    invoke-virtual {p2, p1, p4}, Lc/b/a/i/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
