.class final Lio/fabric/sdk/android/services/network/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/network/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1222
    iput-object p1, p0, Lio/fabric/sdk/android/services/network/c$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/fabric/sdk/android/services/network/c$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1222
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/c$1;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final run()Ljava/lang/String;
    .locals 2

    .line 1225
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/c$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/fabric/sdk/android/services/network/c$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
