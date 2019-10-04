.class public Lc/b/a/c/b/t$a;
.super Ljava/lang/Object;
.source "EngineJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/b/D;Z)Lc/b/a/c/b/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/c/b/D<",
            "TR;>;Z)",
            "Lc/b/a/c/b/x<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/c/b/x;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lc/b/a/c/b/x;-><init>(Lc/b/a/c/b/D;ZZ)V

    return-object v0
.end method
