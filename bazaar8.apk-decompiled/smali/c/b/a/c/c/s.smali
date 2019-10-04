.class public Lc/b/a/c/c/s;
.super Lc/b/a/i/f;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/c/t;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/i/f<",
        "Lc/b/a/c/c/t$a<",
        "TA;>;TB;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lc/b/a/c/c/t;


# direct methods
.method public constructor <init>(Lc/b/a/c/c/t;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/c/c/s;->e:Lc/b/a/c/c/t;

    invoke-direct {p0, p2, p3}, Lc/b/a/i/f;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/c/t$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c/t$a<",
            "TA;>;TB;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lc/b/a/c/c/t$a;->a()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/c/c/t$a;

    invoke-virtual {p0, p1, p2}, Lc/b/a/c/c/s;->a(Lc/b/a/c/c/t$a;Ljava/lang/Object;)V

    return-void
.end method
