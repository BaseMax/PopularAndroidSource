.class public final Lcom/bumptech/glide/load/c/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/g/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/g<",
            "Lcom/bumptech/glide/load/c/m$a<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0xfa

    .line 27
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/c/m;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/bumptech/glide/load/c/m$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/c/m$1;-><init>(Lcom/bumptech/glide/load/c/m;J)V

    iput-object v0, p0, Lcom/bumptech/glide/load/c/m;->a:Lcom/bumptech/glide/g/g;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/load/c/m;->a:Lcom/bumptech/glide/g/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/g;->clearMemory()V

    return-void
.end method

.method public final get(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .line 49
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/c/m$a;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/c/m$a;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/bumptech/glide/load/c/m;->a:Lcom/bumptech/glide/g/g;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/g/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 51
    invoke-virtual {p1}, Lcom/bumptech/glide/load/c/m$a;->release()V

    return-object p2
.end method

.method public final put(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .line 64
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/c/m$a;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/c/m$a;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/bumptech/glide/load/c/m;->a:Lcom/bumptech/glide/g/g;

    invoke-virtual {p2, p1, p4}, Lcom/bumptech/glide/g/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
