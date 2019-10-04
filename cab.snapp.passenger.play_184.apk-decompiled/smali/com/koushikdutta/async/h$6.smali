.class final Lcom/koushikdutta/async/h$6;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/aa;

.field final synthetic b:Ljava/util/PriorityQueue;

.field final synthetic c:Lcom/koushikdutta/async/h;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/h;Ljava/lang/String;Lcom/koushikdutta/async/aa;Ljava/util/PriorityQueue;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/koushikdutta/async/h$6;->c:Lcom/koushikdutta/async/h;

    iput-object p3, p0, Lcom/koushikdutta/async/h$6;->a:Lcom/koushikdutta/async/aa;

    iput-object p4, p0, Lcom/koushikdutta/async/h$6;->b:Ljava/util/PriorityQueue;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 600
    iget-object v0, p0, Lcom/koushikdutta/async/h$6;->c:Lcom/koushikdutta/async/h;

    iget-object v1, p0, Lcom/koushikdutta/async/h$6;->a:Lcom/koushikdutta/async/aa;

    iget-object v2, p0, Lcom/koushikdutta/async/h$6;->b:Ljava/util/PriorityQueue;

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/h;->a(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/aa;Ljava/util/PriorityQueue;)V

    return-void
.end method
