.class final Lcom/bumptech/glide/load/c/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/c/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/c/b$a;->build(Lcom/bumptech/glide/load/c/r;)Lcom/bumptech/glide/load/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/b$b<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/c/b$a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/c/b$a;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/bumptech/glide/load/c/b$a$1;->a:Lcom/bumptech/glide/load/c/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic convert([B)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/c/b$a$1;->convert([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final convert([B)Ljava/nio/ByteBuffer;
    .locals 0

    .line 106
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 111
    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method
