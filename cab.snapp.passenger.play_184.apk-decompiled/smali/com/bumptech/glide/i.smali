.class public abstract Lcom/bumptech/glide/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CHI",
        "LD:Lcom/bumptech/glide/i<",
        "TCHI",
        "LD;",
        "TTranscodeType;>;TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field a:Lcom/bumptech/glide/e/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e/b/c<",
            "-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/bumptech/glide/e/b/a;->getFactory()Lcom/bumptech/glide/e/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/i;->a:Lcom/bumptech/glide/e/b/c;

    return-void
.end method


# virtual methods
.method public final clone()Lcom/bumptech/glide/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    .line 85
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/i;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/bumptech/glide/i;->clone()Lcom/bumptech/glide/i;

    move-result-object v0

    return-object v0
.end method

.method public final dontTransition()Lcom/bumptech/glide/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/bumptech/glide/e/b/a;->getFactory()Lcom/bumptech/glide/e/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/i;->transition(Lcom/bumptech/glide/e/b/c;)Lcom/bumptech/glide/i;

    move-result-object v0

    return-object v0
.end method

.method public final transition(I)Lcom/bumptech/glide/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCHI",
            "LD;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/bumptech/glide/e/b/d;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/e/b/d;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/i;->transition(Lcom/bumptech/glide/e/b/c;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1
.end method

.method public final transition(Lcom/bumptech/glide/e/b/c;)Lcom/bumptech/glide/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/b/c<",
            "-TTranscodeType;>;)TCHI",
            "LD;"
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/e/b/c;

    iput-object p1, p0, Lcom/bumptech/glide/i;->a:Lcom/bumptech/glide/e/b/c;

    return-object p0
.end method

.method public final transition(Lcom/bumptech/glide/e/b/f$a;)Lcom/bumptech/glide/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/b/f$a;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/bumptech/glide/e/b/e;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/e/b/e;-><init>(Lcom/bumptech/glide/e/b/f$a;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/i;->transition(Lcom/bumptech/glide/e/b/c;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1
.end method
