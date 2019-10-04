.class public final Lcom/b/a/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hawk is not built. Please call build() and wait the initialisation finishes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 0

    .line 56
    invoke-static {}, Lcom/b/a/j$a;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public final count()J
    .locals 2

    .line 41
    invoke-static {}, Lcom/b/a/j$a;->a()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final delete(Ljava/lang/String;)Z
    .locals 0

    .line 51
    invoke-static {}, Lcom/b/a/j$a;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public final deleteAll()Z
    .locals 1

    .line 46
    invoke-static {}, Lcom/b/a/j$a;->a()V

    const/4 v0, 0x0

    return v0
.end method

.method public final destroy()V
    .locals 0

    .line 65
    invoke-static {}, Lcom/b/a/j$a;->a()V

    return-void
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/b/a/j$a;->a()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/b/a/j$a;->a()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final isBuilt()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/b/a/j$a;->a()V

    const/4 p1, 0x0

    return p1
.end method
