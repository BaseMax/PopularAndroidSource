.class final Lcom/bumptech/glide/load/c/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/d<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Lcom/bumptech/glide/load/c/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([BLcom/bumptech/glide/load/c/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/bumptech/glide/load/c/b$b<",
            "TData;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/bumptech/glide/load/c/b$c;->a:[B

    .line 62
    iput-object p2, p0, Lcom/bumptech/glide/load/c/b$c;->b:Lcom/bumptech/glide/load/c/b$b;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final cleanup()V
    .locals 0

    return-void
.end method

.method public final getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/bumptech/glide/load/c/b$c;->b:Lcom/bumptech/glide/load/c/b$b;

    invoke-interface {v0}, Lcom/bumptech/glide/load/c/b$b;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 90
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public final loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/a/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    .line 67
    iget-object p1, p0, Lcom/bumptech/glide/load/c/b$c;->b:Lcom/bumptech/glide/load/c/b$b;

    iget-object v0, p0, Lcom/bumptech/glide/load/c/b$c;->a:[B

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/c/b$b;->convert([B)Ljava/lang/Object;

    move-result-object p1

    .line 68
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/a/d$a;->onDataReady(Ljava/lang/Object;)V

    return-void
.end method
