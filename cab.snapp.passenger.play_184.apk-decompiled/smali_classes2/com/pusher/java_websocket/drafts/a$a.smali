.class final Lcom/pusher/java_websocket/drafts/a$a;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/java_websocket/drafts/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/pusher/java_websocket/drafts/a;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/pusher/java_websocket/drafts/a;I)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/pusher/java_websocket/drafts/a$a;->a:Lcom/pusher/java_websocket/drafts/a;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 41
    iput p2, p0, Lcom/pusher/java_websocket/drafts/a$a;->b:I

    return-void
.end method


# virtual methods
.method public final getPreferedSize()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/pusher/java_websocket/drafts/a$a;->b:I

    return v0
.end method
