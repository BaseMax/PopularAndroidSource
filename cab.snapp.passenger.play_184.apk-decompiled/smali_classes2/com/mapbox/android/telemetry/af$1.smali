.class final Lcom/mapbox/android/telemetry/af$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/telemetry/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CopyOnWriteArraySet;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/mapbox/android/telemetry/af;


# direct methods
.method constructor <init>(Lcom/mapbox/android/telemetry/af;Ljava/util/concurrent/CopyOnWriteArraySet;Ljava/util/List;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/mapbox/android/telemetry/af$1;->c:Lcom/mapbox/android/telemetry/af;

    iput-object p2, p0, Lcom/mapbox/android/telemetry/af$1;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p3, p0, Lcom/mapbox/android/telemetry/af$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 106
    iget-object p1, p0, Lcom/mapbox/android/telemetry/af$1;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/android/telemetry/c;

    .line 107
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mapbox/android/telemetry/af$1;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/mapbox/android/telemetry/c;->onAttachmentFailure(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4

    .line 113
    iget-object p1, p0, Lcom/mapbox/android/telemetry/af$1;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/android/telemetry/c;

    .line 114
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    iget-object v3, p0, Lcom/mapbox/android/telemetry/af$1;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcom/mapbox/android/telemetry/c;->onAttachmentResponse(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method
