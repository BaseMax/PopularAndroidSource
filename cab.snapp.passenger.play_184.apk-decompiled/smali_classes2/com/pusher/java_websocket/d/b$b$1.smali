.class final Lcom/pusher/java_websocket/d/b$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/java_websocket/d/b$b;-><init>(Lcom/pusher/java_websocket/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pusher/java_websocket/d/b;

.field final synthetic b:Lcom/pusher/java_websocket/d/b$b;


# direct methods
.method constructor <init>(Lcom/pusher/java_websocket/d/b$b;Lcom/pusher/java_websocket/d/b;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/pusher/java_websocket/d/b$b$1;->b:Lcom/pusher/java_websocket/d/b$b;

    iput-object p2, p0, Lcom/pusher/java_websocket/d/b$b$1;->a:Lcom/pusher/java_websocket/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 683
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
