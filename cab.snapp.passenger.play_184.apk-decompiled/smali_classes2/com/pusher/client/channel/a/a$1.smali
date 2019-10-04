.class final Lcom/pusher/client/channel/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/channel/a/a;->onMessage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pusher/client/channel/g;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/pusher/client/channel/a/a;


# direct methods
.method constructor <init>(Lcom/pusher/client/channel/a/a;Lcom/pusher/client/channel/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/pusher/client/channel/a/a$1;->d:Lcom/pusher/client/channel/a/a;

    iput-object p2, p0, Lcom/pusher/client/channel/a/a$1;->a:Lcom/pusher/client/channel/g;

    iput-object p3, p0, Lcom/pusher/client/channel/a/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/pusher/client/channel/a/a$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/pusher/client/channel/a/a$1;->a:Lcom/pusher/client/channel/g;

    iget-object v1, p0, Lcom/pusher/client/channel/a/a$1;->d:Lcom/pusher/client/channel/a/a;

    iget-object v1, v1, Lcom/pusher/client/channel/a/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/pusher/client/channel/a/a$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/pusher/client/channel/a/a$1;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/pusher/client/channel/g;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
