.class public Lf/a/a/c/b/b;
.super Lf/a/a/c/b/o;
.source "APICallHandler.java"


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lir/cafebazaar/inline/platform/InlineApplication;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lf/a/a/c/b/o;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lir/cafebazaar/inline/platform/InlineApplication;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lf/a/a/c/b/o;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lf/a/a/c/b/b;Lf/a/a/c/b/o$a;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf/a/a/c/b/o;->a(Lf/a/a/c/b/o$a;)V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/c/b/o$a;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lf/a/a/c/b/a;

    invoke-direct {v1, p0, p1}, Lf/a/a/c/b/a;-><init>(Lf/a/a/c/b/b;Lf/a/a/c/b/o$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
