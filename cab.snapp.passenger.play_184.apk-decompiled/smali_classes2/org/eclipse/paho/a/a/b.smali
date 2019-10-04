.class public final Lorg/eclipse/paho/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DELETE_OLDEST_MESSAGES_DEFAULT:Z = false

.field public static final DISCONNECTED_BUFFER_ENABLED_DEFAULT:Z = false

.field public static final DISCONNECTED_BUFFER_SIZE_DEFAULT:I = 0x1388

.field public static final PERSIST_DISCONNECTED_BUFFER_DEFAULT:Z = false


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    .line 35
    iput v0, p0, Lorg/eclipse/paho/a/a/b;->a:I

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/b;->b:Z

    .line 37
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/b;->c:Z

    .line 38
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/b;->d:Z

    return-void
.end method


# virtual methods
.method public final getBufferSize()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/eclipse/paho/a/a/b;->a:I

    return v0
.end method

.method public final isBufferEnabled()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/b;->b:Z

    return v0
.end method

.method public final isDeleteOldestMessages()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/b;->d:Z

    return v0
.end method

.method public final isPersistBuffer()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/b;->c:Z

    return v0
.end method

.method public final setBufferEnabled(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lorg/eclipse/paho/a/a/b;->b:Z

    return-void
.end method

.method public final setBufferSize(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 65
    iput p1, p0, Lorg/eclipse/paho/a/a/b;->a:I

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final setDeleteOldestMessages(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lorg/eclipse/paho/a/a/b;->d:Z

    return-void
.end method

.method public final setPersistBuffer(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lorg/eclipse/paho/a/a/b;->c:Z

    return-void
.end method
