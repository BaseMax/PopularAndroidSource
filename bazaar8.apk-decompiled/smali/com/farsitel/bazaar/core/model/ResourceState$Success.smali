.class public final Lcom/farsitel/bazaar/core/model/ResourceState$Success;
.super Lcom/farsitel/bazaar/core/model/ResourceState;
.source "ResourceState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/core/model/ResourceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# static fields
.field public static final a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-direct {v0}, Lcom/farsitel/bazaar/core/model/ResourceState$Success;-><init>()V

    sput-object v0, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/core/model/ResourceState;-><init>(Lh/f/b/f;)V

    return-void
.end method
