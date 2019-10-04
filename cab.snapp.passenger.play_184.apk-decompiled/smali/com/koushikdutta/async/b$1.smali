.class final Lcom/koushikdutta/async/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/b;->send(Ljava/lang/String;ILjava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/nio/ByteBuffer;

.field final synthetic d:Lcom/koushikdutta/async/b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/b;Ljava/lang/String;ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/koushikdutta/async/b$1;->d:Lcom/koushikdutta/async/b;

    iput-object p2, p0, Lcom/koushikdutta/async/b$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/koushikdutta/async/b$1;->b:I

    iput-object p4, p0, Lcom/koushikdutta/async/b$1;->c:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/koushikdutta/async/b$1;->d:Lcom/koushikdutta/async/b;

    iget-object v1, p0, Lcom/koushikdutta/async/b$1;->a:Ljava/lang/String;

    iget v2, p0, Lcom/koushikdutta/async/b$1;->b:I

    iget-object v3, p0, Lcom/koushikdutta/async/b$1;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/koushikdutta/async/b;->send(Ljava/lang/String;ILjava/nio/ByteBuffer;)V

    return-void
.end method
