.class public Lcom/yandex/metrica/impl/ob/il;
.super Lcom/yandex/metrica/impl/ob/ik;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ik;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 0

    monitor-enter p0

    .line 15
    :try_start_0
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/ik;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
