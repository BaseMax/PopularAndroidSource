.class public final Lcom/bumptech/glide/b;
.super Lcom/bumptech/glide/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/i<",
        "Lcom/bumptech/glide/b<",
        "TTranscodeType;>;TTranscodeType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/bumptech/glide/i;-><init>()V

    return-void
.end method

.method public static with(I)Lcom/bumptech/glide/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/bumptech/glide/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/bumptech/glide/b;

    invoke-direct {v0}, Lcom/bumptech/glide/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/b;->transition(I)Lcom/bumptech/glide/i;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/b;

    return-object p0
.end method

.method public static with(Lcom/bumptech/glide/e/b/c;)Lcom/bumptech/glide/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/e/b/c<",
            "-TTranscodeType;>;)",
            "Lcom/bumptech/glide/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/bumptech/glide/b;

    invoke-direct {v0}, Lcom/bumptech/glide/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/b;->transition(Lcom/bumptech/glide/e/b/c;)Lcom/bumptech/glide/i;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/b;

    return-object p0
.end method

.method public static with(Lcom/bumptech/glide/e/b/f$a;)Lcom/bumptech/glide/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/e/b/f$a;",
            ")",
            "Lcom/bumptech/glide/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/bumptech/glide/b;

    invoke-direct {v0}, Lcom/bumptech/glide/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/b;->transition(Lcom/bumptech/glide/e/b/f$a;)Lcom/bumptech/glide/i;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/b;

    return-object p0
.end method

.method public static withNoTransition()Lcom/bumptech/glide/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/bumptech/glide/b;

    invoke-direct {v0}, Lcom/bumptech/glide/b;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/b;->dontTransition()Lcom/bumptech/glide/i;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b;

    return-object v0
.end method
