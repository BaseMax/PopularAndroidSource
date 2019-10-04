.class public final Lcom/pusher/java_websocket/b/a;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/pusher/java_websocket/b/a;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 9
    iput p1, p0, Lcom/pusher/java_websocket/b/a;->a:I

    return-void
.end method


# virtual methods
.method public final getPreferedSize()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/pusher/java_websocket/b/a;->a:I

    return v0
.end method
