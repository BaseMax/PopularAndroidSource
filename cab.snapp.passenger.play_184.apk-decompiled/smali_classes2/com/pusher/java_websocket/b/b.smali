.class public Lcom/pusher/java_websocket/b/b;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    iput p1, p0, Lcom/pusher/java_websocket/b/b;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    iput p1, p0, Lcom/pusher/java_websocket/b/b;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 26
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    iput p1, p0, Lcom/pusher/java_websocket/b/b;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 21
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 22
    iput p1, p0, Lcom/pusher/java_websocket/b/b;->a:I

    return-void
.end method


# virtual methods
.method public getCloseCode()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/pusher/java_websocket/b/b;->a:I

    return v0
.end method
