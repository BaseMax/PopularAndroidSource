.class public abstract Lcom/farsitel/bazaar/data/entity/PageItem;
.super Ljava/lang/Object;
.source "Page.kt"

# interfaces
.implements Lcom/farsitel/bazaar/data/entity/PageConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/data/entity/PageItem$VitrinPage;,
        Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;,
        Lcom/farsitel/bazaar/data/entity/PageItem$VideoRow;,
        Lcom/farsitel/bazaar/data/entity/PageItem$SerialRow;,
        Lcom/farsitel/bazaar/data/entity/PageItem$PromoRow;,
        Lcom/farsitel/bazaar/data/entity/PageItem$InlineRow;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/data/entity/PageItem;-><init>()V

    return-void
.end method
