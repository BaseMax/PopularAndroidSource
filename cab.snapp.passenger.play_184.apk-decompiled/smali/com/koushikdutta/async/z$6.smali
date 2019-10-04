.class final Lcom/koushikdutta/async/z$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/z$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/z$f<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/z;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/z;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/koushikdutta/async/z$6;->a:Lcom/koushikdutta/async/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic parsed(Ljava/lang/Object;)V
    .locals 0

    .line 219
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/z$6;->parsed([B)V

    return-void
.end method

.method public final parsed([B)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/koushikdutta/async/z$6;->a:Lcom/koushikdutta/async/z;

    invoke-static {v0}, Lcom/koushikdutta/async/z;->a(Lcom/koushikdutta/async/z;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
