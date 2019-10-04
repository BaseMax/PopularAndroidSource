.class final Lcom/bumptech/glide/load/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/b/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/b/a$b;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/g;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/a;Ljava/lang/Object;Lcom/bumptech/glide/load/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a<",
            "TDataType;>;TDataType;",
            "Lcom/bumptech/glide/load/g;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/bumptech/glide/load/b/e;->a:Lcom/bumptech/glide/load/a;

    .line 25
    iput-object p2, p0, Lcom/bumptech/glide/load/b/e;->b:Ljava/lang/Object;

    .line 26
    iput-object p3, p0, Lcom/bumptech/glide/load/b/e;->c:Lcom/bumptech/glide/load/g;

    return-void
.end method


# virtual methods
.method public final write(Ljava/io/File;)Z
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->a:Lcom/bumptech/glide/load/a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/e;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/e;->c:Lcom/bumptech/glide/load/g;

    invoke-interface {v0, v1, p1, v2}, Lcom/bumptech/glide/load/a;->encode(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/g;)Z

    move-result p1

    return p1
.end method
