.class public final Lcom/bumptech/glide/load/c/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/o<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/c/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/e$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/bumptech/glide/load/c/e$c$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/c/e$c$1;-><init>(Lcom/bumptech/glide/load/c/e$c;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/c/e$c;->a:Lcom/bumptech/glide/load/c/e$a;

    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/c/r;)Lcom/bumptech/glide/load/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/r;",
            ")",
            "Lcom/bumptech/glide/load/c/n<",
            "TModel;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance p1, Lcom/bumptech/glide/load/c/e;

    iget-object v0, p0, Lcom/bumptech/glide/load/c/e$c;->a:Lcom/bumptech/glide/load/c/e$a;

    invoke-direct {p1, v0}, Lcom/bumptech/glide/load/c/e;-><init>(Lcom/bumptech/glide/load/c/e$a;)V

    return-object p1
.end method

.method public final teardown()V
    .locals 0

    return-void
.end method
