.class final Lcom/facebook/crypto/e/c$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/crypto/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "conceal"

    .line 24
    invoke-virtual {p0, v0}, Lcom/facebook/crypto/e/c$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
