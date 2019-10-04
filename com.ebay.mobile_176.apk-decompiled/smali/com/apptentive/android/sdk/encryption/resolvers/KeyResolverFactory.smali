.class public Lcom/apptentive/android/sdk/encryption/resolvers/KeyResolverFactory;
.super Ljava/lang/Object;
.source "KeyResolverFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKeyResolver(I)Lcom/apptentive/android/sdk/encryption/resolvers/KeyResolver;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_0

    .line 11
    new-instance p0, Lcom/apptentive/android/sdk/encryption/resolvers/KeyResolver26;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/encryption/resolvers/KeyResolver26;-><init>()V

    return-object p0

    :cond_0
    const/16 v0, 0x17

    if-lt p0, v0, :cond_1

    .line 15
    new-instance p0, Lcom/apptentive/android/sdk/encryption/resolvers/KeyResolver23;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/encryption/resolvers/KeyResolver23;-><init>()V

    return-object p0

    :cond_1
    const/16 v0, 0x12

    if-lt p0, v0, :cond_2

    .line 19
    new-instance p0, Lcom/apptentive/android/sdk/encryption/resolvers/KeyResolver18;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/encryption/resolvers/KeyResolver18;-><init>()V

    return-object p0

    .line 22
    :cond_2
    new-instance p0, Lcom/apptentive/android/sdk/encryption/resolvers/KeyResolverNoOp;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/encryption/resolvers/KeyResolverNoOp;-><init>()V

    return-object p0
.end method
