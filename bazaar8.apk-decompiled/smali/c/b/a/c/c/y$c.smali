.class public Lc/b/a/c/c/y$c;
.super Ljava/lang/Object;
.source "MultiModelLoaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/c/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lb/i/j/e;)Lc/b/a/c/c/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lc/b/a/c/c/u<",
            "TModel;TData;>;>;",
            "Lb/i/j/e<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Lc/b/a/c/c/x<",
            "TModel;TData;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/c/c/x;

    invoke-direct {v0, p1, p2}, Lc/b/a/c/c/x;-><init>(Ljava/util/List;Lb/i/j/e;)V

    return-object v0
.end method
