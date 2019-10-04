.class public final Lcom/farsitel/bazaar/core/model/AppDetailState$Report;
.super Lcom/farsitel/bazaar/core/model/AppDetailState;
.source "ResourceState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/core/model/AppDetailState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Report"
.end annotation


# static fields
.field public static final a:Lcom/farsitel/bazaar/core/model/AppDetailState$Report;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/core/model/AppDetailState$Report;

    invoke-direct {v0}, Lcom/farsitel/bazaar/core/model/AppDetailState$Report;-><init>()V

    sput-object v0, Lcom/farsitel/bazaar/core/model/AppDetailState$Report;->a:Lcom/farsitel/bazaar/core/model/AppDetailState$Report;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/core/model/AppDetailState;-><init>(Lh/f/b/f;)V

    return-void
.end method
