.class public final Lc/e/d/b/a/M;
.super Lc/e/d/x;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/d/b/a/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/d/x<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/e/d/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/e/d/d/b;)Ljava/lang/Boolean;
    .locals 2

    .line 3
    invoke-virtual {p1}, Lc/e/d/d/b;->K()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lc/e/d/d/b;->H()V

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lc/e/d/d/b;->I()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lc/e/d/d/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/e/d/b/a/M;->a(Lc/e/d/d/b;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/e/d/d/c;Ljava/lang/Boolean;)V
    .locals 0

    if-nez p2, :cond_0

    const-string p2, "null"

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lc/e/d/d/c;->h(Ljava/lang/String;)Lc/e/d/d/c;

    return-void
.end method

.method public bridge synthetic a(Lc/e/d/d/c;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lc/e/d/b/a/M;->a(Lc/e/d/d/c;Ljava/lang/Boolean;)V

    return-void
.end method
