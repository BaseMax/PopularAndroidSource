.class public final Lc/c/a/h/b/D;
.super Ljava/lang/Object;
.source "DeveloperModule.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lc/c/a/g/a;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/h/b/B;

    invoke-direct {v0}, Lc/c/a/h/b/B;-><init>()V

    return-object v0
.end method

.method public final b()Lc/c/a/g/b;
    .locals 2

    .line 1
    new-instance v0, Lc/c/a/g/b;

    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/c/a/g/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final c()Lc/c/a/g/c;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/h/b/C;

    invoke-direct {v0}, Lc/c/a/h/b/C;-><init>()V

    return-object v0
.end method
