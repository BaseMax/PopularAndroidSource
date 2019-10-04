.class public Lc/e/d/w;
.super Lc/e/d/x;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/e/d/x;->a()Lc/e/d/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/d/x<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/e/d/x;


# direct methods
.method public constructor <init>(Lc/e/d/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/d/w;->a:Lc/e/d/x;

    invoke-direct {p0}, Lc/e/d/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/e/d/d/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/b;",
            ")TT;"
        }
    .end annotation

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
    iget-object v0, p0, Lc/e/d/w;->a:Lc/e/d/x;

    invoke-virtual {v0, p1}, Lc/e/d/x;->a(Lc/e/d/d/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/e/d/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/c;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lc/e/d/d/c;->C()Lc/e/d/d/c;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/e/d/w;->a:Lc/e/d/x;

    invoke-virtual {v0, p1, p2}, Lc/e/d/x;->a(Lc/e/d/d/c;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
