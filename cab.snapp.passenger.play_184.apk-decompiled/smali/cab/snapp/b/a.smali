.class public final Lcab/snapp/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/b/a/g;->init(Landroid/content/Context;)Lcom/b/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/h;->build()V

    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/String;)Z
    .locals 0

    .line 56
    invoke-static {p1}, Lcom/b/a/g;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final delete(Ljava/lang/String;)Z
    .locals 1

    .line 46
    invoke-virtual {p0, p1}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/b/a/g;->delete(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final deleteAll()Z
    .locals 1

    .line 51
    invoke-static {}, Lcom/b/a/g;->deleteAll()Z

    move-result v0

    return v0
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p1}, Lcom/b/a/g;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
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

    .line 22
    invoke-static {p1, p2}, Lcom/b/a/g;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
