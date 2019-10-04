.class public final Lorg/eclipse/paho/a/a/a/a/p;
.super Lorg/eclipse/paho/a/a/q;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMessageId()I
    .locals 1

    .line 27
    invoke-super {p0}, Lorg/eclipse/paho/a/a/q;->getId()I

    move-result v0

    return v0
.end method

.method public final setDuplicate(Z)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lorg/eclipse/paho/a/a/q;->setDuplicate(Z)V

    return-void
.end method

.method public final setMessageId(I)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lorg/eclipse/paho/a/a/q;->setId(I)V

    return-void
.end method
